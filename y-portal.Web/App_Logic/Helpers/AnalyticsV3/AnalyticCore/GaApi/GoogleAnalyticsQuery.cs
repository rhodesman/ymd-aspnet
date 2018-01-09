
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace GAnalytic
{
    internal class GoogleAnalyticsQuery
    {

        public static async Task<List<GoogleAnalyticsEntity>> GetGEOLocationQueryResults(string dimensions, GAnalyticParam gAnalyticParam, DateTime startDate, DateTime? endDate)
        {
            try
            {              
                string[] dimensionArr = { "ga:" + dimensions };
                string[] metrics = { "ga:sessions", "ga:percentNewSessions", "ga:newUsers", "ga:bounceRate", "ga:pageviewsPerSession", "ga:avgSessionDuration" };
                string[] sort = { "ga:" + dimensions };
                string[] filter = { "ga:country==United States" };
                //string[] filter = {  };
                string maxresults = "50000";
                int startindex = 1;

                var entries = await GoogleAnalyticConnector.GetAnalyticsData(gAnalyticParam, dimensionArr, metrics, sort, filter, maxresults, startDate, endDate, startindex);
                var dataEntityList = new List<GoogleAnalyticsEntity>();
                double sessions = 0, percentNewSessions = 0, newUsers = 0, bounceRate = 0, pageviewsPerSession = 0, avgSessionDuration = 0;
                string region = string.Empty;

                for (int row = 0; row < entries.Rows.Count; row++)
                {
                    for (int coulmn = 0; coulmn < entries.ColumnHeaders.Count; coulmn++)
                    {
                        switch (entries.ColumnHeaders[coulmn].Name)
                        {
                            case "ga:sessions": sessions = Convert.ToDouble(entries.Rows[row][coulmn]); break;
                            case "ga:percentNewSessions": percentNewSessions = Convert.ToDouble(entries.Rows[row][coulmn]); break;
                            case "ga:newUsers": newUsers = Convert.ToDouble(entries.Rows[row][coulmn]); break;
                            case "ga:bounceRate": bounceRate = Convert.ToDouble(entries.Rows[row][coulmn]); break;
                            case "ga:pageviewsPerSession": pageviewsPerSession = Convert.ToDouble(entries.Rows[row][coulmn]); break;
                            case "ga:avgSessionDuration": avgSessionDuration = Convert.ToDouble(entries.Rows[row][coulmn]); break;
                            default: region = entries.ColumnHeaders[coulmn].Name == "ga:" + dimensions ? Convert.ToString(entries.Rows[row][coulmn]) : string.Empty; break;
                        }
                    }


                    if (region != "(not set)")
                    {
                        dataEntityList.Add(new GoogleAnalyticsEntity(region, sessions, percentNewSessions, newUsers, bounceRate, pageviewsPerSession, avgSessionDuration));
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
    }
}