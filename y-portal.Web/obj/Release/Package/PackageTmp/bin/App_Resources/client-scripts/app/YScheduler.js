/// <reference path="../framework/jQuery/jquery-1.11.0.min.js" />
/// <reference path="../framework/knockoutjs/knockout-2.3.0.debug.js" />
/// <reference path="DHTMLX/dhtmlxScheduler/codebase/dhxscheduler_mobile_debug.js" />

var daysPreLoad = 2;
var _schedulerAPIURL = "/api/Scheduler";
var _schedulerContainer = "scheduler1";
var _eventDetailContainer = "EventDetail";

var $schedulerContainer = $('#scheduler1');
var $SchedLoading = $('#SchedLoading');
var $ControlPanel = $('#ControlPanel');

var $dhx_cal_date = $(".dhx_cal_date");
var $dhx_cal_today_button = $('.dhx_cal_today_button');
var $dhx_cal_prev_button = $('#dhx_cal_prev_button');
var $dhx_cal_next_button = $('#dhx_cal_next_button');
var $locations = $('#locations');
var $eventGroups = $('#eventGroups');
var $classes = $('#classes');

var $ScheduleInfoMobile = $("#ScheduleInfoMobile");
var $ScheduleInfo = $("#ScheduleInfo");

$SchedLoading.fadeIn(3000);

$ControlPanel.hide();
$schedulerContainer.hide();

var DAILY = "Daily View";
var WEEKLY = "Weekly View";

var $dhx_cal_data = $(".dhx_cal_data");
var $EventDetail = $("#EventDetail");  
var defaultInterestValue = "Select Interest";
var defaultLocationID = 0;
var defaultLocationValue = "Select Location";
var defaultView = DAILY;
var defaultClassValue = "Select Class";
var mobileSch = null;

var eventtypes = [
    { label: 'Drop-In Funshops', color: "#ED1C24" },
    { label: 'Group Exercise',  color: "#C6168D" },
    { label: 'Lap Swim', color: "#0060AF" },
    { label: 'Family Swim', color: "#20BDBE" },
    { label: 'Open Gym', color: "#FCAF17" },
    { label: 'Stay & Play', color: "#F47917" },
    { label: 'Upcoming Events', color: "#88278F" },
    { label: 'Water Exercise', color: "#01A490" },
    { label: 'Events for All Ages', color: "#5c2e91" },
    { label: 'Fit N Fun', color: "#006b6b" },
    { label: 'Funshops', color: "#ed1c24" },
    { label: 'Rockwall', color: "#dd5828" }
];

var GetElement = function (id) { return document.getElementById(id); };

function SelectElement(key, label) {
    this.key = key;
    this.label = label;
}

function Locations() {
    this.rows = new Array();
    this.AddData = function (elem) {
         this.rows.push(elem);
    };
}

var SchedulerModel;
$(document).ready(function () {
    var _calendarAPIURL = $('#apiEndpoint').val();
    var isPhone = function() {
        return $(window).width() < 770;
    };

    var scheduleViewOptions = [DAILY, WEEKLY];
    if (isPhone()) {
        scheduleViewOptions = [DAILY];
    }

    // Begin Model
    SchedulerModel = {

        DesktopHeader: ko.observable(),
        MobileHeader: ko.observable(),

        SchedulerLoadedDates: ko.observableArray(),
        LastFetchedData: ko.observableArray(),

        //used for y-unit
        CalendarLocations: ko.observableArray(),

        //combo options
        SchedulerLocations: ko.observableArray(),
        SchedulerInterests: ko.observableArray([defaultInterestValue]),
        SchedulerClasses: ko.observableArray([defaultClassValue]),
        SchedulerEvents: ko.observableArray(),
        SchedulerViews: ko.observableArray(scheduleViewOptions),

        //current selections
        SelectedInterest: ko.observable(),
        SelectedClass: ko.observable(),
        SelectedEvent: ko.observable(),
        SelectedView: ko.observable(),
        SelectedLocationID: ko.observable(),

        IsGroupInterest: ko.observable(false),
        HasClasses: ko.observable(false),
        IsInterestSelected: ko.observable(false),
        IsLocationSelected: ko.observable(false),
        
        isLoadComplete: ko.observable(false),
        isInitLoad: ko.observable(true),


        GetScheduleConfig: function () {
            var self = this;
            if (!self.DesktopHeader()) {
            var headerApiURL = _schedulerAPIURL + "/custom/GetScheduleConfig";
            $.getJSON(headerApiURL, function (pageHeader) {
                    self.DesktopHeader(pageHeader.DesktopHeader);
                    self.MobileHeader(pageHeader.MobileHeader);                
                });
            }
        },
        
        isMobile: function () {
            var isMobile = $(window).width() < 900;
            if (isMobile) {
                $ScheduleInfoMobile.removeClass('hide');
                $ScheduleInfo.addClass('hide');
            } else {
                $ScheduleInfo.removeClass('hide');
                $ScheduleInfoMobile.addClass('hide');
            }

            return isMobile;
        },

        SetSections: function (section) {
            var self = this;

            if (section == null) {
                section = self.CalendarLocations();
            }

            scheduler.createTimelineView({
                name: "timeline",
                x_unit: "minute",
                x_date: "%h:%i %A",
                x_step: 60,
                x_size: 18,
                x_start: 5,
                x_length: 24,
                y_unit: section,
                y_property: "location_id",
                render: "bar",
                section_autoheight: true,
                fit_events: true

                //second_scale: {
                //    x_unit: "hour", // unit which should be used for second scale
                //    x_date: "%H" // date format which should be used for second scale, "July 01"
                //}
            });
        },

        GetDataForDate: function (startDate) {
            var self = this;
            var startDateString = DateUtils.getFormattedDate(startDate);
            var match = ko.utils.arrayFirst(self.SchedulerLoadedDates(), function (item) {
                return item.date === startDateString;
            });
            if (match) {
                self.isLoadComplete(true);
                return;
            }

            self.GetEvents(startDate, false, function(eventsData) {
                var dto = { date: startDateString, Interests: eventsData.Interests };
                self.SchedulerLoadedDates.push(dto);
            });
        },
        
        GetStartAndEndDateStrings: function(weekMode, targetDate) {
            var startDate, endDate;
            if (!weekMode) {
                startDate = endDate = targetDate;
            } else {
                startDate = DateUtils.getFirstDayOfWeek(targetDate);
                endDate = DateUtils.getLastDayOfWeek(targetDate);
            }

            var startDateStr = DateUtils.getFormattedDate(startDate);
            var endDateStr = DateUtils.getFormattedDate(endDate);

            return [startDateStr, endDateStr];
        },

        GetEvents: function (targetDate, weekMode, successCallback) {
            var self = this;
            var url = _calendarAPIURL;
            if (!targetDate) {
                targetDate = new Date();
            }

            var dates = self.GetStartAndEndDateStrings(weekMode, targetDate);
            //$SchedLoading.fadeIn(500); //set the busy indicator

            /* there's some kind of timing issue w/ this is IE8/IE9 that results in a "long running script" error,
            which also seems to kill this request regardless of whether you say "don't cancel". setTimeout(fn,0)
            seems to alleviate it by like yielding execution to the rendering threads or some such. */
            setTimeout(function () {
                $.ajax({
                    dataType: "json",
                    url: url,
                    data: {
                        dateFrom: dates[0],
                        dateTo:   dates[1]
                    },
                    success: function (eventsData) {
                        self.LastFetchedData(eventsData);
                        self.ProcessLocations(eventsData.LocationsList);

                        self.LastFetchedData().Interests.sort(function (left, right) {
                            return ((left.Description < right.Description) ? -1 : ((left.Description > right.Description) ? 1 : 0));
                        });

                        ko.utils.arrayForEach(self.LastFetchedData().Interests, function (interest) {
                            if (self.SchedulerInterests().indexOf(interest.Description) < 0) {
                                self.SchedulerInterests.push(interest.Description);
                            }

                            InterestUtils.processInterest(interest, SchedulerModel);
                        });

                        self.SetSections(self.CalendarLocations());
                        self.isLoadComplete(true);
                        self.SizeScheduler(); //this fades out the busy indicator...
                        self.FilterEvents();
                        if (successCallback) {
                            successCallback(eventsData);
                        }
                    }
                });
            }, 0);
        },

        ProcessEvent: function (event, interest, evClass) {
            var self = this;
            var location = ko.utils.arrayFilter(self.SchedulerLocations(), function (locationItem) {
                return locationItem.label === event.Center.Description;
            });

            if (location.length > 0) {
                //var UUID = event.ClassName + event.Description + event.start_date + event.end_date + location[0].label + event.Title;
                var e = {
                    "ID": self.SchedulerEvents().length,
                    "ClassName": event.ClassName,
                    "text": event.Description,
                    "DaysOffered": event.DaysOffered,
                    "DatesAvailable": event.DatesAvailable,
                    "Gender": event.Gender,
                    "Age": event.Age,
                    "ActivityLevel": event.ActivityLevel,
                    "Category": event.Category,
                    "Room": event.Room,
                    "ContactInfo": event.ContactInfo,
                    "Price": event.Price,
                    "Interest": interest,
                    "EventClass": evClass,
                    "Location": location[0].label,
                    "start_date": event.start_date,
                    "end_date": event.end_date,
                    "location_id": location[0].key,
                    "DateRange": event.DateRange,
                    "DateRangeDays": event.DateRangeDays,
                    "DateRangeTimes": event.DateRangeTimes,
                    "InstructorName": event.InstructorName,
                    "Title": event.Title
                };
                var existingEvent = ko.utils.arrayFilter(self.SchedulerEvents(), function(i) {
                    return i.Title === e.Title && i.text === e.text && i.start_date === e.start_date && i.end_date === e.end_date && i.location_id === e.location_id
                        && i.InstructorName === e.InstructorName && i.Interest === e.Interest;
                });
                if (existingEvent.length === 0) {
                    self.SchedulerEvents.push(e);
                }         
            }
        },

        ProcessLocations: function(locationsList) {
            var self = this;

            if (self.SchedulerLocations().length === 0 && !self.isMobile()) {
                self.SchedulerLocations.push(new SelectElement(0, defaultLocationValue));
            }

            ko.utils.arrayForEach(locationsList, function(item) {
                var location = ko.utils.arrayFilter(self.SchedulerLocations(), function(locationItem) {
                    return locationItem.label === item.name;
                });
                if (location.length === 0) {
                    var key = self.isMobile() ? self.SchedulerLocations().length + 1 : self.SchedulerLocations().length;

                    location = new SelectElement(key, item.name);
                    self.SchedulerLocations.push(location);
                    self.CalendarLocations.push(location);
                }
            });
        },

        LoadSchedulerData: function (data) {
            var self = this;            
            scheduler.clearAll();
            scheduler.parse(ko.toJSON(data), "json");
        },

        SizeScheduler: function () {
            var self = this;
            var vph = 0; 
            var wDate = typeof scheduler.getState().date == 'undefined' ?
                        new Date() :
                        scheduler.getState().date;

            if (self.isLoadComplete()) {
                $SchedLoading.fadeOut(1000, function () {
                    $ControlPanel.fadeIn(500);
                });
                //$ControlPanel.fadeIn(500);
                $schedulerContainer.fadeIn(500);
                
                if (self.isMobile()) {
                    vph = 45 * 20.5;
                    
                    scheduler.config.touch_tip = false;
                    scheduler.config.touch = false;
                    if (scheduler.getState().mode === undefined) {
                        scheduler.init(_schedulerContainer, wDate, "day");
                    } else {
                        scheduler.setCurrentView();
                    }

                    $dhx_cal_date.hide();
                    if (self.isInitLoad())
                    {
                        self.SelectedLocationID(1);
                        self.isInitLoad(false);
                    }
                } else {
                    vph = $(window).height() / 1.85;
                    if (scheduler.getState().mode === undefined) {
                        scheduler.init(_schedulerContainer, wDate, "timeline");
                    } else {
                        scheduler.setCurrentView();
                    }
                    $dhx_cal_date.show();
                }
            }
            $schedulerContainer.css({ 'height': vph + 'px' });
        },

        SchedulerDismissLightBox: function(){
            scheduler.endLightbox(false, GetElement(_eventDetailContainer));
        },   

        /*SchedulerExportToPDF: function () {

            var format = "A4";
            var orient = "landscape";
            var zoom = 1;

            scheduler.exportToPDF({
                format: format,
                orientation: orient,
                header: "<h1>Y Of Central Maryland</h1>",
                zoom: zoom,
                name: "YSchedule.pdf"
                
            });
        },*/

        OpenPrint: function () {
            var self = this;
            var mode = scheduler.getState().mode;
            var dates = self.GetStartAndEndDateStrings(mode === 'week', scheduler.getState().date);
            var location = ko.utils.arrayFilter(self.SchedulerLocations(), function (locationItem) {
                return locationItem.key === self.SelectedLocationID();
            });
            var interest = ko.utils.arrayFilter(self.SchedulerInterests(), function (interestItem) {
                return interestItem === self.SelectedInterest();
            });
            var eventClass = ko.utils.arrayFilter(self.SchedulerClasses(), function (classItem) {
                return classItem === self.SelectedClass();
            });
            var url = window.location.origin + "/schedule/print?mode=" + encodeURIComponent(mode) + "&startDate=" +
                encodeURIComponent(dates[0]) + "&endDate=" + encodeURIComponent(dates[1]);
            url = url + "&location=" + encodeURIComponent(location[0].label);
            url = url + "&interest=" + encodeURIComponent(interest[0]);
            url = url + "&class=" + encodeURIComponent(eventClass[0]);
            window.open(url,  "_blank");
        },

        InitScheduler: function () {
            var self = this;
            var format = scheduler.date.date_to_str("%h:%i %A");            
            scheduler.config.hour_size_px = 89;
            scheduler.templates.hour_scale = function (date) {
                return "<div style='height:22px;line-height:22px;'>" + format(date) + "</div>";
            };
            scheduler.config.first_hour = 5;
            scheduler.config.last_hour = 23;
            scheduler.config.separate_short_events = true;

            scheduler.config.show_loading = true;
            scheduler.locale.labels.timeline_tab = "Timeline";                
            scheduler.config.details_on_create = false;
            scheduler.config.details_on_dblclick = false;
            scheduler.config.xml_date = "%Y-%m-%d %H:%i";
            scheduler.config.default_date = "%l, %F %j, %Y";
                
            scheduler.config.drag_create = false;
            scheduler.config.drag_move = false;
            scheduler.config.drag_resize = false;
            scheduler.config.drag_lightbox = false;
            scheduler.config.drag_out = false;
            scheduler.config.drag_highlight = false;
            scheduler.config.readonly_form = true;
            scheduler.config.touch = false;
            scheduler.config.touch_drag = 1750;
            scheduler.config.touch_tip = false;

            scheduler.config.cascade_event_display = false; // enable rendering, default value = false
            scheduler.config.cascade_event_count = 5; // how many events events will be displayed in cascade style (max), default value = 4
            scheduler.config.cascade_event_margin = 10; // margin between events, default value = 30
            scheduler.xy.scale_height = 30;
            scheduler.xy.min_event_height = 20;
            scheduler.attachEvent('onViewChange', function(new_mode, new_date) {
                if (new_mode === 'week') {
                    var dayColumns = $('.dhx_scale_holder:not(:last-child)');
                    var widthString = dayColumns.css('width');
                    if (widthString) {
                        var width = Number(widthString.replace('px', ''));
                        width = width + 1;
                        dayColumns.css('width', width);
                    }
                }
            });
            scheduler.attachEvent("onBeforeViewChange", function() {
                scheduler.templates.week_scale_date = function(date) {
                    return scheduler.date.date_to_str(scheduler.config.day_date)(date);
                };
                return true;
            });
               
            scheduler.templates.event_class = function (start, end, ev) {                    
                var eventType = self.GetKeyVal(ev.Interest, eventtypes);                   
                ev.color = eventType == null ? "#428bca" : eventType.color;                    
            };

            scheduler.attachEvent("onBeforeDrag", function (id, mode, e) {
                scheduler.getEvent(id).readonly = true;
                return false;
            });

            scheduler.attachEvent("onEventDrag", function (id, mode, e) {
                //any custom logic here
                return false;
            });

            scheduler.attachEvent("onClick", function (id, e) {
                var ev = scheduler.getEvent(id);
                self.SelectedEvent(ev);
                scheduler.startLightbox(id, GetElement(_eventDetailContainer));
            });


            //////////////////////////////////////////////////////////////
            scheduler._click.dhx_cal_next_button = function (dummy, step) {
                var isWeekly = scheduler.getState().mode === 'week';
                if (isWeekly) {
                    var lastDayOfWeek = DateUtils.getLastDayOfWeek(scheduler.getState().date);
                    var firstDayOfNextWeek = new Date(lastDayOfWeek.setDate(lastDayOfWeek.getDate() + 1));
                    var lastDayOfNextWeek = DateUtils.getLastDayOfWeek(firstDayOfNextWeek);
                    DateCacheUtils.weeklyNextPrevHelper(firstDayOfNextWeek, lastDayOfNextWeek, SchedulerModel);
                } else {
                    var nextdayCal = new Date(scheduler._date);
                    nextdayCal.setDate(nextdayCal.getDate() + (step || 1));
                    scheduler.setCurrentView(nextdayCal);
                    
                    var nextdayLoad = new Date(scheduler._date);
                    for (var i = 1; i <= daysPreLoad; i++) {
                        nextdayLoad.setDate(nextdayLoad.getDate() + (step || i));
                        self.GetDataForDate(nextdayLoad);
                    }
                }
            };

            //////////////////////////////////////////////////////////////
            scheduler._click.dhx_cal_prev_button = function (dummy, step) {
                var isWeekly = scheduler.getState().mode === 'week';
                if (isWeekly) {
                    var firstDayOfWeek = DateUtils.getFirstDayOfWeek(scheduler.getState().date);
                    var lastDayOfLastWeek = new Date(firstDayOfWeek.setDate(firstDayOfWeek.getDate() - 1));
                    var firstDayOfLastWeek = DateUtils.getFirstDayOfWeek(lastDayOfLastWeek);
                    DateCacheUtils.weeklyNextPrevHelper(lastDayOfLastWeek, firstDayOfLastWeek, SchedulerModel);
                } else {
                    var prevdate = new Date(scheduler._date);
                    prevdate.setDate(prevdate.getDate() - (step || 1));
                    self.GetDataForDate(prevdate);
                    scheduler.setCurrentView(prevdate);
                }
            };

            //////////////////////////////////////////////////////////////
            scheduler._click.dhx_cal_today_button = function (dummy, step) {                    
                var currdate = new Date();                    
                self.GetDataForDate(currdate);
                scheduler.setCurrentView(currdate);                   
            };

            scheduler.templates.event_bar_text = function (start, end, ev) {
                var eventInfo;
                if (ev.Title && ev.Title.length > 0) {
                    eventInfo = (ev.Title);
                } else {
                    eventInfo = (ev.EventClass) ? " " + ev.EventClass : "";
                    eventInfo += (ev.Interest) ? " " + ev.Interest : "";
                }
                return eventInfo;
            };

            //scheduler.templates.event_header = function (start, end, ev) {
            //    var event_info = "";
            //    if (ev.Title && ev.Title.length > 0) {
            //        event_info = (ev.Title);
            //    } else {
            //        event_info = (ev.EventClass) ? " " + ev.EventClass : "";
            //        event_info += (ev.Interest) ? " " + ev.Interest : "";
            //    }
            //    return event_info;
            //};

            scheduler.templates.event_text = function (start, end, ev) {
                    var event_info = "";
                    if (ev.Title && ev.Title.length > 0) {
                        event_info = (ev.Title);
                    } else {
                        event_info = (ev.EventClass) ? " " + ev.EventClass : "";
                        event_info += (ev.Interest) ? " " + ev.Interest : "";
                    }
                return event_info;
            };


            ///////////////////////
            scheduler.renderEvent = function (container, ev, width, height, header_content, body_content) {                    
                var event_info = "";
                var event_color = ev.color;
                var event_height = container.style.height;// * 1;

                if (ev.Title && ev.Title.length > 0) {
                    event_info = (ev.Title);
                } else {
                    event_info = (ev.EventClass) ? " " + ev.EventClass : "";
                    event_info += (ev.Interest) ? " " + ev.Interest : "";
                }
                var html = "<div  class='my_event' style='background:" + event_color + ";height: " + event_height + "; '>" + event_info + "</div>";
                container.innerHTML = html;
                return true; 
                  
            };
            ///////////////////////
        },

        FilterEvents: function(){
            var self = this;                        
            if (!self.isLoadComplete()) {
                return;
            }
            var locationid = typeof self.SelectedLocationID() == "undefined" ? 0 : self.SelectedLocationID();
            var interestid = self.SelectedInterest();
            var classId = self.SelectedClass();

            var location = ko.utils.arrayFilter(self.SchedulerLocations(), function (locationItem) {
                return locationItem.key === locationid;
            });


            if (location.length > 0 && locationid !== 0) {
                self.SetSections(location);
            }

            if (locationid === 0 && interestid === defaultInterestValue) {
                self.LoadSchedulerData(self.SchedulerEvents());
                self.SetSections(null);
            } else {

                var filteredData = ko.utils.arrayFilter(self.SchedulerEvents(), function (item) {
                    return (item.location_id === locationid);
                });

                if (filteredData.length === 0) {
                    filteredData = self.SchedulerEvents();
                }

                if (interestid !== defaultInterestValue) {
                    filteredData = ko.utils.arrayFilter(filteredData, function (item) {
                        return (item.Interest === interestid);
                    });
                }

                if (filteredData.length > 0 && classId !== defaultClassValue) {
                    filteredData = ko.utils.arrayFilter(filteredData, function (item) {
                        return (item.EventClass === classId);
                    });
                }
                self.LoadSchedulerData(filteredData);
            }
            self.SizeScheduler();
        },

        GetKeyVal: function (id, data) {
            var result = null;
            var ret = ko.utils.arrayFilter(data, function (item) {
                return item.label === id;
            });

            if (ret.length > 0) {
                result = ret[0];
            }
            return result;
        }
    };
    // End Model

    ///Change Scheduler View (Daily/Weekly)
    SchedulerModel.SelectedView.subscribe(function(viewId) {
        var state = scheduler.getState();
        var date = state.date;
        if (viewId === WEEKLY) {
            if (SchedulerModel.IsLocationSelected() && SchedulerModel.IsInterestSelected()) {
                SchedulerModel.GetEvents(date, true, function() {
                    scheduler.setCurrentView(date, 'week');
                    $dhx_cal_today_button.html('This Week');
                });
            } else {
                alert("Please select a location and interest before switching to weekly view.");
                SchedulerModel.SelectedView(DAILY);
                $('#views').val(DAILY);
            }
        } else {
            if (state.mode === undefined) {
                SchedulerModel.SetSections(SchedulerModel.SelectedLocationID());
            } else {
                scheduler.setCurrentView(date, 'timeline');
            }
            $dhx_cal_today_button.html('Today');
        }
    });

    /// Search By Class:
    SchedulerModel.SelectedClass.subscribe(function (classId) {
        SchedulerModel.FilterEvents();
        $classes.prop('selectedIndex', classId);
    });

    /// Search By Interest:
    SchedulerModel.SelectedInterest.subscribe(function (interestId) {
        SchedulerModel.SelectedClass(defaultClassValue);

        if (interestId === defaultInterestValue) {
            SchedulerModel.IsGroupInterest(false);
            SchedulerModel.HasClasses(false);
            SchedulerModel.IsInterestSelected(false);
            SchedulerModel.SelectedView(defaultView);
        } else {
            SchedulerModel.IsInterestSelected(true);
        }

        InterestUtils.refreshInterestClasses(SchedulerModel, interestId);

        SchedulerModel.FilterEvents();
        $eventGroups.prop('selectedIndex', interestId);
       
    });

    // Search By Location:
    SchedulerModel.SelectedLocationID.subscribe(function (locationId) {
        SchedulerModel.SelectedInterest(defaultInterestValue);
        SchedulerModel.FilterEvents();
        $locations.prop('selectedIndex', locationId);
        if (locationId === defaultLocationID) {
            SchedulerModel.SelectedView(defaultView);
        }
        SchedulerModel.IsLocationSelected(locationId !== defaultLocationID);
    });
  
    $(window).resize(function () {        
        SchedulerModel.SizeScheduler();
    });
       
    SchedulerModel.GetScheduleConfig();

    SchedulerModel.GetDataForDate(new Date());
    var loadDate = new Date();
    for (var i = 1; i <= daysPreLoad; i++) {
        SchedulerModel.GetDataForDate(loadDate);
        loadDate.setDate(loadDate.getDate() + i);
    }
    SchedulerModel.InitScheduler();

    ko.applyBindings(SchedulerModel);
});

var DateUtils = {
    getFormattedDate: function (date) {
        var dateString = '';
        if (date && date instanceof Date) {
            dateString = (date.getMonth() + 1) + '-' + date.getDate() + '-' + date.getFullYear();
        }
        return dateString;
    },

    getFirstDayOfWeek: function(date) {
        if (!date) {
            date = new Date();
        }
        if (date.getDay() === 0) {
            date = new Date(date.setDate(date.getDate() - 1));
        }
        var curr = new Date(date);
        var firstDay = date.getDate() - date.getDay() + 1;

        return new Date(curr.setDate(firstDay));
    },

    getLastDayOfWeek: function(date) {
        if (!date) {
            date = new Date();
        }
        var startDate = DateUtils.getFirstDayOfWeek(date);
        startDate.setDate(startDate.getDate() + 6);
        return startDate;
    }
};
var DateCacheUtils = {
    weeklyNextPrevHelper: function (firstDayOfWeek, lastDayOfWeek, model) {
        var a = DateUtils.getFormattedDate(firstDayOfWeek);
        var b = DateUtils.getFormattedDate(lastDayOfWeek);
        // if we've loaded both the start and the end date of the next week, we've loaded the ones in-between too.
        var datesLoaded = ko.utils.arrayFilter(model.SchedulerLoadedDates(), function (i) {
            return a === i.date || b === i.date;
        });
        if (datesLoaded.length < 2) {
            model.GetEvents(firstDayOfWeek, true, function () {
                var curr = new Date(firstDayOfWeek);
                while (curr <= lastDayOfWeek) {
                    var found = model.SchedulerLoadedDates().indexOf(DateUtils.getFormattedDate(curr)) !== -1;
                    if (!found) {
                        model.SchedulerLoadedDates.push(curr);
                    }
                    curr.setDate(curr.getDate() + 1);
                }
                scheduler.setCurrentView(firstDayOfWeek);
            });
        } else {
            scheduler.setCurrentView(firstDayOfWeek);
        }
        InterestUtils.refreshInterestClasses(model, model.SelectedInterest());
    }
};
var InterestUtils = {
    refreshInterestClasses: function (model, interestId) {
        setTimeout(function () {
            var schedDate = DateUtils.getFormattedDate(scheduler.getState().date);
            var dateData = ko.utils.arrayFilter(model.SchedulerLoadedDates(), function(i) {
                return i.date === schedDate;
            });
            if (dateData.length > 0) {
                dateData = dateData[0];
            } else {
                dateData = model.LastFetchedData();
            }
            var interest = ko.utils.arrayFilter(dateData.Interests, function (item) {
                return item.Description === interestId;
            });

            if (interest.length > 0) {
                var interestObj = interest[0];
                model.IsGroupInterest(interestObj.IsGroup);
                model.HasClasses(interestObj.Classes && interestObj.Classes.length > 0);
                if (model.HasClasses()) {
                    model.SchedulerClasses.removeAll();
                    model.SchedulerClasses.push(defaultClassValue);

                    ko.utils.arrayForEach(interestObj.Classes, function (classElem) {
                        model.SchedulerClasses.push(classElem.Description);
                    });
                }
            }
        }, 250);
    },
    processInterest: function (interest, model) {
        //isGroup is defined as having no "classless" events, so if it does have classless events, process them.
        if (!interest.IsGroup) {
            ko.utils.arrayForEach(interest.Events, function (event) {
                model.ProcessEvent(event, interest.Description, null);
            });
        }
        
        // in both cases process the "classed" events, if any.
        interest.Classes.sort(function (left, right) {
            return ((left.Description < right.Description) ? -1 : ((left.Description > right.Description) ? 1 : 0));
        });

        ko.utils.arrayForEach(interest.Classes, function (classElem) {
            ko.utils.arrayForEach(classElem.Events, function (event) {
                model.ProcessEvent(event, interest.Description, classElem.Description);
            });
        });
    }
};