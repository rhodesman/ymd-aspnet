using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Text;
using System.Xml;

namespace GAnalytic
{
    public class InPageAnalyticOverview
    {

        private const String PurlFeedUrl =
            "https://www.googleapis.com/analytics/v2.4/data?ids=ga:{0}&metrics=ga:pageviews,ga:uniquePageviews,ga:avgTimeOnPage,ga:avgPageLoadTime,ga:visitBounceRate,ga:exitRate&start-date={1}&end-date={2}&start-index=1&max-results=50000&filters=ga:pagePath=~purl*";
        private const String gurlFeedUrl =
          "https://www.googleapis.com/analytics/v2.4/data?ids=ga:{0}&metrics=ga:pageviews,ga:uniquePageviews,ga:avgTimeOnPage,ga:avgPageLoadTime,ga:visitBounceRate,ga:exitRate&start-date={1}&end-date={2}&start-index=1&max-results=50000&filters=ga:pagePath=~gurl*";

        public static List<InPageAnalyticEntity> GetInPageAnalyticEntityResults(GAnalyticParam gAnalyticParam, DateTime startDate)
        {
            try
            {
                var lstInPageAnalyticEntity = new List<InPageAnalyticEntity>();
                BuildInPageAnalyticObjectFromGoogleData(gAnalyticParam, lstInPageAnalyticEntity, gurlFeedUrl, "Gurl", startDate);
                BuildInPageAnalyticObjectFromGoogleData(gAnalyticParam, lstInPageAnalyticEntity, PurlFeedUrl, "Purl", startDate);
                if (lstInPageAnalyticEntity.Count > 0)
                {
                    return lstInPageAnalyticEntity;
                }
                else
                    return null;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        private static void BuildInPageAnalyticObjectFromGoogleData(GAnalyticParam gAnalyticParam, List<InPageAnalyticEntity> lstInPageAnalyticEntity, string feedUrl, string pageType, DateTime startDate)
        {
            String requestUrl = String.Format(feedUrl,
                                              new object[]
                                                      {
                                                          gAnalyticParam.ProfileId,
                                                          startDate.ToString("yyyy-MM-dd"),
                                                          DateTime.Now.Date.ToString("yyyy-MM-dd")
                                                      });

            var myRequest = (HttpWebRequest)WebRequest.Create(requestUrl);
            myRequest.Headers.Add("Authorization: GoogleLogin auth=" + gAnalyticParam.Token);

            var myResponse = (HttpWebResponse)myRequest.GetResponse();
            Stream responseBody = myResponse.GetResponseStream();

            Encoding encode = System.Text.Encoding.GetEncoding("utf-8");
            var readStream = new StreamReader(responseBody, encode);

            var resultsXML = new XmlDocument();
            resultsXML.LoadXml(readStream.ReadToEnd());
            Debug.WriteLine(resultsXML);

            var nsmgr = new XmlNamespaceManager(resultsXML.NameTable);
            nsmgr.AddNamespace("dxp", "http://schemas.google.com/analytics/2009");

            XmlNodeList entries = resultsXML.GetElementsByTagName("entry");

            for (int i = 0; i < entries.Count; i++)
            {
                XmlNode nodePageViews = entries[i].SelectSingleNode("dxp:metric[@name='ga:pageviews']", nsmgr);
                XmlNode nodeUniqueVisits = entries[i].SelectSingleNode("dxp:metric[@name='ga:uniquePageviews']", nsmgr);
                XmlNode nodeavgTimeOnPage = entries[i].SelectSingleNode("dxp:metric[@name='ga:avgTimeOnPage']", nsmgr);
                XmlNode nodeavgPageLoadTime = entries[i].SelectSingleNode("dxp:metric[@name='ga:avgPageLoadTime']", nsmgr);
                XmlNode nodeExitRate = entries[i].SelectSingleNode("dxp:metric[@name='ga:exitRate']", nsmgr);
                XmlNode nodeVisitBounceRate = entries[i].SelectSingleNode("dxp:metric[@name='ga:visitBounceRate']", nsmgr);

                lstInPageAnalyticEntity.Add(
                    new InPageAnalyticEntity(pageType,
                                             Convert.ToInt32(nodePageViews.Attributes["value"].Value),
                                              Convert.ToInt32(nodeUniqueVisits.Attributes["value"].Value),
                                              Convert.ToDouble(nodeavgTimeOnPage.Attributes["value"].Value),
                                              Convert.ToDouble(nodeavgPageLoadTime.Attributes["value"].Value),
                                             Convert.ToDouble(nodeVisitBounceRate.Attributes["value"].Value),
                                              Convert.ToDouble(nodeExitRate.Attributes["value"].Value), string.Empty));
            }
        }
    }
}