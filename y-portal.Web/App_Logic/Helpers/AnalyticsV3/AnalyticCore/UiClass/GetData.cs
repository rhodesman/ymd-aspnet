
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace GAnalytic
{
    internal class GetData
    {

        public static async Task<List<ContentOverviewEntity>> GetSiteContentnData( GAnalyticParam gAnalyticParam, DateTime startDate,DateTime? endDate)
        {
            return await ContentOverviewQuery.GetContentOverviewQueryResults( gAnalyticParam, startDate,endDate);
        }


        

        public static async Task<List<ContentOverviewEntity>> GetTopVisitedPageData( GAnalyticParam gAnalyticParam,int numberOfData, DateTime startDate,DateTime? endDate)
        {
            return await ContentOverviewQuery.GetContentOverviewQueryResultsForTopPages( gAnalyticParam, numberOfData, startDate,endDate);
        }



        public static async Task<List<GoogleAnalyticsEntity>> GetGoogleAnalyticsEntityData(string dimensions, GAnalyticParam gAnalyticParam, DateTime startDate,DateTime? enddate)
        {
            return await GoogleAnalyticsQuery.GetGEOLocationQueryResults(dimensions, gAnalyticParam, startDate, enddate);
        }


        public static async Task<List<AudienceOverviewSessionEntity>> GetAudienceData(GAnalyticParam gAnalyticParam, DateTime startDate)
        {
            return  await AudienceOverviewQuery.GetAudienceOverviewQueryResults (gAnalyticParam, startDate);
        }


        public static async Task<List<ReferralOverviewEntity>> GetReferrersData(GAnalyticParam gAnalyticParam, DateTime startDate)
        {
            return await ReferrersOverview.GetReferralOverviewQueryResults(gAnalyticParam, startDate);
        }

        public static async Task<VisitorsOverviewQueryEntity> GetSiteStat(GAnalyticParam gAnalyticParam, DateTime startDate, DateTime? endDate)
        {          
                var resultData = await VisitorsOverviewQuery.GetVisitorsOverviewQueryResults(gAnalyticParam, startDate, endDate);
                return resultData;                
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

        public static async Task<ContentStat> GetContentStat(GAnalyticParam gAnalyticParam, DateTime startDate,DateTime? endDate)
        {
            var contentStat = new ContentStat();        
                List<ContentOverviewEntity> visitData = await ContentOverviewQuery.GetContentOverviewQueryResults(gAnalyticParam, startDate, endDate);
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
                return  contentStat;
           
        }

        public async Task<List<ContentOverviewEntity>> GetContentStatList(GAnalyticParam gAnalyticParam, DateTime startDate, DateTime? endDate)
        {
          
                List<ContentOverviewEntity> visitData =await  ContentOverviewQuery.GetContentOverviewQueryResults(gAnalyticParam, startDate, endDate);
                if (visitData != null)
                {
                    return visitData;
                }
                else
                {
                    return null;
                }
          
        }

        public async Task<List<ContentOverviewEntity>> GetContentStatListLineChart(GAnalyticParam gAnalyticParam, DateTime startDate)
        {

            List<ContentOverviewEntity> visitData = await ContentOverviewQuery.GetContentOverviewQueryResultsLineChart(gAnalyticParam, startDate);
                if (visitData != null)
                {
                    return visitData;
                }
                else
                {
                    return null;
                }
          
        }

        public async Task<List<EventOverviewEntity>> GetEventStatList(GAnalyticParam gAnalyticParam, DateTime startDate)
        {
           
                List<EventOverviewEntity> eventData = await EventOverviewQuery.GetEventOverviewQueryResults(gAnalyticParam, startDate);
                if (eventData != null)
                {
                    return eventData;
                }
                else
                {
                    return null;
                }
          
        }

        public static async Task<List<OverViewEntity>> GetMobileStatList(GAnalyticParam gAnalyticParam, DateTime startDate)
        {

            List<OverViewEntity> mobileOverView = await DeviceOverViewQuery.GetDeviceOverviewQueryResults(gAnalyticParam, startDate);
                if (mobileOverView != null)
                {
                    return mobileOverView;
                }
                else 
                {
                    return null;
                }
           
        }

        public static async Task<List<InPageAnalyticEntity>> GetInPageAnalyticReport(GAnalyticParam gAnalyticParam, DateTime startDate)
        {

            List<InPageAnalyticEntity> inPageAnalyticList = await InPageAnalyticOverview.GetInPageAnalyticEntityResults(gAnalyticParam, startDate);
                if (inPageAnalyticList != null)
                {
                    return inPageAnalyticList;
                }
                else
                {
                    return null;
                }
          
        }

        public static async Task<List<InPageAnalyticEntity>> GetLandingPageAnalyticReport(GAnalyticParam gAnalyticParam, DateTime startDate)
        {
            List<InPageAnalyticEntity> inPageAnalyticList = await InPageAnalyticOverview.GetLandingPageAnalyticEntityResults(gAnalyticParam, startDate);
            if (inPageAnalyticList != null)
            {
                return inPageAnalyticList;
            }
            else
            {
                return null;
            }
        }
    }
}