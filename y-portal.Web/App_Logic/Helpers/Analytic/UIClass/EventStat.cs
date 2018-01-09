using System;

namespace GAnalytic
{
    public class EventStat
    {
        public Int32 Rank { get; set; }
        public String EventCategory { get; set; }
        public String EventAction { get; set; }
        public String EventLabel { get; set; }
        public Int32 TotalEvents { get; set; }
        public Int32 UniqueEvents { get; set; }
        public String EventValue { get; set; }
        public String VisitsWithEvent { get; set; }
        public String AvgEventValue { get; set; }
       
        public EventStat()
        {
        }

        public EventStat(Int32 rank, String eventCategory, String eventAction, String eventLabel, Int32 totalEvents, Int32 uniqueEvents, String eventValue, String visitsWithEvent, String avgEventValue)
        {
            this.Rank = rank;
            this.EventCategory = eventCategory;
            this.EventAction = eventAction;
            this.EventLabel = EventLabel;
            this.TotalEvents = totalEvents;
            this.UniqueEvents = uniqueEvents;
            this.EventValue = eventValue;
            this.VisitsWithEvent = visitsWithEvent;
            this.AvgEventValue = avgEventValue;
        }
    }
}