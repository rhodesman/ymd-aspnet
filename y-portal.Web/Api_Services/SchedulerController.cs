using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web.Http;
using prismic.extensions;
using PrismicIOAPI.api;
using PrismicIOAPI.Utility;
using YPortal.Web.App_Logic;
using Api = prismic.Api; 
using P = PrismicIOAPI.Utility.PrismicUtils;

namespace YPortal.Web.Api_Services
{
    public class SchedulerController : ApiController
    {        
        public YScheduleInfo Get()
        {
            return Get(null);
        }

        public SchedulerConfig GetScheduleConfig()
        {
           SchedulerConfig headerContainer = null;
           var entriesController = new ContentController();

           CacheController.GetCachedObject(ref headerContainer, Common.SCHEDULE_HEADER_CACHE_ID);

           if (headerContainer == null)
           {
               var headerlist = entriesController.Get(Common.DOCUMENT_SCHEDULE_HEADER_TEMPLATE) as List<Api.Document>;

               if (headerlist != null && headerlist.Count > 0)
               {
                   headerContainer = ProcessHeader(headerlist.FirstOrDefault());
               }
               CacheController.GetCachedObject(ref headerContainer, Common.SCHEDULE_HEADER_CACHE_ID);
           }
           return headerContainer;           
        }

        public YScheduleInfo Get(string id)
        {
            YScheduleInfo yScheduleInfo = null;
            DateTime rangeDateVal;
            DateTime? rangeDate = null;

            if (!String.IsNullOrEmpty(id) && DateTime.TryParse(id, out rangeDateVal))
            {
                rangeDate = rangeDateVal;
            }

            CacheController.GetCachedObject(ref yScheduleInfo, Common.SCHEDULE_EVENTS_CACHE_ID);

            if (yScheduleInfo == null)
            {
                var entriesController = new ContentController();

                var events = entriesController.Get(Common.DOCUMENT_EVENTS_TEMPLATE) as List<Api.Document>;
                var classes = entriesController.Get(Common.DOCUMENT_CLASSES_TEMPLATE) as List<Api.Document>;
                var interests = entriesController.Get(Common.DOCUMENT_INTERESTS_TEMPLATE) as List<Api.Document>;

                if (events != null && events.Count > 0)
                {
                    yScheduleInfo = ProcessDataset(events, classes, interests);
                }
//              CacheController.GetCachedObject<YScheduleInfo>(ref yScheduleInfo, Common.SCHEDULE_EVENTS_CACHE_ID);
            }
            return ApplyDateFilter(yScheduleInfo, rangeDate);
        }

        private SchedulerConfig ProcessHeader(Api.Document document)
        {
            if (document == null)
            {
                return null;
            }

            var headerContainer = new SchedulerConfig
            {
                DesktopHeader = new PageHeader
                {
                    Section1 = P.GetFragmentHTML(document, "DSection1"),
                    Section2 = P.GetFragmentHTML(document, "DSection2"),
                    Section3 = P.GetFragmentHTML(document, "DSection3"),
                    Section4 = P.GetFragmentHTML(document, "DSection4"),
                    AlertSection1 = P.GetFragmentHTML(document, "DAlertSection1"),
                    AlertSection2 = P.GetFragmentHTML(document, "DAlertSection2"),
                    MPageTitle = P.GetFragmentHTML(document, "MPageTitle"),
                    MKeywords = P.GetFragmentHTML(document, "MKeywords"),
                    MDescription = P.GetFragmentHTML(document, "MDescription"),
                },
                MobileHeader = new PageHeader
                {
                    Section1 = P.GetFragmentHTML(document, "MSection1"),
                    Section2 = P.GetFragmentHTML(document, "MSection2"),
                    Section3 = P.GetFragmentHTML(document, "MSection3"),
                    Section4 = P.GetFragmentHTML(document, "MSection4"),
                    AlertSection1 = P.GetFragmentHTML(document, "MAlertSection1"),
                    AlertSection2 = P.GetFragmentHTML(document, "MAlertSection2"),
                    MPageTitle = P.GetFragmentHTML(document, "MPageTitle"),
                    MKeywords = P.GetFragmentHTML(document, "MKeywords"),
                    MDescription = P.GetFragmentHTML(document, "MDescription"),
                }
            };

            var holidaysList = P.GetGroupContent(document,"HolidaysList");
            if (holidaysList != null && holidaysList.Count > 0)
            {
                holidaysList.ForEach(elem =>
                {                    
                    var dateFragment = elem.GetDate("Date");                    

                    if (dateFragment != null && dateFragment.Value != null )
                    {
                        headerContainer.Holidays.Add(dateFragment.Value.Item);
                    }
                });
            }

            return headerContainer;
        }

        private YScheduleInfo ApplyDateFilter(YScheduleInfo yScheduleInfo, DateTime? rangedate)
        {
            var yScheduleInfoTemp = new YScheduleInfo
            {
                LocationsList = yScheduleInfo.LocationsList
            };

            // Apply Holiday Filter:
            if (rangedate != null)
            {
                var scheduleConfig = GetScheduleConfig();
                var tempdate = (DateTime) rangedate;
                if (scheduleConfig.Holidays.Contains(tempdate))
                {
                    return yScheduleInfoTemp;
                }
            }

            var interestsEnum = yScheduleInfo.Interests.GetEnumerator();
            while (interestsEnum.MoveNext())
            {
                var interest = interestsEnum.Current;
                var interestev = interest.Events.Where(ev => ev.EndDateDt.CompareTo(rangedate) == 0).ToList();

                if (!interest.IsGroup)
                {
                    YInterest intetestTemp;

                    if (interestev.Count > 0)
                    {
                        intetestTemp = new YInterest
                        {
                            Attribute = interest.Attribute,
                            Description = interest.Description,
                            IsGroup = interest.IsGroup,
                            Events = interestev
                        };
                    }
                    else
                    {
                        intetestTemp = new YInterest
                        {
                            Attribute = interest.Attribute,
                            Description = interest.Description,
                            IsGroup = interest.IsGroup
                        };
                    }
                    yScheduleInfoTemp.Interests.Add(intetestTemp);
                }
                else
                {
                    // Group interests:
                    var classesenum = interest.Classes.GetEnumerator();

                    var intetestTemp = new YInterest
                    {
                        Attribute = interest.Attribute,
                        Description = interest.Description,
                        IsGroup = interest.IsGroup
                    };
                    yScheduleInfoTemp.Interests.Add(intetestTemp);

                    while (classesenum.MoveNext())
                    {
                        var classtemp = classesenum.Current;
                        var classevents = classtemp.Events.Where(ev => ev.EndDateDt.CompareTo(rangedate) == 0).ToList();

                        YClass yclass;
                        if (classevents.Count > 0)
                        {
                            yclass = new YClass
                            {
                                Description = classtemp.Description,
                                Events = classevents
                            };
                        }
                        else
                        {
                            yclass = new YClass
                            {
                                Description = classtemp.Description
                            };
                        }
                        intetestTemp.Classes.Add(yclass);
                    }
                }
            }
            return yScheduleInfoTemp;
        }

        private YScheduleInfo ProcessDataset(List<Api.Document> events,
                        List<Api.Document> classes, List<Api.Document> interests)
        {
            var scheduleInfo = new YScheduleInfo();

            events.ForEach(eventDocElem =>
            {
                var yEvents = GetEvents(eventDocElem);                

                if (yEvents != null && yEvents.Count > 0)
                {
                    yEvents.ForEach(eventElem =>
                    {
                        if (scheduleInfo.LocationsList.FirstOrDefault(elem => elem.Equals(eventElem.Center.Description)) == null)
                        {
                            scheduleInfo.LocationsList.Add(eventElem.Center.Description);
                        }

                        var interestDoc = P.GetLinkedDocument(eventDocElem, interests, "Interest");

                        if (interestDoc != null)
                        {
                            var yIterest = scheduleInfo.Interests.FirstOrDefault(elem => elem.Description == P.GetText(interestDoc, "Title"));

                            if (yIterest == null)
                            {
                                yIterest = new YInterest
                                {
                                    Description = P.GetText(interestDoc, "Title"),
                                    IsGroup = P.GetText(interestDoc, "IsGroup") == "Yes"
                                };
                                scheduleInfo.Interests.Add(yIterest);
                                
                            }

                            //Process Group Event:
                            if (yIterest.IsGroup)
                            {
                                var classDoc = P.GetLinkedDocument(eventDocElem, classes, "Class");

                                if (classDoc != null)
                                {
                                    var yClass = yIterest.Classes.FirstOrDefault(elem => elem.Description == P.GetText(classDoc, "Title"));
                                    if (yClass == null)
                                    {
                                        yClass = new YClass
                                        {
                                            Description = P.GetText(classDoc, "Title")
                                        };
                                        yIterest.Classes.Add(yClass);

                                    }
                                    yClass.Events.Add(eventElem);
                                }
                            }
                            else
                            {
                                yIterest.Events.Add(eventElem);
                            }
                        }
                    });
                }
            });
            return scheduleInfo;
        }
        
        private List<YEvent> GetEvents(Api.Document eventDoc)
        {
            var yEvents = new List<YEvent>();
            var splitDates = SplitEventDates(eventDoc);

            if (splitDates != null && splitDates.Count > 0)
            {
                splitDates.ForEach(dateElem =>
                {
                    var center = P.GetText(eventDoc, "Center");
                    var className = P.GetText(eventDoc, "ClassName");
                    var startDate = dateElem.Item1.ToString(("yyyy-MM-dd HH:mm"));
                    var endDate = dateElem.Item2.ToString(("yyyy-MM-dd HH:mm"));

                    if (!String.IsNullOrEmpty(center))
                    {
                        center = center.Replace("Y Center", "Center Y");
                        yEvents.Add(new YEvent
                        {
                            EventId = eventDoc.id,
                            ActivityLevel = P.GetText(eventDoc, "ActivityLevel"),
                            Age = P.GetText(eventDoc, "Age"),
                            Gender = P.GetText(eventDoc, "Gender"),
                            Price = P.GetText(eventDoc, "Price"),
                            Category = P.GetText(eventDoc, "Category"),
                            Center = new YCenter
                            {
                                Description = center
                            },
                            Room = P.GetText(eventDoc, "Room"),
                            ClassName = className,
                            ContactInfo = P.GetText(eventDoc, "ContactInfo"),
                            DatesAvailable = P.GetText(eventDoc, "DatesAvailable"),
                            DaysOffered = dateElem.Item3,
                            Description = P.GetText(eventDoc, "Description"),
                            StartDate = startDate,
                            EndDate = endDate,
                            DateRange = dateElem.Item4,
                            Title = P.GetText(eventDoc, "Title"),
                            EndDateDt = dateElem.Item5
                        });
                    }
                });
            }
            return yEvents;
        }

        private List<Tuple<DateTime, DateTime, String, String, DateTime>> SplitEventDates(Api.Document eventDoc)
        {
            List<Tuple<DateTime, DateTime, String, String, DateTime>> dateRanges = null;

            DateTime startDate;
            DateTime endDate;

            if (DateTime.TryParse(P.GetText(eventDoc, "EventStart"), out  startDate)
                && DateTime.TryParse(P.GetText(eventDoc, "EventEnd"), out  endDate))
            {
                var fomattedStartDateTime = String.Format("{0:g}", startDate);
                var formattedEndDateTime = String.Format("{0:g}", endDate); 
             

                var formattedStartTime = startDate.ToString("HH:mm");
                var formattedEndTime = endDate.ToString("HH:mm");
             
                var includeDatesEvent = new List<Tuple<DateTime, String>>();
                dateRanges = new List<Tuple<DateTime, DateTime, String, String, DateTime>>();
              
                for (var tempDate = startDate.Date; tempDate <= endDate.Date; tempDate = tempDate.AddDays(1))
                {
                    var dateIncludeVal = P.GetText(eventDoc, tempDate.DayOfWeek.ToString());

                    var dateInclude = (!String.IsNullOrEmpty(dateIncludeVal) && dateIncludeVal == "Yes");
                    if (dateInclude)
                    {
                        includeDatesEvent.Add(new Tuple<DateTime, String>(tempDate,
                                        DateTimeFormatInfo.CurrentInfo.GetDayName(tempDate.DayOfWeek)));
                    }
                }

                for (var tempDate = startDate.Date; tempDate <= endDate.Date; tempDate = tempDate.AddDays(1))
                {
                    var dateInclude = includeDatesEvent.FirstOrDefault(elem => elem.Item1 == tempDate) != null;
                    if (dateInclude)
                    {
                        var evStart = Convert.ToDateTime(String.Format("{0} {1}", tempDate.ToString("yyyy/MM/dd"), formattedStartTime));
                        var evEnd = Convert.ToDateTime(String.Format("{0} {1}", tempDate.ToString("yyyy/MM/dd"), formattedEndTime));
                        var evEndDt = Convert.ToDateTime(String.Format("{0}", tempDate.ToString("yyyy/MM/dd")));

                            var eventRange = String.Empty;

                            includeDatesEvent.ForEach(elem =>
                            {
                                var eventDay = elem.Item2.Substring(0, 3);
                                if (eventRange.IndexOf(eventDay) == -1)
                                {
                                    eventRange += String.Format("{0}.,", eventDay);
                                }

                            });
                            
                           var dateRange = string.Format("{0} - {1}", fomattedStartDateTime, formattedEndDateTime);
                           dateRanges.Add(new Tuple<DateTime, DateTime, String, String, DateTime>(evStart,
                                                    evEnd,
                                                    eventRange.Substring(0, eventRange.Length - 1),
                                                    dateRange, evEndDt));
                    }
                }
            }
            return dateRanges;
        }
    }

    #region Helper Classes and DTOs

    public class YCenter
    {
        public string Description { get; set; }
    }

    public class YClass
    {
        private List<YEvent> _events;

        public string Description { get; set; }
        public List<YEvent> Events
        {
            get { return _events ?? (_events = new List<YEvent>()); }
            set { _events = value; }
        }
    }

    public class YInterest
    {
        private List<YEvent> _events;
        private List<YClass> _classes;

        public string Description { get; set; }
        public string Attribute { get; set; }

        public bool IsGroup { get; set; }

        public List<YEvent> Events
        {
            get { return _events ?? (_events = new List<YEvent>()); }
            set { _events = value; }
        }

        public List<YClass> Classes
        {
            get { return _classes ?? (_classes = new List<YClass>()); }
            set { _classes = value; }
        }

    }

    public class YEvent
    {
        private YCenter _center;

        public String EventId { get; set; }
        public String ClassName { get; set; }
        public String Description { get; set; }

        public String DaysOffered { get; set; }
        public String DatesAvailable { get; set; }

        public String Gender { get; set; }
        public String Age { get; set; }
        public String ActivityLevel { get; set; }
        public String Category { get; set; }


        public YCenter Center
        {
            get { return _center ?? (_center = new YCenter()); }
            set { _center = value; }
        }
        public String Room { get; set; }
        public String ContactInfo { get; set; }
        public String Price { get; set; }

        public String StartDate { get; set; }
        public String EndDate { get; set; }
        public String DateRange { get; set; }
        public String Title { get; set; }
        public DateTime EndDateDt { get; set; }

    }

    public class SchedulerConfig
    {
        private List<DateTime> _holidays;

        private PageHeader _desktopHeader;
        private PageHeader _mobileHeader;

        public PageHeader DesktopHeader
        {
            get { return _desktopHeader ?? (_desktopHeader = new PageHeader()); }
            set { _desktopHeader = value; }
        }

        public PageHeader MobileHeader
        {
            get { return _mobileHeader ?? (_mobileHeader = new PageHeader()); }
            set { _mobileHeader = value; }
        }

        public List<DateTime> Holidays
        {
            get { return _holidays ?? (_holidays = new List<DateTime>()); }
            set { _holidays = value; }
        }
    }

    public class PageHeader
    {
        public string Section1 { get; set; }
        public string Section2 { get; set; }
        public string Section3 { get; set; }
        public string Section4 { get; set; }
        public string AlertSection1 { get; set; }
        public string AlertSection2 { get; set; }
        public string MPageTitle { get; set; }
        public string MKeywords { get; set; }
        public string MDescription { get; set; }
    }

    public class YScheduleInfo
    {
        private List<YInterest> _interests;
        private List<String> _locationsList;
        public List<YInterest> Interests
        {
            get { return _interests ?? (_interests = new List<YInterest>()); }
            set { _interests = value; }
        }

        public List<String> LocationsList
        {
            get
            {
                if (_locationsList != null && _locationsList.Count > 0)
                {
                    _locationsList = _locationsList.OrderBy(elem => elem).ToList();
                }

                return _locationsList ?? (_locationsList = new List<string>());
            }
            set { _locationsList = value; }
        }
    }
    #endregion
}