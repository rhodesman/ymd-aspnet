using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Text;
using System.Xml;

namespace GAnalytic
{
    public class DeviceOverViewQuery
    {
        private const String FeedUrl = "https://www.googleapis.com/analytics/v2.4/data?ids=ga:{0}&dimensions={1}&metrics=ga:visits,ga:visitors,ga:pageviews,ga:newVisits,ga:bounces,ga:avgTimeOnSite&start-date={2}&end-date={3}&start-index=1&max-results=50000";

        public static List<OverViewEntity> GetDeviceOverviewQueryResults(GAnalyticParam gAnalyticParam, DateTime startDate)
        {
            try
            {
                String requestUrl = String.Format(FeedUrl, new object[] { gAnalyticParam.ProfileId, gAnalyticParam.Device, startDate.ToString("yyyy-MM-dd"), DateTime.Now.Date.ToString("yyyy-MM-dd") });

                var myRequest = (HttpWebRequest)WebRequest.Create(requestUrl);
                myRequest.Headers.Add("Authorization: GoogleLogin auth=" + gAnalyticParam.Token);

                var myResponse = (HttpWebResponse)myRequest.GetResponse();
                Stream responseBody = myResponse.GetResponseStream();

                Encoding encode = Encoding.GetEncoding("utf-8");
                var readStream = new StreamReader(responseBody, encode);

                var resultsXML = new XmlDocument(); resultsXML.LoadXml(readStream.ReadToEnd());
                Debug.WriteLine(resultsXML);

                var nsmgr = new XmlNamespaceManager(resultsXML.NameTable);
                nsmgr.AddNamespace("dxp", "http://schemas.google.com/analytics/2009");

                XmlNodeList entries = resultsXML.GetElementsByTagName("entry");

                var lstMobileOverViewEntity = new List<OverViewEntity>();

                for (int i = 0; i < entries.Count; i++)
                {
                    XmlNode device = entries[i].SelectSingleNode("dxp:dimension[@name='" + gAnalyticParam.Device + "']", nsmgr);
                    XmlNode nodeVisits = entries[i].SelectSingleNode("dxp:metric[@name='ga:visits']", nsmgr); // TotalVisits
                    XmlNode nodePageViews = entries[i].SelectSingleNode("dxp:metric[@name='ga:pageviews']", nsmgr); //TotalPageView
                    XmlNode nodeNewVisits = entries[i].SelectSingleNode("dxp:metric[@name='ga:newVisits']", nsmgr); //TotalNewVisit
                    XmlNode nodeUniqueVisits = entries[i].SelectSingleNode("dxp:metric[@name='ga:visitors']", nsmgr); //uniqueVisitors
                    XmlNode nodeBounces = entries[i].SelectSingleNode("dxp:metric[@name='ga:bounces']", nsmgr); //Bounce
                    XmlNode nodeAvgTimeOnSite = entries[i].SelectSingleNode("dxp:metric[@name='ga:avgTimeOnSite']", nsmgr); //avgTimeOnSite

                    lstMobileOverViewEntity.Add(new OverViewEntity(device.Attributes["value"].Value, Convert.ToInt32(nodeVisits.Attributes["value"].Value), Convert.ToInt32(nodePageViews.Attributes["value"].Value), Convert.ToInt32(nodeNewVisits.Attributes["value"].Value), Convert.ToInt32(nodeUniqueVisits.Attributes["value"].Value), Convert.ToDouble(nodeBounces.Attributes["value"].Value), Convert.ToDouble(nodeAvgTimeOnSite.Attributes["value"].Value)));
                }

                if (lstMobileOverViewEntity.Count > 0)
                    return lstMobileOverViewEntity;
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