
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace GAnalytic
{
    public class GAnalyticsRepository
    {
        public async Task<VisitorsOverviewQueryEntity> GetSiteReport(GASetting campaignSetting, DateTime? startDate, DateTime? endDate)
        {
            var gAnalyticParam = new GAnalyticParam(campaignSetting.AnalyticEmail, campaignSetting.AnalyticCertificate,
                                                    campaignSetting.AnalyticProfileName,
                                                    campaignSetting.AnalyticProfileId, string.Empty);
            VisitorsOverviewQueryEntity visitorsOverviewQueryEntity = await GetData.GetSiteStat(gAnalyticParam, startDate == null ? Convert.ToDateTime(campaignSetting.AnalyticProjectStartDate) : Convert.ToDateTime(startDate), endDate);
            return visitorsOverviewQueryEntity;
        }

        public async Task<List<ContentOverviewEntity>> GetSiteContentData(GASetting campaignSetting, DateTime? startDate, DateTime? endDate)
        {
            var gAnalyticParam = new GAnalyticParam(campaignSetting.AnalyticEmail, campaignSetting.AnalyticCertificate,
                                                    campaignSetting.AnalyticProfileName,
                                                    campaignSetting.AnalyticProfileId, string.Empty);

            return await GetData.GetSiteContentnData(gAnalyticParam, startDate == null ? Convert.ToDateTime(campaignSetting.AnalyticProjectStartDate) : Convert.ToDateTime(startDate), endDate);
        }

        public async Task<List<ContentOverviewEntity>> GetTopVisitedPageData(GASetting campaignSetting, int numberOfData, DateTime? startDate, DateTime? endDate)
        {
            var gAnalyticParam = new GAnalyticParam(campaignSetting.AnalyticEmail, campaignSetting.AnalyticCertificate,
                                                    campaignSetting.AnalyticProfileName,
                                                    campaignSetting.AnalyticProfileId, string.Empty);

            return await GetData.GetTopVisitedPageData(gAnalyticParam, numberOfData, startDate == null ? Convert.ToDateTime(campaignSetting.AnalyticProjectStartDate) : Convert.ToDateTime(startDate), endDate);
        }

        public async Task<List<GoogleAnalyticsEntity>> GetGoogleAnalyticsData(string dimensions, GASetting campaignSetting, DateTime? startDate, DateTime? endDate)
        {
            var gAnalyticParam = new GAnalyticParam(campaignSetting.AnalyticEmail, campaignSetting.AnalyticCertificate,
                                                    campaignSetting.AnalyticProfileName,
                                                    campaignSetting.AnalyticProfileId, string.Empty);

            return await GetData.GetGoogleAnalyticsEntityData(dimensions, gAnalyticParam, startDate == null ? Convert.ToDateTime(campaignSetting.AnalyticProjectStartDate) : Convert.ToDateTime(startDate), endDate);
        }





        public async Task<List<AudienceOverviewSessionEntity>> GetAudienceData(GASetting campaignSetting)
        {
            var gAnalyticParam = new GAnalyticParam(campaignSetting.AnalyticEmail, campaignSetting.AnalyticCertificate,
                                                    campaignSetting.AnalyticProfileName,
                                                    campaignSetting.AnalyticProfileId, string.Empty);

            return await GetData.GetAudienceData(gAnalyticParam, Convert.ToDateTime(campaignSetting.AnalyticProjectStartDate));
        }

        public async Task<List<ReferralOverviewEntity>> GetReferrersData(GASetting campaignSetting)
        {
            var gAnalyticParam = new GAnalyticParam(campaignSetting.AnalyticEmail, campaignSetting.AnalyticCertificate,
                                                    campaignSetting.AnalyticProfileName,
                                                    campaignSetting.AnalyticProfileId, string.Empty);

            return await GetData.GetReferrersData(gAnalyticParam, Convert.ToDateTime(campaignSetting.AnalyticProjectStartDate));
        }

        public async Task<List<SiteStat>> GetDeviceReport(string device, GASetting campaignSetting, int startIndex, int pageSize)
        {
            try
            {
                var gAnalyticParam = new GAnalyticParam(campaignSetting.AnalyticEmail, campaignSetting.AnalyticCertificate,
                                                        campaignSetting.AnalyticProfileName,
                                                        campaignSetting.AnalyticProfileId, GetGACode(device.ToLower()));


                List<OverViewEntity> analyticData = await GetData.GetMobileStatList(gAnalyticParam, Convert.ToDateTime(campaignSetting.AnalyticProjectStartDate));
                if (analyticData != null)
                {
                    return analyticData.OrderByDescending(x => x.TotalVisits).ToList().ConvertAll(x =>
                                                                                                  new SiteStat
                                                                                                  {
                                                                                                      DeviceName = x.DeviceInfo,
                                                                                                      Visits = x.TotalVisits,
                                                                                                      PageView = x.TotalPageView,
                                                                                                      TotalNewVisit = GetPercentage(x.TotalNewVisit, x.TotalVisits),
                                                                                                      AvgVisitTime = GetTimeSpaninHoursMinutes(x.AvgTimeOnSite),
                                                                                                      BounceRate = GetPercentage(x.Bounches, x.TotalVisits),
                                                                                                  }).Skip(startIndex * pageSize).Take(pageSize).ToList();
                }
                return null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public async Task<List<InPageAnalyticEntity>> GetInPageAnalyticReport(GASetting campaignSetting)
        {
            var gAnalyticParam = new GAnalyticParam(campaignSetting.AnalyticEmail, campaignSetting.AnalyticCertificate,
                                                    campaignSetting.AnalyticProfileName,
                                                    campaignSetting.AnalyticProfileId, string.Empty);
            List<InPageAnalyticEntity> inPageAnalytic = await GetData.GetInPageAnalyticReport(gAnalyticParam,
                                                                                       Convert.ToDateTime(campaignSetting.AnalyticProjectStartDate));
            if (inPageAnalytic != null)
            {
                inPageAnalytic = inPageAnalytic.GroupBy(l => l.PagePath)
                    .Select(g =>
                            new InPageAnalyticEntity
                            {
                                PagePath = g.Key,
                                Pageviews = g.Sum(x => x.Pageviews),
                                UniquePageviews = g.Sum(x => x.UniquePageviews),
                                AvgTimeOnPage = g.Sum(x => x.AvgTimeOnPage),
                                AvgPageLoadTime = g.Sum(x => x.AvgPageLoadTime),
                                BounceRate = g.Sum(x => x.BounceRate),
                                ExitRate = g.Sum(x => x.ExitRate),
                                AvgTimeOnPageString = GetTimeSpaninHoursMinutes(g.Sum(x => x.AvgTimeOnPage)),
                            }).ToList();

                return inPageAnalytic.OrderByDescending(x => x.Pageviews).ToList();
            }
            return null;
        }

        public async Task<List<InPageAnalyticEntity>> GetLandingPageAnalyticReport(GASetting campaignSetting)
        {
            var gAnalyticParam = new GAnalyticParam(campaignSetting.AnalyticEmail, campaignSetting.AnalyticCertificate,
                                                    campaignSetting.AnalyticProfileName,
                                                    campaignSetting.AnalyticProfileId, string.Empty);
            List<InPageAnalyticEntity> inPageAnalytic = await GetData.GetLandingPageAnalyticReport(gAnalyticParam,
                                                                                       Convert.ToDateTime(campaignSetting.AnalyticProjectStartDate));
            
            return inPageAnalytic;
        }


        private string GetPercentage(double upperValue, double totalVisits)
        {
            return Math.Round((upperValue * 100) / totalVisits, 2).ToString();
        }

        private string GetTimeSpaninHoursAndMinutes(double minutes)
        {
            TimeSpan span = TimeSpan.FromMinutes(minutes);
            return span.ToString(@"d\:hh\:mm\:ss");
        }

        private string GetTimeSpaninHoursMinutes(double minutes)
        {
            TimeSpan span = TimeSpan.FromMinutes(minutes);
            return span.ToString(@"dd\:hh\:mm");
        }

        public string EnumTypeDescription(Enum EnumType)
        {
            FieldInfo fi = EnumType.GetType().GetField(EnumType.ToString());
            DescriptionAttribute[] attributes = (DescriptionAttribute[])fi.GetCustomAttributes(typeof(DescriptionAttribute), false);
            if (attributes.Length > 0)
            {
                return attributes[0].Description;
            }
            else
            {
                return EnumType.ToString();
            }
        }

        private string GetGACode(string deviceName)
        {
            string gaCode = string.Empty;
            switch (deviceName)
            {
                case "mobile": gaCode = EnumTypeDescription(EnumSettings.GoogleAnalyticDeviceType.Mobile); break;
                case "os": gaCode = EnumTypeDescription(EnumSettings.GoogleAnalyticDeviceType.OS); break;
                case "browser": gaCode = EnumTypeDescription(EnumSettings.GoogleAnalyticDeviceType.Browser); break;
                case "location": gaCode = EnumTypeDescription(EnumSettings.GoogleAnalyticDeviceType.Location); break;
                case "source": gaCode = EnumTypeDescription(EnumSettings.GoogleAnalyticDeviceType.Source); break;
                default: break;
            }


            return gaCode;
        }

    }
}
