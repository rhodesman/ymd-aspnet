
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace GAnalytic
{
    internal class InPageAnalyticOverview
    {

        public static async Task<List<InPageAnalyticEntity>> GetInPageAnalyticEntityResults(GAnalyticParam gAnalyticParam, DateTime startDate)
        {
            try
            {
                var dataEntityList = new List<InPageAnalyticEntity>();
                 BuildInPageAnalyticObjectFromGoogleData(gAnalyticParam, dataEntityList, false, "Gurl", startDate);
                 BuildInPageAnalyticObjectFromGoogleData(gAnalyticParam, dataEntityList, true, "Purl", startDate);
                if (dataEntityList.Count > 0)
                {
                    return  dataEntityList;
                }
                else
                    return null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static async Task<List<InPageAnalyticEntity>> GetLandingPageAnalyticEntityResults(GAnalyticParam gAnalyticParam, DateTime startDate)
        {
            try
            {
                var dataEntityList = new List<InPageAnalyticEntity>();

                string[] dimensions = { "ga:pagePath", "ga:pageTitle" };

                string[] metrics = { "ga:pageviews", "ga:uniquePageviews", "ga:avgTimeOnPage", "ga:avgPageLoadTime", "ga:visitBounceRate", "ga:exitRate" };
                string[] sort = { };
                string[] filter = new string[1];
                string maxresults = "50000";
                int startindex = 1;
                filter[0] = "ga:pageTitle==Get More at the Y";

                var entries = await GoogleAnalyticConnector.GetAnalyticsData(gAnalyticParam, dimensions, metrics, sort, filter, maxresults, startDate, DateTime.Now, startindex);

                String pagePath = string.Empty,
                       pageTitle = string.Empty;

                int pageviews = 0, uniquePageviews = 0;
                double avgTimeOnPage = 0, avgPageLoadTime = 0, exitRate = 0, visitBounceRate = 0;
                string region = string.Empty;

                for (int row = 0; row < entries.Rows.Count; row++)
                {
                    for (int coulmn = 0; coulmn < entries.ColumnHeaders.Count; coulmn++)
                    {
                        switch (entries.ColumnHeaders[coulmn].Name)
                        {
                            case "ga:pagePath": pagePath = Convert.ToString(entries.Rows[row][coulmn]); break;
                            case "ga:pageTitle": pageTitle = Convert.ToString(entries.Rows[row][coulmn]); break;

                            case "ga:pageviews": pageviews = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:uniquePageviews": uniquePageviews = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:avgTimeOnPage": avgTimeOnPage = Convert.ToDouble(entries.Rows[row][coulmn]); break;
                            case "ga:avgPageLoadTime": avgPageLoadTime = Convert.ToDouble(entries.Rows[row][coulmn]); break;
                            case "ga:exitRate": exitRate = Convert.ToDouble(entries.Rows[row][coulmn]); break;
                            case "ga:visitBounceRate": visitBounceRate = Convert.ToDouble(entries.Rows[row][coulmn]); break;

                        }
                    }

                    dataEntityList.Add(new InPageAnalyticEntity(pagePath, pageTitle, pageviews, uniquePageviews, avgTimeOnPage, avgPageLoadTime, visitBounceRate, exitRate, string.Empty));
                }

                if (dataEntityList.Count > 0)
                {
                    return dataEntityList;
                }
                else
                    return null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        private static async void BuildInPageAnalyticObjectFromGoogleData(GAnalyticParam gAnalyticParam, List<InPageAnalyticEntity> dataEntityList, bool isPurl, string pageType, DateTime startDate)
        {
            try
            {
                string[] dimensions = { };
                string[] metrics = { "ga:pageviews", "ga:uniquePageviews", "ga:avgTimeOnPage", "ga:avgPageLoadTime", "ga:visitBounceRate", "ga:exitRate" };
                string[] sort = { };
                string[] filter = new string[1];
                string maxresults = "50000";
                int startindex = 1;
                filter[0] = isPurl == true ? "ga:pagePath=~purl*" : "ga:pagePath=~gurl*";

                var entries = await GoogleAnalyticConnector.GetAnalyticsData(gAnalyticParam, dimensions, metrics, sort, filter, maxresults, startDate, DateTime.Now, startindex);

                int pageviews = 0, uniquePageviews = 0;
                double avgTimeOnPage = 0, avgPageLoadTime = 0, exitRate = 0, visitBounceRate = 0;
                string region = string.Empty;

                for (int row = 0; row < entries.Rows.Count; row++)
                {
                    for (int coulmn = 0; coulmn < entries.ColumnHeaders.Count; coulmn++)
                    {
                        switch (entries.ColumnHeaders[coulmn].Name)
                        {

                            case "ga:pageviews": pageviews = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:uniquePageviews": uniquePageviews = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:avgTimeOnPage": avgTimeOnPage = Convert.ToDouble(entries.Rows[row][coulmn]); break;
                            case "ga:avgPageLoadTime": avgPageLoadTime = Convert.ToDouble(entries.Rows[row][coulmn]); break;
                            case "ga:exitRate": exitRate = Convert.ToDouble(entries.Rows[row][coulmn]); break;
                            case "ga:visitBounceRate": visitBounceRate = Convert.ToDouble(entries.Rows[row][coulmn]); break;

                        }
                    }

                    dataEntityList.Add(new InPageAnalyticEntity(pageType, pageviews, uniquePageviews, avgTimeOnPage, avgPageLoadTime, visitBounceRate, exitRate, string.Empty));

                }
            }
            catch (Exception ex) { throw ex; }
              
      


        }
    }
}