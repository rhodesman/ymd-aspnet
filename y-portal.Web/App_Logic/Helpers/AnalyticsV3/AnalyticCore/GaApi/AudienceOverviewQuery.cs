
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
    internal class AudienceOverviewQuery
    {      
        public static async Task<List<AudienceOverviewSessionEntity>> GetAudienceOverviewQueryResults(GAnalyticParam gAnalyticParam, DateTime startDate)
        {
            try
            {              
                string[] dimensions = { "ga:date" };
                string[] metrics = { "ga:sessions" };
                string[] sort = { };
                string[] filter = { };
                string maxresults = "50000";

                var entries = await GoogleAnalyticConnector.GetAnalyticsData(gAnalyticParam, dimensions, metrics, sort, filter, maxresults, startDate, DateTime.Now, 1);

                var dataEntityList = new List<AudienceOverviewSessionEntity>();
                var datetime = "";
                int session = 0;

                for (int row = 0; row < entries.Rows.Count; row++)
                {
                    for (int coulmn = 0; coulmn < entries.ColumnHeaders.Count; coulmn++)
                    {
                        switch (entries.ColumnHeaders[coulmn].Name)
                        {
                            case "ga:date": datetime = Convert.ToString(entries.Rows[row][coulmn]); break;
                            case "ga:sessions": session = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                        }
                    }
                    dataEntityList.Add(new AudienceOverviewSessionEntity(session, DateTime.ParseExact(datetime, "yyyyMMdd", CultureInfo.InvariantCulture, DateTimeStyles.None)));
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