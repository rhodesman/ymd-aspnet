using System;

namespace GAnalytic
{
    public class OverViewEntity
    {
        public OverViewEntity(String deviceInfo, Int32 TotalVisits, Int32 totalPageView, Int32 totalNewVisit,
                              Int32 uniqueVisits, double bounches, double avgTimeOnSite)
        {
            DeviceInfo = deviceInfo;
            this.TotalVisits = TotalVisits;
            this.TotalPageView = totalPageView;
            this.TotalNewVisit = totalNewVisit;
            this.UniqueVisits = uniqueVisits;
            this.Bounches = bounches;
            this.AvgTimeOnSite = avgTimeOnSite;
        }

        public String DeviceInfo { get; set; }

        public Int32 TotalVisits { get; set; }

        public Int32 TotalPageView { get; set; }

        public Int32 TotalNewVisit { get; set; }

        public Int32 UniqueVisits { get; set; }

        public Double Bounches { get; set; }

        public Double AvgTimeOnSite { get; set; }
    }
}