using System;

namespace YPortal.BusinessEntities
{
    public class TouchOverview
    {
        public string BlastDisplayName { get; set; }
        public string SubjectLine { get; set; }
        public DateTime SendDate { get; set; }
        public string ThumbnailUrl { get; set; }
        public int TotalAccessedLandingPage { get; set; }
        public int TotalSubmited { get; set; }
        public int TotalSent { get; set; }
        public int TotalBounced { get; set; }
        public int TotalOpened { get; set; }
        public int TotalClicked { get; set; }
        public int TotalOptout { get; set; }
        public int UniqueOpen { get; set; }
        public int UniqueClick { get; set; }
    }
}