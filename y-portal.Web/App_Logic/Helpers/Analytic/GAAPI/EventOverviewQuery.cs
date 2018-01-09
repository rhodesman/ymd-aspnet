using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.IO;
using System.Text;
using System.Diagnostics;
using System.Xml;

namespace GAnalytic
{
    internal class EventOverviewQuery
    {
        private const String FeedUrl = "https://www.googleapis.com/analytics/v2.4/data?ids=ga:{0}&dimensions=ga:eventCategory,ga:eventLabel,ga:eventAction&metrics=ga:totalEvents,ga:uniqueEvents,ga:eventValue,ga:avgEventValue,ga:visitsWithEvent&sort=ga:totalEvents&start-date={1}&end-date={2}&start-index=1&max-results=50000";
        public static List<EventOverviewEntity> GetEventOverviewQueryResults(GAnalyticParam gAnalyticParam, DateTime startDate)
        {
            try
            {
                String RequestUrl = String.Format(FeedUrl, new object[] { gAnalyticParam.ProfileId });

                var myRequest = (HttpWebRequest)WebRequest.Create(RequestUrl);
                myRequest.Headers.Add("Authorization: GoogleLogin auth=" + gAnalyticParam.Token);

                var myResponse = (HttpWebResponse)myRequest.GetResponse();
                Stream responseBody = myResponse.GetResponseStream();

                Encoding encode = System.Text.Encoding.GetEncoding("utf-8");
                var readStream = new StreamReader(responseBody, encode);

                var resultsXml = new XmlDocument(); resultsXml.LoadXml(readStream.ReadToEnd());
                Debug.WriteLine(resultsXml);

                var nsmgr = new XmlNamespaceManager(resultsXml.NameTable);
                nsmgr.AddNamespace("dxp", "http://schemas.google.com/analytics/2009");

                XmlNodeList entries = resultsXml.GetElementsByTagName("entry");

                var lstEventOverviewEntity = new List<EventOverviewEntity>();

                for (int i = 0; i < entries.Count; i++)
                {
                    XmlNode eventCategory = entries[i].SelectSingleNode("dxp:dimension[@name='ga:eventCategory']", nsmgr);
                    XmlNode eventAction = entries[i].SelectSingleNode("dxp:dimension[@name='ga:eventAction']", nsmgr);
                    XmlNode eventLabel = entries[i].SelectSingleNode("dxp:dimension[@name='ga:eventLabel']", nsmgr);
                    XmlNode totalEvents = entries[i].SelectSingleNode("dxp:metric[@name='ga:totalEvents']", nsmgr);
                    XmlNode uniqueEvents = entries[i].SelectSingleNode("dxp:metric[@name='ga:uniqueEvents']", nsmgr);
                    XmlNode eventValue = entries[i].SelectSingleNode("dxp:metric[@name='ga:eventValue']", nsmgr);
                    XmlNode visitsWithEvent = entries[i].SelectSingleNode("dxp:metric[@name='ga:visitsWithEvent']", nsmgr);
                    XmlNode avgEventValue = entries[i].SelectSingleNode("dxp:metric[@name='ga:avgEventValue']", nsmgr);

                    EventOverviewEntity obj = lstEventOverviewEntity.SingleOrDefault(c => c.EventLabel == eventLabel.Attributes["value"].Value);

                    if (obj == null)
                    {
                        lstEventOverviewEntity.Add(new EventOverviewEntity(i + 1, eventCategory.Attributes["value"].Value, eventAction.Attributes["value"].Value, eventLabel.Attributes["value"].Value, Convert.ToInt32(totalEvents.Attributes["value"].Value), Convert.ToInt32(uniqueEvents.Attributes["value"].Value),
                            eventValue.Attributes["value"].Value, visitsWithEvent.Attributes["value"].Value, avgEventValue.Attributes["value"].Value));
                    }
                }

                if (lstEventOverviewEntity.Count > 0)
                    return lstEventOverviewEntity;
                else
                    return null;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}