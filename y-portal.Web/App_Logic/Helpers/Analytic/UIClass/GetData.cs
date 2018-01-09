using System;
using System.Collections.Generic;

namespace GAnalytic
{
    internal class GetData
    {

        public static List<ContentOverviewEntity> GetSiteContentnData( GAnalyticParam gAnalyticParam, DateTime startDate,DateTime? endDate)
        {
            return ContentOverviewQuery.GetContentOverviewQueryResults( gAnalyticParam, startDate,endDate);
        }

        public static List<GoogleAnalyticsEntity> GetGoogleAnalyticsEntityData(string dimensions, GAnalyticParam gAnalyticParam, DateTime startDate,DateTime? enddate)
        {
            return GoogleAnalyticsQuery.GetGEOLocationQueryResults(dimensions, gAnalyticParam, startDate, enddate);
        }


        public static List<AudienceOverviewSessionEntity> GetAudienceData(GAnalyticParam gAnalyticParam, DateTime startDate)
        {
            return AudienceOverview.GetAudienceOverviewQueryResults (gAnalyticParam, startDate);
        }


        public static List<ReferralOverviewEntity> GetReferrersData(GAnalyticParam gAnalyticParam, DateTime startDate)
        {
            return ReferrersOverview.GetReferralOverviewQueryResults(gAnalyticParam, startDate);
        }

        public static VisitorsOverviewQueryEntity GetSiteStat(GAnalyticParam gAnalyticParam, DateTime startDate, DateTime? endDate)
        {
            var siteStat = new SiteStat();
            if (String.IsNullOrEmpty(gAnalyticParam.Token) == false)
            {
                var resultData = VisitorsOverviewQuery.GetVisitorsOverviewQueryResults(gAnalyticParam, startDate, endDate);


               return resultData;
            }
            return null;
        }

        private static string GetTimeSpaninHoursMinutes(double minutes)
        {
            TimeSpan span = TimeSpan.FromMinutes(minutes);
            return span.ToString(@"dd\:hh\:mm");
        }

        private static string GetTimeSpaninHoursAndMinutes(double minutes)
        {
            TimeSpan span = TimeSpan.FromMinutes(minutes);
            return span.ToString(@"hh\:mm\:ss");
        }

        public static ContentStat GetContentStat(GAnalyticParam gAnalyticParam, DateTime startDate,DateTime? endDate)
        {
            var contentStat = new ContentStat();

            if (String.IsNullOrEmpty(gAnalyticParam.Token) == false)
            {
                List<ContentOverviewEntity> visitData = ContentOverviewQuery.GetContentOverviewQueryResults(gAnalyticParam, startDate, endDate);
                if (visitData != null)
                {
                    foreach (ContentOverviewEntity obj in visitData)
                    {
                        double avgTimeOnPage = Convert.ToDouble(obj.AvgTimeOnPage);
                        avgTimeOnPage = Math.Round(avgTimeOnPage);
                        var hours = Math.Floor(avgTimeOnPage / 60);
                        var minutes = avgTimeOnPage % 60;
                        String avgTimeonPage = hours + ":" + minutes;
                        double bounceRate = Convert.ToDouble(obj.Bounce) / (Convert.ToDouble(obj.Visits) == 0 ? 1 : Convert.ToDouble(obj.Visits));
                        contentStat = new ContentStat(obj.PagePath.ToString(), obj.PageTitle.ToString(), Convert.ToInt32(obj.PageViews.ToString()), Convert.ToInt32(obj.UniquePageViews.ToString()), avgTimeonPage, Convert.ToInt32(obj.Entrances.ToString()), Math.Round(bounceRate * 100, 2), Math.Round(Convert.ToDouble(obj.ExitRate), 2).ToString());
                    }
                }
                return contentStat;
            }
            return null;
        }

        public List<ContentOverviewEntity> GetContentStatList(GAnalyticParam gAnalyticParam, DateTime startDate, DateTime? endDate)
        {
            if (String.IsNullOrEmpty(gAnalyticParam.Token) == false)
            {
                List<ContentOverviewEntity> visitData = ContentOverviewQuery.GetContentOverviewQueryResults(gAnalyticParam, startDate, endDate);
                if (visitData != null)
                {
                    return visitData;
                }
            }
            return null;
        }

        public List<ContentOverviewEntity> GetContentStatListLineChart(GAnalyticParam gAnalyticParam, DateTime startDate)
        {
            if (String.IsNullOrEmpty(gAnalyticParam.Token) == false)
            {
                List<ContentOverviewEntity> visitData = ContentOverviewQuery.GetContentOverviewQueryResultsLineChart(gAnalyticParam);
                if (visitData != null)
                {
                    return visitData;
                }
            }
            return null;
        }

        public List<EventOverviewEntity> GetEventStatList(GAnalyticParam gAnalyticParam, DateTime startDate)
        {
            if (String.IsNullOrEmpty(gAnalyticParam.Token) == false)
            {
                List<EventOverviewEntity> eventData = EventOverviewQuery.GetEventOverviewQueryResults(gAnalyticParam, startDate);
                if (eventData != null)
                {
                    return eventData;
                }
            }
            return null;
        }

        public static List<OverViewEntity> GetMobileStatList(GAnalyticParam gAnalyticParam, DateTime startDate)
        {
            if (String.IsNullOrEmpty(gAnalyticParam.Token) == false)
            {
                List<OverViewEntity> mobileOverView = DeviceOverViewQuery.GetDeviceOverviewQueryResults(gAnalyticParam, startDate);
                if (mobileOverView != null)
                {
                    return mobileOverView;
                }
            }
            return null;
        }

        public static List<InPageAnalyticEntity> GetInPageAnalyticReport(GAnalyticParam gAnalyticParam, DateTime startDate)
        {
            if (String.IsNullOrEmpty(gAnalyticParam.Token) == false)
            {
                List<InPageAnalyticEntity> inPageAnalyticList = InPageAnalyticOverview.GetInPageAnalyticEntityResults(gAnalyticParam, startDate);
                if (inPageAnalyticList != null)
                {
                    return inPageAnalyticList;
                }
            }
            return null;
        }
    }
}