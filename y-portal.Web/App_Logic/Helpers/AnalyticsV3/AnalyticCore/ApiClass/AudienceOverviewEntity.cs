using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace GAnalytic
{
    public class AudienceOverviewSessionEntity
    {
        internal AudienceOverviewSessionEntity(int userSession, DateTime Date)
        {
            _userSession = userSession;
            _Date = Date;
        }


        private int _userSession { get; set; }
        private DateTime _Date { get; set; }

        public int UserSession
        {
            get { return _userSession; }
            set { _userSession = value; }
        }

        public DateTime Date
        {
            get { return _Date; }
            set { _Date = value; }
        }


    }

    public class AudienceOverviewUserEntity
    {
        internal AudienceOverviewUserEntity(int user, DateTime Date)
        {
            _users = user;
            _Date = Date;
        }

        private int _users { get; set; }
        private DateTime _Date { get; set; }

        public int UserSession
        {
            get { return _users; }
            set { _users = value; }
        }

        public DateTime Date
        {
            get { return _Date; }
            set { _Date = value; }
        }


    }

    public class AudienceOverPageViewEntity
    {
        internal AudienceOverPageViewEntity(int pageView, DateTime Date)
        {
            _PageViews = pageView;
            _Date = Date;
        }

        private int _PageViews { get; set; }
        private DateTime _Date { get; set; }

        public int UserSession
        {
            get { return _PageViews; }
            set { _PageViews = value; }
        }

        public DateTime Date
        {
            get { return _Date; }
            set { _Date = value; }
        }

    }

    public class AudienceOverPageVsSessionEntity
    {
        internal AudienceOverPageVsSessionEntity(double pageVsSession, DateTime Date)
        {
            _PageVsSession = pageVsSession;
            _Date = Date;
        }

        private double _PageVsSession { get; set; }
        private DateTime _Date { get; set; }

        public double PageVsSession
        {
            get { return _PageVsSession; }
            set { _PageVsSession = value; }
        }

        public DateTime Date
        {
            get { return _Date; }
            set { _Date = value; }
        }

    }

    public class AudienceOverAvgSessionDurationEntity
    {
        internal AudienceOverAvgSessionDurationEntity(double avgSession, DateTime Date)
        {
            _AvgSession = avgSession;
            _Date = Date;
        }

        private double _AvgSession { get; set; }
        private DateTime _Date { get; set; }

        public double AvgVsSession
        {
            get { return _AvgSession; }
            set { _AvgSession = value; }
        }

        public DateTime Date
        {
            get { return _Date; }
            set { _Date = value; }
        }

    }

    public class AudienceOverBounceRateEntity
    {
        internal AudienceOverBounceRateEntity(double bounceRate, DateTime Date)
        {
            _BounceRate = bounceRate;
            _Date = Date;
        }

        private double _BounceRate { get; set; }
        private DateTime _Date { get; set; }

        public double AvgVsSession
        {
            get { return _BounceRate; }
            set { _BounceRate = value; }
        }

        public DateTime Date
        {
            get { return _Date; }
            set { _Date = value; }
        }

    }

    public class AudienceOverNewSissionEntity
    {
        internal AudienceOverNewSissionEntity(double newSession, DateTime Date)
        {
            _NewSession = newSession;
            _Date = Date;
        }

        private double _NewSession { get; set; }
        private DateTime _Date { get; set; }

        public double AvgVsSession
        {
            get { return _NewSession; }
            set { _NewSession = value; }
        }

        public DateTime Date
        {
            get { return _Date; }
            set { _Date = value; }
        }

    }
}
