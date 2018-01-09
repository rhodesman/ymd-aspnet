using System;

namespace GAnalytic
{
    public class VisitorsOverviewQueryEntity
    {
            
        public Int32 Sessions { get; set; }
        public Int32 Users { get; set; }
        public Int32 Pageviews { get; set; }
        public double PagePerSessions { get; set; }
        public double AvgSessionDuration { get; set; }
        public double bounceRate { get; set; }
        public double PNewSessions { get; set; }
        public double PNewVisitor { get; set; }
        public double PReturningVisitor { get; set; }
        public string DateRange { get; set; }

    }
}