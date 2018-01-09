using System;
using System.Collections.Generic;
using System.Web.Http;
using YPortal.BusinessEntities;
using YPortal.BusinessLogicLayer;

namespace YPortal.Web.Api_Services
{
    public class CampaignController : ApiController
    {
        public List<BasicCampaign> Get()
        {
            try
            {
                var campaignes = new CampaignBLL().GetCampaigns();
                return campaignes;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}