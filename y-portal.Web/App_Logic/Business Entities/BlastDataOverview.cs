
using System;
namespace YPortal.BusinessEntities
{
    public class BlastDataOverview
    {
        public long CampaignId { get; set; }
        public long  BlastSegmentId {get;set;}
        public long BlastId{get;set;}
        public long SegmentId{get;set;}
        public string BlastDisplayName{get;set;}
        public long SchedulerMailingId{get;set;}
        public string MailingSubject{get;set;}
        public string   BlastStartDate{get;set;}
       // public string BlastEndDate { get; set; }
        public string ThumbnailUrl{get;set;}
        public string BlastType { get; set; }
        public bool IsActive { get; set; }
    }
}