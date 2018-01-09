using System;
using System.Collections.Generic;
using System.Web.Http;
using YPortal.BusinessEntities;
using YPortal.BusinessLogicLayer;

namespace YPortal.Web.Api_Services
{
    public class DashboardController : ApiController
    {
        public List<EmailOverview> GetEmailOverview(string campaignIdEmailOverview)
        {
            try
            {
                long campaignIdInt = Convert.ToInt64(campaignIdEmailOverview);

                var emailBlast = new BlastBLL().GetEmailOverview(campaignIdInt);
                
                return emailBlast;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public TouchOverview GetTouchOverview(int blastId)
        {
            try
            {
                var touchOverview = new BlastBLL().GetTouchOverview(blastId);
                return touchOverview;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public EmailTotal GetEmailTotal(string campaignIdEmailTotal)
        {
            try
            {
                long campaignIdInt = Convert.ToInt64(campaignIdEmailTotal);

                var emailBlast = new BlastBLL().GetEmailTotal(campaignIdInt);
                return emailBlast;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}