using System;

namespace GAnalytic
{
    public class GoogleAnalyticsEntity
    {
        internal GoogleAnalyticsEntity(String dimension, double? sessions, double? pNewSession, double? newUsers,
            double? bounceRate, double? pagesPerSession, double? avgSessionDuration)
        {
            _Dimension = dimension;
            _Sessions = sessions;
            _PNewSession = pNewSession;
            _NewUsers = newUsers;
            _BounceRate = bounceRate;
            _PagesPerSession = pagesPerSession;
            _AvgSessionDuration = avgSessionDuration;
        }

        private String _Dimension { get; set; }
        private double? _Sessions { get; set; }
        private double? _PNewSession { get; set; }
        private double? _NewUsers { get; set; }
        private double? _BounceRate { get; set; }
        private double? _PagesPerSession { get; set; }
        private double? _AvgSessionDuration { get; set; }

        public String Dimension
        {
            get { return _Dimension; }
            set { _Dimension = value; }
        }

        public double? Sessions
        {
            get { return _Sessions; }
            set { _Sessions = value; }
        }

        public double? PNewSession
        {
            get { return _PNewSession; }
            set { _PNewSession = value; }
        }

        public double? NewUsers
        {
            get { return _NewUsers; }
            set { _NewUsers = value; }
        }

        public double? BounceRate
        {
            get { return _BounceRate; }
            set { _BounceRate = value; }
        }
        public double? PagesPerSession
        {
            get { return _PagesPerSession; }
            set { _PagesPerSession = value; }
        }
        public double? AvgSessionDuration
        {
            get { return _AvgSessionDuration; }
            set { _AvgSessionDuration = value; }
        }

        public string DateRange { get; set; }
       
    }
}