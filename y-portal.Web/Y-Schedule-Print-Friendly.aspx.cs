using System;
using System.Collections.Generic;
using System.Configuration;
using System.Globalization;
using System.Linq;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using HttpUtils;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace YPortal.Web
{
    public partial class YSchedulePrintFriendly : Page
    {
        private string API_ENDPOINT = ConfigurationManager.AppSettings.Get("AdminService.ApiEndpoint");

        private Dictionary<String,String> INTEREST_COLOR_MAP = new Dictionary<String, String>
        {
            {"Events for All Ages", "#5c2e91"},
            {"Family Gym", "#428bca"},
            {"Family Swim", "#20BDBE"},
            {"Fit N Fun", "#006b6b"},
            {"Funshops", "#ed1c24"},
            {"Group Exercise", "#C6168D"}, 
            {"Lap Swim", "#0060AF"},
            {"Open Gym", "#FCAF17"},
            {"Rockwall", "#dd5828"},
            {"Stay & Play", "#F47917"},
            {"Water Exercise", "#01A490"},
            {"Upcoming Events", "#88278F"},
            {"Drop-In Funshops", "#ED1C24"},
        };

        private string GetDefaultDisplayName(string name)
        {
            if (name == "Select Location")
                name = "All Locations";
            else if (name == "Select Interest")
                name = "All Interests";
            else if (name == "Select Class")
                name = "All Classes";
            return name;
        }

        public class ColorInfo
        {
            public string HexColor { get; set; }
            public string Title { get; set; }

            public ColorInfo(string title, string hexColor)
            {
                HexColor = hexColor;
                Title = title;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {   
            var pageHeader = Master.FindControl("pageHeader");
            var pageFooter = Master.FindControl("pageFooter");
            var pageCopyright = Master.FindControl("pageCopyright");

            pageHeader.Visible = false;
            pageFooter.Visible = false;
            pageCopyright.Visible = false;

            var schedulerMode = Request.QueryString["mode"];
            var startDateStr = Request.QueryString["startDate"];
            var endDateStr = Request.QueryString["endDate"];
            var locationName = Request.QueryString["location"];
            var interestName = Request.QueryString["interest"];
            var eventClassName = Request.QueryString["class"];
            var isWeekMode = schedulerMode == "week";

            locationVal.Text = GetDefaultDisplayName(locationName);
            interestVal.Text = GetDefaultDisplayName(interestName);
            classVal.Text = GetDefaultDisplayName(eventClassName);

            if (!String.IsNullOrWhiteSpace(startDateStr))
            {
                var restClient = new RestClient(API_ENDPOINT, HttpVerb.GET);
                var resultJSON = restClient.MakeRequest("?dateFrom="+startDateStr+"&dateTo="+endDateStr);
                JObject resultObj = (JObject) JsonConvert.DeserializeObject(resultJSON);

                var locationsList = resultObj["LocationsList"];
                var interestsList = resultObj["Interests"];

                var hasInterest = !string.IsNullOrWhiteSpace(interestName) && interestName != "Select Interest";
                var hasLocation = !string.IsNullOrWhiteSpace(locationName) && locationName != "Select Location";
                var hasClass = !string.IsNullOrWhiteSpace(eventClassName) && eventClassName != "Select Class";

                //mapping is location name -> map of (day in week -> list of events)
                var locMap = new Dictionary<String, Dictionary<DateTime, List<EventDto>>>();
                var startDate = ParseDate(startDateStr);

                DateTime? endDate = null;
                if (!String.IsNullOrWhiteSpace(endDateStr)) endDate = ParseDate(endDateStr);

                dateVal.Text = startDate.ToString("D") + (endDate != null && endDate != startDate ? " - " + endDate.Value.ToString("D") : "");

                foreach(var interest in interestsList)
                {
                    if (hasInterest && interest["Description"].ToString() != interestName) continue;

                    string color;
                    INTEREST_COLOR_MAP.TryGetValue(interest["Description"].ToString(), out color);
                    if(String.IsNullOrWhiteSpace(color)) color = "#000000"; //black
                    ParseAndAddEvents(interest, hasLocation, locationName, locMap, startDate, endDate, schedulerMode, color, isWeekMode);

                    foreach (var evtClass in interest["Classes"])
                        ParseAndAddEvents(evtClass, hasLocation, locationName, locMap, startDate, endDate, schedulerMode, color, isWeekMode);
                }

                locationsRepeater.DataSource = locMap;
                locationsRepeater.DataBind();
            }
        }

        private Dictionary<DateTime, List<EventDto>> BuildDaysMap(DateTime startDate, DateTime? endDate, string schedulerMode)
        {
            var daysMap = new Dictionary<DateTime, List<EventDto>>();
            var date = startDate;
            daysMap.Add(date, new List<EventDto>());
            if (schedulerMode == "week" && endDate != null && date < endDate)
            {
                while (date < endDate)
                {
                    date = date.AddDays(1);
                    daysMap.Add(date, new List<EventDto>());
                }
            }
            return daysMap;
        } 

        protected void locationRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            var entry = (KeyValuePair<String, Dictionary<DateTime, List<EventDto>>>) e.Item.DataItem;
            var locationNameCtrl = e.Item.FindControl("locationName") as Literal;
            locationNameCtrl.Text = entry.Key;
            var daysRepeater = e.Item.FindControl("daysRepeater") as Repeater;
            daysRepeater.DataSource = entry.Value;
            daysRepeater.DataBind();
        }

        protected void daysRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            var dayInfo = (KeyValuePair<DateTime, List<EventDto>>) e.Item.DataItem;
            var dayNameCtrl = e.Item.FindControl("dayName") as Literal;
            dayNameCtrl.Text = dayInfo.Key.ToString("D");
            var eventsRepeater = e.Item.FindControl("eventsRepeater") as Repeater;
            var todaysEvents = dayInfo.Value;
            todaysEvents = todaysEvents.OrderBy(de => de.StartTime).ThenBy(de => de.EndTime).ToList();
            eventsRepeater.DataSource = todaysEvents;
            eventsRepeater.DataBind();
        }

        protected void eventsRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            var evt = e.Item.DataItem as EventDto;

            var td = e.Item.FindControl("titleTd") as HtmlTableCell;
            td.Style.Add(HtmlTextWriterStyle.BorderColor, evt.Color);
            td.Style.Add(HtmlTextWriterStyle.Color, evt.Color);
        }

        private DateTime ParseDate(String dateString)
        {
            DateTime result;
            var success = DateTime.TryParseExact(dateString, "yyyy-MM-dd HH:mm", CultureInfo.InvariantCulture, DateTimeStyles.None, out result);
            if (!success)
                DateTime.TryParseExact(dateString, "M-d-yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None,
                    out result);
            if (!success) result = DateTime.Parse(dateString);
            return result;
        }

        private void ParseAndAddEvents(JToken eventsHolder, Boolean hasLocation,
            String locationName, Dictionary<String, Dictionary<DateTime, List<EventDto>>> locMap,
            DateTime startDate, DateTime? endDate, string schedulerMode, string color, Boolean weekMode)
        {
            foreach (var evt in eventsHolder["Events"])
            {
                var locationDesc = evt["Center"]["Description"].ToString();
                if (hasLocation && locationDesc != locationName)
                    continue;

                Dictionary<DateTime, List<EventDto>> daysMap;
                if (!locMap.TryGetValue(locationDesc, out daysMap)) daysMap = BuildDaysMap(startDate, endDate, schedulerMode);
                
                var dto = new EventDto
                {
                    Id =  evt["Id"].ToString(),
                    StartTime = ParseDate(evt["start_date"].ToString()),
                    EndTime = ParseDate(evt["end_date"].ToString()),
                    Title = evt["Title"].ToString(),
                    Times = evt["DateRangeTimes"].ToString(),
                    Room = evt["Room"].ToString(),
                    ActivityLevel = evt["ActivityLevel"].ToString(),
                    Instructor = evt["InstructorName"].ToString(),
                    Color = color
                };
                dto.SetDaysOffered(startDate, evt["DaysOffered"].ToString(), weekMode);

                /*foreach (var offeredDay in dto.DaysOffered)
                {
                    List<EventDto> eventsForDay;
                    if (daysMap.TryGetValue(offeredDay, out eventsForDay))
                        eventsForDay.Add(dto);
                }*/
                List<EventDto> eventsForDay;
                if (daysMap.TryGetValue(dto.StartTime.Date, out eventsForDay))
                    eventsForDay.Add(dto);

                locMap[locationDesc] = daysMap;
            }
        }
    }

    public class EventDto : IEquatable<EventDto>
    {
        private String _title;
        private String _times;
        private String _room;
        private String _activityLevel;
        private String _instructor;
        private List<DateTime> _daysOffered;

        public String Id { get; set; }

        public String Color { get; set; }

        public DateTime StartTime { get; set; }

        public DateTime EndTime { get; set; }

        public string Title
        {
            get { return _title; }
            set { _title = string.IsNullOrWhiteSpace(value) ? "" : value; }
        }

        public string Times
        {
            get { return _times; }
            set { _times = string.IsNullOrWhiteSpace(value) ? "" : value; }
        }

        public string Room
        {
            get { return _room; }
            set { _room = string.IsNullOrWhiteSpace(value) ? "n/a" : value; }
        }

        public string ActivityLevel
        {
            get { return _activityLevel; }
            set { _activityLevel = string.IsNullOrWhiteSpace(value) ? "n/a" : value; }
        }

        public string Instructor
        {
            get { return _instructor; }
            set { _instructor = string.IsNullOrWhiteSpace(value) ? "n/a" : value; ; }
        }

        public List<DateTime> DaysOffered
        {
            get { return _daysOffered; }
        }

        public void SetDaysOffered(DateTime startDate, string daysString, Boolean weekMode)
        {
            _daysOffered = new List<DateTime>();
            if (weekMode)
            {
                var abbrevs = daysString.Replace(".", "").Split(',');
                var days = new[] {"Mon", "Tue", "Wed", "Thur", "Fri", "Sat", "Sun"};
                for (int i = 0; i < days.Length; i++)
                    if (abbrevs.Contains(days[i])) _daysOffered.Add(startDate.AddDays(i));
            }
            else
            {
                _daysOffered.Add(startDate);
            }
        }

        public bool Equals(EventDto other)
        {
            return Id == other.Id;
        }
    }
}