using System;

namespace GAnalytic
{
    public class ReferralOverviewEntity
    {
        internal ReferralOverviewEntity(String referralName, String pageViews, String sessionDuration, String exitsCount)
        {
            _ReferralName = referralName;
            _PageViews = pageViews;
            _SessionDuration = sessionDuration;
            _ExitsCount = exitsCount;
        }

        private String _ReferralName { get; set; }
        private String _PageViews { get; set; }
        private String _SessionDuration { get; set; }
        private String _ExitsCount { get; set; }

        public String ReferralName
        {
            get { return _ReferralName; }
            set { _ReferralName = value; }
        }

        public String PageViews
        {
            get { return _PageViews; }
            set { _PageViews = value; }
        }

        public String SessionDuration
        {
            get { return _SessionDuration; }
            set { _SessionDuration = value; }
        }

        public String ExitsCount
        {
            get { return _ExitsCount; }
            set { _ExitsCount = value; }
        }
    }
}