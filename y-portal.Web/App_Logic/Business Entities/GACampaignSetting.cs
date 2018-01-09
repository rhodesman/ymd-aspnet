using System;
using YPortal.BusinessLogicLayer;

namespace YPortal.BusinessEntities
{   
    public class GACampaignSetting
    {
        public String AnalyticCertificate { get; set; }
        public String AnalyticEmail { get; set; }
        public String AnalyticProfileId { get; set; }
        public String AnalyticProfileName { get; set; }
        public String AnalyticProjectStartDate { get; set; }

        public GACampaignSetting()
        {
            this.AnalyticCertificate = new AppSettingBLL().GetAppValueByAppKey("GACertificate");
            this.AnalyticEmail = new AppSettingBLL().GetAppValueByAppKey("GAEmail");
            this.AnalyticProfileId = new AppSettingBLL().GetAppValueByAppKey("GAProfileId");
            this.AnalyticProfileName = new AppSettingBLL().GetAppValueByAppKey("GAProfileName");
            this.AnalyticProjectStartDate = new AppSettingBLL().GetAppValueByAppKey("GAStartDate");
        }
    }
}