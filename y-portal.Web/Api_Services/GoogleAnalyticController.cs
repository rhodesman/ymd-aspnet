


using GAnalytic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;
using YPortal.BusinessEntities;
using YPortal.Helpers;


namespace YPortal.Web.Api_Services
{
    public class GoogleAnalyticController : ApiController
    {
        #region Public Methods

        public async Task<List<GoogleAnalyticsEntity>> GetGoogleAnalytics(bool isCompareExist, string dimensions, DateTime? startDate, DateTime? endDate, DateTime? compareStartDate, DateTime? compareEndDate)
        {
            List<GoogleAnalyticsEntity> totalResult = null;
            try
            {
                var settings = GetDbSetting();

                if (isCompareExist == false)
                {
                    totalResult = await GetGoogleAnalyticsApi(settings, dimensions, startDate, endDate);
                }
                else
                {

                    var tasks = new List<Task>();
                    Task<List<GoogleAnalyticsEntity>> firstResult = null;
                    Task<List<GoogleAnalyticsEntity>> secondResult = null;

                    var originalTask = Task.Factory.StartNew(() => firstResult = GetGoogleAnalyticsApi(settings, dimensions, startDate, endDate))
                                             .ContinueWith(t => secondResult = GetGoogleAnalyticsApi(settings, dimensions, compareStartDate, compareEndDate));
                    tasks.Add(originalTask);
                    Task.WaitAll(tasks.ToArray());

                    List<GoogleAnalyticsEntity> firstQueryData = (List<GoogleAnalyticsEntity>)firstResult.Result;
                    List<GoogleAnalyticsEntity> secondQueryData = (List<GoogleAnalyticsEntity>)secondResult.Result;


                    var query = from x in firstQueryData
                                join y in secondQueryData
                                on x.Dimension equals y.Dimension into leftjoinData
                                from y in leftjoinData.DefaultIfEmpty()
                                select new { x, y };



                    List<GoogleAnalyticsEntity> results = new List<GoogleAnalyticsEntity>();

                    foreach (var match in query)
                    {
                        GoogleAnalyticsEntity headerItem = new GoogleAnalyticsEntity(match.x.Dimension, null, null, null, null, null, null);
                        results.Add(headerItem);

                        GoogleAnalyticsEntity firstItem = new GoogleAnalyticsEntity(null, match.x.Sessions, match.x.PNewSession, match.x.NewUsers, match.x.BounceRate, match.x.PagesPerSession, match.x.AvgSessionDuration);
                        firstItem.Dimension = FormatDateTime(startDate) + " - " + FormatDateTime(endDate);
                        results.Add(firstItem);

                        if (match.y != null)
                        {
                            GoogleAnalyticsEntity secondItem = new GoogleAnalyticsEntity(null, match.y.Sessions, match.y.PNewSession, match.y.NewUsers, match.y.BounceRate, match.y.PagesPerSession, match.y.AvgSessionDuration);
                            secondItem.Dimension = FormatDateTime(compareStartDate) + " - " + FormatDateTime(compareEndDate);
                            results.Add(secondItem);
                        }
                        else
                        {
                            GoogleAnalyticsEntity secondItem = new GoogleAnalyticsEntity(null, 0, 0, 0, 0, 0, 0);
                            secondItem.Dimension = FormatDateTime(compareStartDate) + " - " + FormatDateTime(compareEndDate);
                            results.Add(secondItem);
                        }

                    }

                    totalResult = results;
                }
            }
            catch (Exception ex)
            {
                string message = (ex.Message.Contains("Value cannot be null.") == true) ? "Data not found on certain date range." : "Something went wrong. Please try again.";

                var resp = new HttpResponseMessage(HttpStatusCode.NotFound)
                {
                    Content = new StringContent(message),
                    ReasonPhrase = message
                };
                throw new HttpResponseException(resp);
            }

            return totalResult;
        }

        public async Task<List<VisitorsOverviewQueryEntity>> GetGAOverview(bool isCompareExist, DateTime? startDate, DateTime? endDate, DateTime? compareStartDate, DateTime? compareEndDate)
        {
            List<VisitorsOverviewQueryEntity> totalResult = null;
            try
            {
                var settings = GetDbSetting();

                if (isCompareExist == false)
                {
                    totalResult = await GetGAOverviewApi(settings, startDate, endDate);
                }
                else
                {

                    var tasks = new List<Task>();
                    Task<List<VisitorsOverviewQueryEntity>> firstResult = null;
                    Task<List<VisitorsOverviewQueryEntity>> secondResult = null;

                    var originalTask = Task.Factory.StartNew(() => firstResult = GetGAOverviewApi(settings, startDate, endDate))
                                             .ContinueWith(t => secondResult = GetGAOverviewApi(settings, compareStartDate, compareEndDate));
                    tasks.Add(originalTask);
                    Task.WaitAll(tasks.ToArray());

                    List<VisitorsOverviewQueryEntity> firstQueryData = (List<VisitorsOverviewQueryEntity>)firstResult.Result;
                    List<VisitorsOverviewQueryEntity> secondQueryData = (List<VisitorsOverviewQueryEntity>)secondResult.Result;

                    totalResult = firstQueryData.Concat(secondQueryData).ToList();
                }
            }
            catch (Exception ex)
            {
                string message = string.Empty;
                message = "Data not found on certain date range.";
                var resp = new HttpResponseMessage(HttpStatusCode.NotFound)
                 {
                     Content = new StringContent(message),
                     ReasonPhrase = message
                 };
                throw new HttpResponseException(resp);
            }

            return totalResult;

        }

        public async Task<List<ContentOverviewEntity>> GetTopVisitedPageOverview(int numberOfData, bool isCompareExist, DateTime? startDate, DateTime? endDate, DateTime? compareStartDate, DateTime? compareEndDate)
        {
            List<ContentOverviewEntity> totalResult = null;
            try
            {
                var settings = GetDbSetting();

                if (isCompareExist == false)
                {
                    totalResult = await GetTopVisitedPageOverviewFromApi(settings, numberOfData, startDate, endDate);
                }
                else
                {

                    var tasks = new List<Task>();
                    Task<List<ContentOverviewEntity>> firstResult = null;
                    Task<List<ContentOverviewEntity>> secondResult = null;

                    var originalTask = Task.Factory.StartNew(() => firstResult = GetTopVisitedPageOverviewFromApi(settings, numberOfData, startDate, endDate))
                                             .ContinueWith(t => secondResult = GetTopVisitedPageOverviewFromApi(settings, numberOfData, compareStartDate, compareEndDate));
                    tasks.Add(originalTask);
                    Task.WaitAll(tasks.ToArray());

                    List<ContentOverviewEntity> firstQueryData = (List<ContentOverviewEntity>)firstResult.Result;
                    List<ContentOverviewEntity> secondQueryData = (List<ContentOverviewEntity>)secondResult.Result;


                    var query = from x in firstQueryData
                                join y in secondQueryData
                                on x.PagePath equals y.PagePath into leftjoinData
                                from y in leftjoinData.DefaultIfEmpty()
                                select new { x, y };


                    List<ContentOverviewEntity> results = new List<ContentOverviewEntity>();

                    foreach (var match in query)
                    {
                        ContentOverviewEntity headerItem = new ContentOverviewEntity(null, null, string.Empty, string.Empty, null, null, null, string.Empty, null, null, string.Empty);
                        headerItem.PagePath = match.x.PagePath;
                        headerItem.Rank = match.x.Rank;
                        results.Add(headerItem);

                        ContentOverviewEntity firstItem = new ContentOverviewEntity(null, match.x.Date, match.x.PagePath, match.x.PageTitle, match.x.PageViews, match.x.Visits, match.x.UniquePageViews, match.x.AvgTimeOnPage, match.x.Entrances, match.x.Bounce, match.x.ExitRate);
                        firstItem.PagePath = FormatDateTime(startDate) + " - " + FormatDateTime(endDate);
                        firstItem.PageViewsPercentage = match.x.PageViewsPercentage;
                        results.Add(firstItem);

                        if (match.y != null)
                        {
                            ContentOverviewEntity secondItem = new ContentOverviewEntity(null, match.y.Date, match.y.PagePath, match.y.PageTitle, match.y.PageViews, match.y.Visits, match.y.UniquePageViews, match.y.AvgTimeOnPage, match.y.Entrances, match.y.Bounce, match.y.ExitRate);
                            secondItem.PagePath = FormatDateTime(compareStartDate) + " - " + FormatDateTime(compareEndDate);
                            secondItem.PageViewsPercentage = match.y.PageViewsPercentage;
                            results.Add(secondItem);
                        }
                        else
                        {
                            ContentOverviewEntity secondItem = new ContentOverviewEntity(null, null, null, null, 0, 0, 0, null, 0, 0, null);
                            secondItem.PagePath = FormatDateTime(compareStartDate) + " - " + FormatDateTime(compareEndDate);
                            secondItem.PageViewsPercentage = 0;
                            results.Add(secondItem);
                        }


                    }

                    totalResult = results;
                }



            }
            catch (Exception ex)
            {
                string message = (ex.Message.Contains("Value cannot be null.") == true) ? "Data not found on certain date range." : "Something went wrong. Please try again.";

                var resp = new HttpResponseMessage(HttpStatusCode.NotFound)
                      {
                          Content = new StringContent(message),
                          ReasonPhrase = message
                      };
                throw new HttpResponseException(resp);
            }

            return totalResult;
        }

        public async Task<List<InPageAnalyticEntity>> GetLandingPageOverviewApi()
        {
            List<InPageAnalyticEntity> totalResult = null;
            try
            {
                var settings = GetDbSetting();
                totalResult = await GetLandingPageOverviewApi(settings);
            }
            catch (Exception ex)
            {
                string message = (ex.Message.Contains("Value cannot be null.") == true) ? "Data not found on certain date range." : "Something went wrong. Please try again.";

                var resp = new HttpResponseMessage(HttpStatusCode.NotFound)
                      {
                          Content = new StringContent(message),
                          ReasonPhrase = message
                      };
                throw new HttpResponseException(resp);
            }

            return totalResult;
        }

        #endregion


        #region PrivateMethod

        private GASetting GetDbSetting()
        {
            try
            {
                var dbAppSettings = (GASetting)MemoryCacher.GetValue("DbSetting");

                if (dbAppSettings == null)
                {
                    var campaignDbSetting = new GACampaignSetting();
                    dbAppSettings = new GASetting()
                    {
                        AnalyticCertificate = campaignDbSetting.AnalyticCertificate,
                        AnalyticEmail = campaignDbSetting.AnalyticEmail,
                        AnalyticProfileId = campaignDbSetting.AnalyticProfileId,
                        AnalyticProfileName = campaignDbSetting.AnalyticProfileName,
                        AnalyticProjectStartDate = campaignDbSetting.AnalyticProjectStartDate
                    };

                    MemoryCacher.Add("DbSetting", dbAppSettings, DateTimeOffset.UtcNow.AddHours(1));

                    return dbAppSettings;
                }
                else
                {
                    return dbAppSettings;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private async Task<List<GoogleAnalyticsEntity>> GetGoogleAnalyticsApi(GASetting settings, string dimensions, DateTime? startDate, DateTime? endDate)
        {
            try
            {
                var obj = await new GAnalyticsRepository().GetGoogleAnalyticsData(dimensions, settings, startDate, endDate);
                return obj;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private async Task<List<VisitorsOverviewQueryEntity>> GetGAOverviewApi(GASetting settings, DateTime? startDate, DateTime? endDate)
        {
            try
            {

                var obj = await new GAnalyticsRepository().GetSiteReport(settings, startDate, endDate);
                List<VisitorsOverviewQueryEntity> list = new List<VisitorsOverviewQueryEntity>();
                obj.DateRange = FormatDateTime(startDate) + " - " + FormatDateTime(endDate);
                list.Add(obj);
                return list;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private async Task<List<ContentOverviewEntity>> GetTopVisitedPageOverviewFromApi(GASetting settings, int numberOfData, DateTime? startDate, DateTime? endDate)
        {
            try
            {

                var obj = await new GAnalyticsRepository().GetTopVisitedPageData(settings, numberOfData, startDate, endDate);
                return obj;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private async Task<List<InPageAnalyticEntity>> GetLandingPageOverviewApi(GASetting settings)
        {
            try
            {

                var obj = await new GAnalyticsRepository().GetLandingPageAnalyticReport(settings);
                return obj;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private string FormatDateTime(DateTime? date)
        {
            if (date != null)
            {
                string str = String.Format("{0:d, MMM d, yyyy}", date);
                String[] strArr = str.Split(' ');
                str = strArr[1] + " " + strArr[2] + " " + strArr[3];
                return str;
            }
            else
            {
                return string.Empty;
            }
        }

        #endregion
    }
}