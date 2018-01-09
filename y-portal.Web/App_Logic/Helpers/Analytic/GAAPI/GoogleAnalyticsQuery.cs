using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Net;
using System.Text;
using System.Xml;

namespace GAnalytic
{
    public class GoogleAnalyticsQuery
    {
        private const String FeedUrl = "https://www.googleapis.com/analytics/v2.4/data?ids=ga:{0}&dimensions=ga:{3}&metrics=ga:sessions,ga:percentNewSessions,ga:newUsers,ga:bounceRate,ga:pageviewsPerSession,ga:avgSessionDuration&filters=ga:country==United States&sort=ga:{3}&start-date={1}&end-date={2}&start-index=1&max-results=50000";

       
        public static List<GoogleAnalyticsEntity> GetGEOLocationQueryResults(string dimensions, GAnalyticParam gAnalyticParam, DateTime startDate,DateTime? endDate)
        {
            try
            {
                String requestUrl = String.Format(FeedUrl, new object[] { gAnalyticParam.ProfileId, startDate.ToString("yyyy-MM-dd"), endDate == null ? DateTime.Now.Date.ToString("yyyy-MM-dd") : Convert.ToDateTime(endDate).ToString("yyyy-MM-dd"), dimensions });

                var myRequest = (HttpWebRequest)WebRequest.Create(requestUrl);
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

                var lstGEOLocationEntity = new List<GoogleAnalyticsEntity>();

                for (int i = 0; i < entries.Count; i++)
                {

                    XmlNode noderegion = entries[i].SelectSingleNode("dxp:dimension[@name='ga:" + dimensions + "']", nsmgr);
                    XmlNode nodesessions = entries[i].SelectSingleNode("dxp:metric[@name='ga:sessions']", nsmgr);                 
                    XmlNode nodepercentNewSessions = entries[i].SelectSingleNode("dxp:metric[@name='ga:percentNewSessions']", nsmgr);
                    XmlNode nodenewUsers = entries[i].SelectSingleNode("dxp:metric[@name='ga:newUsers']", nsmgr);
                    XmlNode nodebounceRate = entries[i].SelectSingleNode("dxp:metric[@name='ga:bounceRate']", nsmgr);
                    XmlNode nodepageviewsPerSession = entries[i].SelectSingleNode("dxp:metric[@name='ga:pageviewsPerSession']", nsmgr);
                    XmlNode nodeavgSessionDuration = entries[i].SelectSingleNode("dxp:metric[@name='ga:avgSessionDuration']", nsmgr);
                    if (noderegion.Attributes["value"].Value != "(not set)")
                    {

                        lstGEOLocationEntity.Add(new GoogleAnalyticsEntity(noderegion.Attributes["value"].Value, double.Parse(nodesessions.Attributes["value"].Value), double.Parse(nodepercentNewSessions.Attributes["value"].Value),
                           double.Parse(nodenewUsers.Attributes["value"].Value), double.Parse(nodebounceRate.Attributes["value"].Value), double.Parse(nodepageviewsPerSession.Attributes["value"].Value), double.Parse(nodeavgSessionDuration.Attributes["value"].Value)));
                    }
                    else
                    { 
                    //
                    }
                }

                if (lstGEOLocationEntity.Count > 0)
                    return lstGEOLocationEntity;
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