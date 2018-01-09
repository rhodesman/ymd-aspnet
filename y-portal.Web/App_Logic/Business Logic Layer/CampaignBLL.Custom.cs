using System.Collections.Generic;
using System.Linq;
using YPortal.BusinessEntities;

namespace YPortal.BusinessLogicLayer
{
    public partial class CampaignBLL
    {
        public List<BasicCampaign> GetCampaigns()
        {
            return _DatabaseContext.ExecuteStoreQuery<BasicCampaign>("exec SPR_Get_Active_CampaignIDs").ToList();
        }
    }
}