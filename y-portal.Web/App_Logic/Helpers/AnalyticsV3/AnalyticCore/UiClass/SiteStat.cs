using System;

namespace GAnalytic
{
    public class SiteStat
    {
        public Int32 Visits { get; set; }
        public Int32 UniqueVisitors { get; set; }
        public Int32 PageView { get; set; }
        public String AvgVisitTime { get; set; }
        public String BounceRate { get; set; }
        public String TotalNewVisit { get; set; }
        public Int32 ReturningVisit { get; set; }
        public Double ReturningVisitPercent { get; set; }
        public String DeviceName { get; set; }
        public Int32 Sessions { get; set; }
        public Int32 Users { get; set; }
        public double PagePerSessions { get; set; }
        public double AvgSessionDuration { get; set; }
        public double PNewSessions { get; set; }
        public double PNewVisitor { get; set; }
        public double PReturningVisitor { get; set; }
        public double bounceRate { get; set; }


        public Double PageVisit
        {
            get { return Math.Round(Convert.ToDouble(this.PageView) / Convert.ToDouble(this.Visits), 2); }
            set { }
        }
        
        public SiteStat()
        {
        }

        public SiteStat(Int32 visits, Int32 uniqueVisitors, Int32 pageView, String avgVisitTime, String bounceRate, String totalNewVisit,  Int32 returningVisit, Double returningVisitPercent,string deviceName=default(string))
        {
            this.Visits = visits;
            this.UniqueVisitors = uniqueVisitors;
            this.PageView = pageView;
            this.AvgVisitTime = avgVisitTime;
            this.BounceRate = bounceRate;
            this.TotalNewVisit = totalNewVisit;
            this.ReturningVisit = returningVisit;
            this.ReturningVisitPercent = returningVisitPercent;
            this.DeviceName = deviceName;
        }
    }
}