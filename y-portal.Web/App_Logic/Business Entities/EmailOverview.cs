

namespace YPortal.BusinessEntities
{
    public class EmailOverview
    {
        public long BlastId { get; set; }
        public string BlastDisplayName { get; set; }
        public string MailingSubject { get; set; }
        public System.DateTime BlastStartDate { get; set; }
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