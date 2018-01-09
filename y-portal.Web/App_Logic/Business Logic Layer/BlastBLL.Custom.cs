using System;
using System.Collections.Generic;
using System.Linq;
using YPortal.BusinessEntities;

namespace YPortal.BusinessLogicLayer
{
    public partial class BlastBLL
    {
        public List<EmailOverview> GetEmailOverview(long campaignId)
        {
            return _DatabaseContext.ExecuteStoreQuery<EmailOverview>("exec SPR_GetEmailOutreachOverviewBySources {0}", campaignId).ToList();
        }

        public TouchOverview GetTouchOverview(long blastId)
        {
            return _DatabaseContext.ExecuteStoreQuery<TouchOverview>("exec SPR_GetSpecificBlastOverview {0}", blastId).FirstOrDefault();
        }

        public EmailTotal GetEmailTotal(long campaignId)
        {
            return _DatabaseContext.ExecuteStoreQuery<EmailTotal>("exec SPR_GetEmailOutreachOverview {0}", campaignId).FirstOrDefault();
        }


        public List<BlastDataOverview> GetBlastOverview(long campaignid,long? blastId) 
        {
            return _DatabaseContext.ExecuteStoreQuery<BlastDataOverview>("exec SPR_GetBlastOverview_By_CampaignId {0},{1}", campaignid, blastId).ToList();
        }


        public bool SaveBlastInfo(long CampaignId, long BlastId, string BlastDisplayName, long SchedulerMailingId, string MailingSubject, string BlastStartDate, string BlastEndDate, string ThumbnailUrl, string BlastType, bool IsActive)
        {

            var executionCode = String.Format("Declare @result as bit   exec SPR_Insert_BlastInfo {0},{1},'{2}',{3},'{4}','{5}','{6}','{7}',{8}, @result out  select @result ", CampaignId, BlastId, BlastDisplayName, SchedulerMailingId, MailingSubject, BlastStartDate, ThumbnailUrl, BlastType, IsActive == true ? 1 : 0);

            return _DatabaseContext.ExecuteStoreQuery<bool>(executionCode).FirstOrDefault();
        }


        public bool SaveBlastInfo(BlastDataOverview item)
        {
            try
            {
                long CampaignId = item.CampaignId;
                long BlastId = item.BlastId;
                //string BlastDisplayName = item.BlastDisplayName;
                long SchedulerMailingId = item.SchedulerMailingId;
                string MailingSubject = item.MailingSubject;
                string BlastStartDate = item.BlastStartDate;
                // string BlastEndDate=item
                string ThumbnailUrl = item.ThumbnailUrl;
                string BlastType = item.BlastType;
                bool IsActive = item.IsActive;
                //var executionCode = String.Format("Declare @result as bit   exec SPR_Insert_BlastInfo {0},{1},'{2}',{3},'{4}','{5}','{6}','{7}',{8}, @result out  select @result ", CampaignId, BlastId, BlastDisplayName, SchedulerMailingId, MailingSubject, BlastStartDate, ThumbnailUrl, BlastType, IsActive == true ? 1 : 0);
                var executionCode = String.Format("Declare @result as bit   exec SPR_Insert_BlastInfo {0},{1},{2},'{3}','{4}','{5}','{6}',{7}, @result out  select @result ", CampaignId, BlastId, SchedulerMailingId, MailingSubject, BlastStartDate, ThumbnailUrl, BlastType, IsActive == true ? 1 : 0);
                return _DatabaseContext.ExecuteStoreQuery<bool>(executionCode).FirstOrDefault();
            }
            catch (Exception ex) 
            {
                throw ex;
            }

        }

    }
}