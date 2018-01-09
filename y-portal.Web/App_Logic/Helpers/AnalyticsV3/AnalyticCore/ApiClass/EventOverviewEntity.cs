using System;

namespace GAnalytic
{
    public class EventOverviewEntity
    {
        private String _avgEventValue = String.Empty;
        private String _eventAction = String.Empty;
        private String _eventCategory = String.Empty;
        private String _eventLabel = String.Empty;
        private String _eventValue = String.Empty;
        private String _visitsWithEvent = String.Empty;

        internal EventOverviewEntity(Int32 rank, String eventCategory, String eventAction, String eventLabel,
                                     Int32 totalEvents, Int32 uniqueEvents, String eventValue, String visitsWithEvent,
                                     String avgEventValue)
        {
            this.Rank = rank;
            _eventCategory = eventCategory;
            _eventAction = eventAction;
            _eventLabel = eventLabel;
            this.TotalEvents = totalEvents;
            this.UniqueEvents = uniqueEvents;
            _eventValue = eventValue;
            _visitsWithEvent = visitsWithEvent;
            _avgEventValue = avgEventValue;
        }

        public Int32 Rank { get; set; }

        public String EventCategory
        {
            get { return _eventCategory; }
            set { _eventCategory = value; }
        }

        public String EventAction
        {
            get { return _eventAction; }
            set { _eventAction = value; }
        }

        public String EventLabel
        {
            get { return _eventLabel; }
            set { _eventLabel = value; }
        }

        public Int32 TotalEvents { get; set; }

        public Int32 UniqueEvents { get; set; }

        public String EventValue
        {
            get { return _eventValue; }
            set { _eventValue = value; }
        }

        public String VisitsWithEvent
        {
            get { return _visitsWithEvent; }
            set { _visitsWithEvent = value; }
        }

        public String AvgEventValue
        {
            get { return _avgEventValue; }
            set { _avgEventValue = value; }
        }
    }
}