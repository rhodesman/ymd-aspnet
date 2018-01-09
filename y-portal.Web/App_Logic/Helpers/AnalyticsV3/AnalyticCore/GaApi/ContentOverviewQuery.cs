using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.IO;
using System.Text;
using System.Xml;
using System.Diagnostics;
using System.Globalization;
using System.Xml.Linq;
using System.Threading.Tasks;


namespace GAnalytic
{
    internal class ContentOverviewQuery
    {
        public static async Task<List<ContentOverviewEntity>> GetContentOverviewQueryResults(GAnalyticParam gAnalyticParam, DateTime startDate,DateTime? endDate)
        {
            try
            {

             
                string[] dimensions = { "ga:pagePath", "ga:pageTitle" };
                string[] metrics = { "ga:pageviews", "ga:visits", "ga:uniquepageviews", "ga:avgTimeOnPage", "ga:entrances", "ga:bounces", "ga:exitRate" };
                string[] sort = { "ga:pageviews" };
                string[] filter = { };
                string maxresults = "50000";
                int startindex = 1;

               var entries = await GoogleAnalyticConnector.GetAnalyticsData(gAnalyticParam, dimensions, metrics, sort, filter, maxresults, startDate, endDate, startindex);
               var dataEntityList = new List<ContentOverviewEntity>();

                Int32 pageViews = 0, visits = 0, uniquePageViews = 0, entrances = 0, bounce = 0;
                String pagePath = string.Empty,
                       pageTitle = string.Empty,
                       avgTimeOnPage = string.Empty,
                       exitRate = string.Empty;

                for (int row = 0; row < entries.Rows.Count; row++)
                {
                    for (int coulmn = 0; coulmn < entries.ColumnHeaders.Count; coulmn++)
                    {
                        switch (entries.ColumnHeaders[coulmn].Name)
                        {
                            case "ga:pagePath": pagePath = Convert.ToString(entries.Rows[row][coulmn]); break;
                            case "ga:pageTitle": pageTitle = Convert.ToString(entries.Rows[row][coulmn]); break;
                            case "ga:pageviews": pageViews = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:visits": visits = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:uniquepageviews": uniquePageViews = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:avgTimeOnPage": avgTimeOnPage = Convert.ToString(entries.Rows[row][coulmn]); break;                          
                            case "ga:entrances": entrances = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:bounces": bounce = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:exitRate": exitRate = Convert.ToString(entries.Rows[row][coulmn]); break;
                        }
                    }

                    ContentOverviewEntity obj = dataEntityList.SingleOrDefault(c => c.PagePath == pagePath);

                    if (obj == null)
                    {
                        if (!pagePath.ToLower().Contains("admin"))
                        {
                            dataEntityList.Add(new ContentOverviewEntity(row + 1, DateTime.Now,
                                                                                    pagePath,
                                                                                    pageTitle,
                                                                                    pageViews,
                                                                                    visits,
                                                                                    uniquePageViews,
                                                                                    avgTimeOnPage,
                                                                                    entrances,
                                                                                    bounce,
                                                                                    exitRate));

                        }
                    }
                    else
                    {
                        if (!pagePath.Contains("admin"))
                        {
                            obj.AddCountToPageView(Convert.ToInt32(pageViews));
                        }
                    }
                }


                if (dataEntityList.Count > 0)
                    return dataEntityList;
                else
                    return null;


     
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static async Task<List<ContentOverviewEntity>> GetContentOverviewQueryResultsLineChart(GAnalyticParam gAnalyticParam , DateTime startDate)
        {
            try
            {
             
                string[] dimensions = { "ga:date" };
                string[] metrics = { "ga:pageviews","ga:visits","ga:uniquepageviews","ga:avgTimeOnPage","ga:entrances","ga:bounces","ga:exitRate" };
                string[] sort = { "-ga:pageviews"};
                string[] filter = { };
                string maxresults = "50000";
                int startindex = 1;

                var entries = await GoogleAnalyticConnector.GetAnalyticsData(gAnalyticParam, dimensions, metrics, sort, filter, maxresults, startDate, DateTime.Now, startindex);

                var dataEntityList = new List<ContentOverviewEntity>();

                Int32  pageViews = 0, visits = 0, uniquePageViews = 0, entrances = 0, bounce = 0;
                String pagePath = string.Empty,
                       pageTitle = string.Empty,
                       avgTimeOnPage = string.Empty,
                       exitRate = string.Empty,
                       dateString=string.Empty;
                         
                for (int row = 0; row < entries.Rows.Count; row++)
                {
                    for (int coulmn = 0; coulmn < entries.ColumnHeaders.Count; coulmn++)
                    {
                        switch (entries.ColumnHeaders[coulmn].Name)
                        {
                            case "ga:date": dateString = Convert.ToString(entries.Rows[row][coulmn]); break;
                            case "ga:pageviews": pageViews = Convert.ToInt32(entries.Rows[row][coulmn]);  break;
                            case "ga:visits": visits = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:uniquepageviews": uniquePageViews = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:avgTimeOnPage": avgTimeOnPage = Convert.ToString(entries.Rows[row][coulmn]); break;
                            case "ga:entrances": entrances = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:bounces": bounce = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:exitRate": exitRate = Convert.ToString(entries.Rows[row][coulmn]); break;                        
                        }
                    }

                    ContentOverviewEntity obj = dataEntityList.SingleOrDefault(c => c.PagePath == pagePath);

                    if (obj == null)
                    {
                        
                            dataEntityList.Add(new ContentOverviewEntity(row + 1, Convert.ToDateTime(DateTime.ParseExact(dateString, "yyyyMMdd", CultureInfo.InvariantCulture,DateTimeStyles.None)).Date,
                                                                                    pagePath,
                                                                                    pageTitle,
                                                                                    pageViews,
                                                                                    visits,
                                                                                    uniquePageViews,
                                                                                    avgTimeOnPage,
                                                                                    entrances,
                                                                                    bounce,
                                                                                    exitRate));

                       
                    }
                    else
                    {
                        
                            obj.AddCountToPageView(Convert.ToInt32(pageViews));
                        
                    }
                
                }


                if (dataEntityList.Count > 0)
                    return dataEntityList;
                else
                    return null;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static async Task<List<ContentOverviewEntity>> GetContentOverviewQueryResultsForTopPages(GAnalyticParam gAnalyticParam,int numberOfData, DateTime startDate, DateTime? endDate)
        {
            try
            {
            
                string[] dimensions = { "ga:pagePath", "ga:pageTitle" };
                string[] metrics = { "ga:pageviews", "ga:visits", "ga:uniquepageviews", "ga:avgTimeOnPage", "ga:timeOnPage", "ga:exits", "ga:entrances", "ga:bounces", "ga:exitRate" };
                string[] sort = { "-ga:pageviews" };
                string[] filter = { };
                string maxresults = "50000";
                int startindex = 1;

                var entries = await GoogleAnalyticConnector.GetAnalyticsData(gAnalyticParam, dimensions, metrics, sort, filter, maxresults, startDate, endDate, startindex);

                var dataEntityList = new List<ContentOverviewEntity>();

                Int32  pageViews = 0, visits = 0, uniquePageViews = 0, entrances = 0, bounce = 0;
                String pagePath = string.Empty,
                       pageTitle = string.Empty,
                       avgTimeOnPage = string.Empty,
                       exitRate = string.Empty;


                int totalPageViews = 0, index = 0;
                for (int row = 0; row < entries.Rows.Count; row++)
                {
                    for (int coulmn = 0; coulmn < entries.ColumnHeaders.Count; coulmn++)
                    {
                        switch (entries.ColumnHeaders[coulmn].Name)
                        {
                            case "ga:pagePath": pagePath = Convert.ToString(entries.Rows[row][coulmn]); break;
                            case "ga:pageTitle": pageTitle = Convert.ToString(entries.Rows[row][coulmn]); break;
                            case "ga:pageviews": pageViews = Convert.ToInt32(entries.Rows[row][coulmn]); totalPageViews += pageViews; break;
                            case "ga:visits": visits = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:uniquepageviews": uniquePageViews = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:avgTimeOnPage": avgTimeOnPage = Convert.ToString(entries.Rows[row][coulmn]); break;                         
                            case "ga:entrances": entrances = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:bounces": bounce = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:exitRate": exitRate = Convert.ToString(entries.Rows[row][coulmn]); break;
                        }
                    }
                     ContentOverviewEntity obj = dataEntityList.SingleOrDefault(c => c.PagePath == pagePath);

                     if (obj == null)
                     {
                         if (!pagePath.ToLower().Contains("admin"))
                         {
                             index = index + 1;
                             dataEntityList.Add(new ContentOverviewEntity(index, DateTime.Now,
                                                                                     pagePath,
                                                                                     pageTitle,
                                                                                     pageViews,
                                                                                     visits,
                                                                                     uniquePageViews,
                                                                                     avgTimeOnPage,
                                                                                     entrances,
                                                                                     bounce,
                                                                                     exitRate));

                         }
                     }
                     else
                     {
                         if (!pagePath.Contains("admin"))
                         {
                             obj.AddCountToPageView(Convert.ToInt32(pageViews));
                         }
                     }
                }


                for (int row = 0; row < numberOfData; row++)
                {
               
                    dataEntityList[row].PageViewsPercentage =((decimal)(dataEntityList[row].PageViews??0) * 100) / totalPageViews;
                }


                if (dataEntityList.Count > 0)
                {
                    var returnedData = dataEntityList.Take(numberOfData);
                    return returnedData.ToList();
                }
                else
                    return  null;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


    
    }
}