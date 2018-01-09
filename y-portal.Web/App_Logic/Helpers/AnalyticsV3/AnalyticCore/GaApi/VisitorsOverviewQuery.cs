using System;
using System.Collections.Generic;
using System.Net;
using System.IO;
using System.Text;
using System.Xml;
using System.Diagnostics;
using System.Threading.Tasks;


namespace GAnalytic
{
    internal class VisitorsOverviewQuery
    {
       
        public static async Task<VisitorsOverviewQueryEntity> GetVisitorsOverviewQueryResults(GAnalyticParam gAnalyticParam, DateTime startDate, DateTime? endDate)
        {

            try
            {           
                string[] dimensions = { };
                string[] metrics = { "ga:pageviews","ga:newVisits","ga:bounceRate","ga:avgTimeOnSite","ga:sessions","ga:users","ga:pageviewsPerSession","ga:avgSessionDuration","ga:percentNewSessions","ga:percentNewVisits" };
                string[] sort = {  };
                string[] filter = {  };
                string maxresults = "50000";
                int startindex = 1;

                var entries = await GoogleAnalyticConnector.GetAnalyticsData(gAnalyticParam, dimensions, metrics, sort, filter, maxresults, startDate, endDate, startindex);

                var dataEntityList = new List<VisitorsOverviewQueryEntity>();
                int pageviews = 0, users = 0, sessions = 0;
                double avgTimeOnSite=0,pageviewsPerSession=0,avgSessionDuration=0,percentNewSessions=0,percentNewVisits=0,bounceRate=0;

               

                for (int row = 0; row < entries.Rows.Count; row++)
                {
                    for (int coulmn = 0; coulmn < entries.ColumnHeaders.Count; coulmn++)
                    {
                        switch (entries.ColumnHeaders[coulmn].Name)
                        {                           
                            case "ga:pageviews": pageviews = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:avgTimeOnSite": avgTimeOnSite = Convert.ToDouble(entries.Rows[row][coulmn]); break;
                            case "ga:sessions": sessions = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:users": users = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:pageviewsPerSession": pageviewsPerSession = Convert.ToDouble (entries.Rows[row][coulmn]); break;
                            case "ga:avgSessionDuration": avgSessionDuration = Convert.ToDouble(entries.Rows[row][coulmn]); break;
                            case "ga:percentNewSessions": percentNewSessions = Convert.ToDouble(entries.Rows[row][coulmn]); break;
                            case "ga:percentNewVisits": percentNewVisits = Convert.ToDouble(entries.Rows[row][coulmn]); break;
                            case "ga:bounceRate": bounceRate = Convert.ToDouble(entries.Rows[row][coulmn]); break;
                          
                        }
                    }

                    dataEntityList.Add(new VisitorsOverviewQueryEntity()
                    {
                        Sessions = sessions,
                        Users = users,
                        PagePerSessions = pageviewsPerSession,
                        AvgSessionDuration = avgSessionDuration,
                        PNewSessions = percentNewSessions,
                        PNewVisitor = percentNewVisits,
                        PReturningVisitor = 100 - percentNewVisits,
                        bounceRate = bounceRate,
                        Pageviews = pageviews
                    });
                      

                }
                if (dataEntityList.Count > 0)
                    return dataEntityList[0];
                else
                    return null;
            }
            catch (Exception ex)
            {
                throw ex;
            }



        }
    }
}