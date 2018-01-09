using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Reflection;
using YPortal.BusinessEntities;
using GAnalytic;

namespace YPortal.Repository
{
    public class GAnalyticsRepository
    {
        public List<ContentOverviewEntity> GetSiteContentData( GACampaignSetting campaignSetting,DateTime? startDate,DateTime? endDate)
        {
            var gAnalyticParam = new GAnalyticParam(campaignSetting.AnalyticEmail, campaignSetting.AnalyticPassword,
                                                    campaignSetting.AnalyticProfileName,
                                                    campaignSetting.AnalyticProfileId, string.Empty);

            return GetData.GetSiteContentnData(gAnalyticParam, startDate==null? new DateTime(2014, 5, 1):Convert.ToDateTime(startDate),endDate);
        }



        public List<GoogleAnalyticsEntity> GetGoogleAnalyticsData(string dimensions, GACampaignSetting campaignSetting, DateTime? startDate, DateTime? endDate)
        {
            var gAnalyticParam = new GAnalyticParam(campaignSetting.AnalyticEmail, campaignSetting.AnalyticPassword,
                                                    campaignSetting.AnalyticProfileName,
                                                    campaignSetting.AnalyticProfileId, string.Empty);

            return GetData.GetGoogleAnalyticsEntityData(dimensions,gAnalyticParam,startDate==null? new DateTime(2014, 5, 1):Convert.ToDateTime(startDate),endDate);
        }


        public List<AudienceOverviewSessionEntity> GetAudienceData(GACampaignSetting campaignSetting)
        {
            var gAnalyticParam = new GAnalyticParam(campaignSetting.AnalyticEmail, campaignSetting.AnalyticPassword,
                                                    campaignSetting.AnalyticProfileName,
                                                    campaignSetting.AnalyticProfileId, string.Empty);

            return GetData.GetAudienceData(gAnalyticParam, new DateTime(2014, 5, 1));
        }

        public List<ReferralOverviewEntity> GetReferrersData(GACampaignSetting campaignSetting)
        {
            var gAnalyticParam = new GAnalyticParam(campaignSetting.AnalyticEmail, campaignSetting.AnalyticPassword,
                                                    campaignSetting.AnalyticProfileName,
                                                    campaignSetting.AnalyticProfileId, string.Empty);

            return GetData.GetReferrersData(gAnalyticParam, new DateTime(2014, 5, 1));
        }







        public VisitorsOverviewQueryEntity GetSiteReport(GACampaignSetting campaignSetting,DateTime? startDate, DateTime? endDate)
        {
            var gAnalyticParam = new GAnalyticParam(campaignSetting.AnalyticEmail, campaignSetting.AnalyticPassword,
                                                    campaignSetting.AnalyticProfileName,
                                                    campaignSetting.AnalyticProfileId, string.Empty);
            VisitorsOverviewQueryEntity visitorsOverviewQueryEntity = GetData.GetSiteStat(gAnalyticParam, startDate == null? new DateTime(2014, 5, 1): Convert.ToDateTime( startDate), endDate);
            return visitorsOverviewQueryEntity;
        }

        public List<SiteStat> GetDeviceReport(string device, GACampaignSetting campaignSetting, int startIndex,
                                              int pageSize)
        {
            try
            {
                var gAnalyticParam = new GAnalyticParam(campaignSetting.AnalyticEmail, campaignSetting.AnalyticPassword,
                                                        campaignSetting.AnalyticProfileName,
                                                        campaignSetting.AnalyticProfileId, campaignSetting.AnalyticCode);


                List<OverViewEntity> analyticData = GetData.GetMobileStatList(gAnalyticParam, new DateTime(2014, 7, 1));
                if (analyticData != null)
                {
                    return analyticData.OrderByDescending(x => x.TotalVisits).ToList().ConvertAll(x =>
                                                                                                  new SiteStat
                                                                                                      {
                                                                                                          DeviceName =
                                                                                                              x.
                                                                                                              DeviceInfo,
                                                                                                          Visits =
                                                                                                              x.
                                                                                                              TotalVisits,
                                                                                                          PageView =
                                                                                                              x.
                                                                                                              TotalPageView,
                                                                                                          TotalNewVisit
                                                                                                              =
                                                                                                              GetPercentage
                                                                                                              (x.
                                                                                                                   TotalNewVisit,
                                                                                                               x.
                                                                                                                   TotalVisits),
                                                                                                          AvgVisitTime =
                                                                                                              GetTimeSpaninHoursMinutes
                                                                                                              (x.
                                                                                                                   AvgTimeOnSite),
                                                                                                          BounceRate =
                                                                                                              GetPercentage
                                                                                                              (x.
                                                                                                                   Bounches,
                                                                                                               x.
                                                                                                                   TotalVisits),
                                                                                                      }).Skip(
                                                                                                          startIndex*
                                                                                                          pageSize).Take
                        (pageSize).ToList();
                }
                return null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<InPageAnalyticEntity> GetInPageAnalyticReport(GACampaignSetting campaignSetting)
        {
            var gAnalyticParam = new GAnalyticParam(campaignSetting.AnalyticEmail, campaignSetting.AnalyticPassword,
                                                    campaignSetting.AnalyticProfileName,
                                                    campaignSetting.AnalyticProfileId, string.Empty);
            List<InPageAnalyticEntity> inPageAnalytic = GetData.GetInPageAnalyticReport(gAnalyticParam,
                                                                                        new DateTime(2014, 7, 1));
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

        private string GetPercentage(double upperValue, double totalVisits)
        {
            return Math.Round((upperValue*100)/totalVisits, 2).ToString();
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
            var attributes = (DescriptionAttribute[]) fi.GetCustomAttributes(typeof (DescriptionAttribute), false);
            if (attributes.Length > 0)
            {
                return attributes[0].Description;
            }
            else
            {
                return EnumType.ToString();
            }
        }
    }
}