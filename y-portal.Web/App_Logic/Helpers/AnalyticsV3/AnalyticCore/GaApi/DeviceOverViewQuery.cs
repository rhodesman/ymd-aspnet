
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
    internal class DeviceOverViewQuery
    {
      
        public static async Task<List<OverViewEntity>> GetDeviceOverviewQueryResults(GAnalyticParam gAnalyticParam, DateTime startDate)
        {

         try
           {
             var deviceParameter =  "ga:" + gAnalyticParam.Device; 
            string[] dimensions =  new string[1];
            dimensions[0] = gAnalyticParam.Device;
            string[] metrics = { "ga:visits","ga:visitors","ga:pageviews","ga:newVisits","ga:bounces","ga:avgTimeOnSite" };
            string[] sort = {  };
            string[] filter = { };
            string maxresults = "50000";
            int startindex = 1;

            var entries = await GoogleAnalyticConnector.GetAnalyticsData(gAnalyticParam, dimensions, metrics, sort, filter, maxresults, startDate, DateTime.Now, startindex);

            var dataEntityList = new List<OverViewEntity>();
            Int32 pageViews = 0, visits = 0, uniqueVisit = 0, newVisit = 0;
            double bounce = 0, avgTimeOnSite=0;
          
        
             
            for (int row = 0; row < entries.Rows.Count; row++)
            {
                for (int coulmn = 0; coulmn < entries.ColumnHeaders.Count; coulmn++)
                {
                    switch (entries.ColumnHeaders[coulmn].Name)
                    {                     
                        case "ga:pageviews": pageViews = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                        case "ga:visits": visits = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                        case "ga:newVisits": newVisit = Convert.ToInt32(entries.Rows[row][coulmn]); break;                      
                        case "ga:visitors": uniqueVisit = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                        case "ga:bounces": bounce = Convert.ToDouble(entries.Rows[row][coulmn]); break;
                         case "ga:avgTimeOnPage": avgTimeOnSite = Convert.ToDouble(entries.Rows[row][coulmn]); break;

                    }
                }

                dataEntityList.Add(new OverViewEntity(gAnalyticParam.Device, visits, pageViews, newVisit, uniqueVisit, bounce, avgTimeOnSite));          
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