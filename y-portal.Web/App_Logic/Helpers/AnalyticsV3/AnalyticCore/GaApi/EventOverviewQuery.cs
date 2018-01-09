using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.IO;
using System.Text;
using System.Diagnostics;
using System.Xml;
using System.Threading.Tasks;


namespace GAnalytic
{
    internal class EventOverviewQuery
    {      
        public static async Task<List<EventOverviewEntity>> GetEventOverviewQueryResults(GAnalyticParam gAnalyticParam, DateTime startDate)
        {
            try
            {

                string[] dimensions = {"ga:eventCategory","ga:eventLabel","ga:eventAction" };
                string[] metrics = { "ga:totalEvents","ga:uniqueEvents","ga:eventValue","ga:avgEventValue","ga:visitsWithEvent" };
                string[] sort = {"ga:totalEvents" };
                string[] filter = { };
                string maxresults = "50000";
                int startindex = 1;

               var entries = await GoogleAnalyticConnector.GetAnalyticsData(gAnalyticParam, dimensions, metrics, sort, filter, maxresults, startDate, DateTime.Now, startindex);

                var dataEntityList = new List<EventOverviewEntity>();
                string eventCategory=string.Empty, 
                       eventAction=string.Empty,
                       eventLabel=string.Empty , 
                       eventValue=string.Empty ,
                       visitsWithEvent=string.Empty ,
                       avgEventValue=string.Empty ;
                int totalEvents = 0, uniqueEvents = 0;

                for (int row = 0; row < entries.Rows.Count; row++)
                {
                    for (int coulmn = 0; coulmn < entries.ColumnHeaders.Count; coulmn++)
                    {
                        switch (entries.ColumnHeaders[coulmn].Name)
                        {

                            case "ga:eventCategory": eventCategory = Convert.ToString(entries.Rows[row][coulmn]); break;
                            case "ga:eventAction": eventAction = Convert.ToString(entries.Rows[row][coulmn]); break;
                            case "ga:eventLabel": eventLabel = Convert.ToString(entries.Rows[row][coulmn]); break;
                            case "ga:totalEvents": totalEvents = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:uniqueEvents": uniqueEvents = Convert.ToInt32(entries.Rows[row][coulmn]); break;
                            case "ga:eventValue": eventValue = Convert.ToString(entries.Rows[row][coulmn]); break;
                            case "ga:visitsWithEvent": visitsWithEvent = Convert.ToString(entries.Rows[row][coulmn]); break;
                            case "ga:avgEventValue": avgEventValue = Convert.ToString(entries.Rows[row][coulmn]); break;                  
                      
                        }
                    }

                     EventOverviewEntity obj = dataEntityList.SingleOrDefault(c => c.EventLabel == eventLabel);
                       if (obj == null)
                        {                  
                            dataEntityList.Add(new EventOverviewEntity(row + 1, eventCategory, eventAction, eventLabel, totalEvents, uniqueEvents, eventValue, visitsWithEvent, avgEventValue));                     
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