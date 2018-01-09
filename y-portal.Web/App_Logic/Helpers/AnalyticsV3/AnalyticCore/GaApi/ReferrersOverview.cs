
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
    internal class ReferrersOverview
    {
       

        public static async Task<List<ReferralOverviewEntity>> GetReferralOverviewQueryResults(GAnalyticParam gAnalyticParam, DateTime startDate)
        {
            try{
         
            string[] dimensions = { "ga:source" };
            string[] metrics = { "ga:pageviews","ga:sessionDuration","ga:exits" };
            string[] sort = { "-ga:pageviews" };
            string[] filter = { "ga:medium==referral" };
            string maxresults = "50000";
            int startindex = 1;
           
            var entries = await GoogleAnalyticConnector.GetAnalyticsData(gAnalyticParam, dimensions, metrics, sort, filter, maxresults, startDate, DateTime.Now, startindex);

            var dataEntityList = new List<ReferralOverviewEntity>();
     
            string source = string.Empty,
                 pageviews =string.Empty ,
                 sessionDuration=string.Empty ,
                 exits=string.Empty ;

            for (int row = 0; row < entries.Rows.Count; row++)
            {
                for (int coulmn = 0; coulmn < entries.ColumnHeaders.Count; coulmn++)
                {
                    switch (entries.ColumnHeaders[coulmn].Name)
                    {

                        case "ga:source": source = Convert.ToString (entries.Rows[row][coulmn]); break;
                        case "ga:pageviews": pageviews = Convert.ToString(entries.Rows[row][coulmn]); break;
                        case "ga:sessionDuration": sessionDuration = Convert.ToString(entries.Rows[row][coulmn]); break;
                        case "ga:exits": exits = Convert.ToString(entries.Rows[row][coulmn]); break;                           
                    }
                }

                dataEntityList.Add(new ReferralOverviewEntity(source, pageviews, sessionDuration, exits));

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