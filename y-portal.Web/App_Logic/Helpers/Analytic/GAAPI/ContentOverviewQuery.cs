using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.IO;
using System.Text;
using System.Xml;
using System.Diagnostics;
using System.Globalization;

namespace GAnalytic
{
    internal class ContentOverviewQuery
    {
        private const String FeedUrl = "https://www.googleapis.com/analytics/v2.4/data?ids=ga:{0}&dimensions=ga:pagePath,ga:pageTitle&metrics=ga:pageviews,ga:visits,ga:uniquepageviews,ga:avgTimeOnPage,ga:timeOnPage,ga:exits,ga:entrances,ga:bounces,ga:exitRate&sort=ga:pageviews&start-date={1}&end-date={2}&start-index=1&max-results=50000";
        private const String FeedUrlDateWise = "https://www.googleapis.com/analytics/v2.4/data?ids=ga:{0}&dimensions=ga:date&metrics=ga:pageviews,ga:visits,ga:uniquepageviews,ga:avgTimeOnPage,ga:entrances,ga:bounces,ga:exitRate&sort=-ga:pageviews&start-date={1}&end-date={2}&start-index=1&max-results=50000";

        public static List<ContentOverviewEntity> GetContentOverviewQueryResults(GAnalyticParam gAnalyticParam, DateTime startDate,DateTime? endDate)
        {
            try
            {
               // String requestUrl = String.Format(FeedUrl, new object[] { gAnalyticParam.ProfileId });
                String requestUrl = String.Format(FeedUrl, new object[] { gAnalyticParam.ProfileId, startDate.ToString("yyyy-MM-dd"), endDate == null ? DateTime.Now.Date.ToString("yyyy-MM-dd") : Convert.ToDateTime(endDate).ToString("yyyy-MM-dd") });

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

                var lstContentOverviewEntity = new List<ContentOverviewEntity>();

                for (int i = 0; i < entries.Count; i++)
                {
                    //XmlNode nodeDate = entries[i].SelectSingleNode("dxp:dimension[@name='ga:date']", nsmgr);
                    XmlNode nodePagePath = entries[i].SelectSingleNode("dxp:dimension[@name='ga:pagePath']", nsmgr);
                    XmlNode nodePageTitle = entries[i].SelectSingleNode("dxp:dimension[@name='ga:pageTitle']", nsmgr);
                    XmlNode nodePageViews = entries[i].SelectSingleNode("dxp:metric[@name='ga:pageviews']", nsmgr);
                    XmlNode nodeVisits = entries[i].SelectSingleNode("dxp:metric[@name='ga:visits']", nsmgr);
                    XmlNode nodeUniquePageViews = entries[i].SelectSingleNode("dxp:metric[@name='ga:uniquepageviews']", nsmgr);
                    XmlNode nodeAvgTimeOnPage = entries[i].SelectSingleNode("dxp:metric[@name='ga:avgTimeOnPage']", nsmgr); //avgTimeOnPage

                    XmlNode nodeEntrances = entries[i].SelectSingleNode("dxp:metric[@name='ga:entrances']", nsmgr); //entrances
                    XmlNode nodeBounces = entries[i].SelectSingleNode("dxp:metric[@name='ga:bounces']", nsmgr); //bounces
                    XmlNode nodeExitRate = entries[i].SelectSingleNode("dxp:metric[@name='ga:exitRate']", nsmgr); //exitRate

                    XmlNode nodeTimeOnPage = entries[i].SelectSingleNode("dxp:metric[@name='ga:timeOnPage']", nsmgr); //exitRate
                    XmlNode nodeExit = entries[i].SelectSingleNode("dxp:metric[@name='ga:exits']", nsmgr); //exitRate


                    ContentOverviewEntity obj = lstContentOverviewEntity.SingleOrDefault(c => c.PagePath == nodePagePath.Attributes["value"].Value);

                    if (obj == null)
                    {
                        if (!nodePagePath.Attributes["value"].Value.ToLower().Contains("admin"))
                        {
                            lstContentOverviewEntity.Add(new ContentOverviewEntity(i + 1, DateTime.Now,
                                                                                   nodePagePath.Attributes["value"].
                                                                                       Value,
                                                                                   nodePageTitle.Attributes["value"].
                                                                                       Value,
                                                                                   Convert.ToInt32(
                                                                                       nodePageViews.Attributes["value"]
                                                                                           .Value),
                                                                                   Convert.ToInt32(
                                                                                       nodeVisits.Attributes["value"].
                                                                                           Value),
                                                                                   Convert.ToInt32(
                                                                                       nodeUniquePageViews.Attributes[
                                                                                           "value"].Value),
                                                                                   nodeAvgTimeOnPage.Attributes["value"]
                                                                                       .Value,
                                                                                   Convert.ToInt32(
                                                                                       nodeEntrances.Attributes["value"]
                                                                                           .Value),
                                                                                   Convert.ToInt32(
                                                                                       nodeBounces.Attributes["value"].
                                                                                           Value),
                                                                                   nodeExitRate.Attributes["value"].
                                                                                       Value));
                        }
                    }
                    else
                    {
                        if (!nodePagePath.Attributes["value"].Value.Contains("admin"))
                        {
                            obj.AddCountToPageView(Convert.ToInt32(nodePageViews.Attributes["value"].Value));
                        }
                    }
                }

                if (lstContentOverviewEntity.Count > 0)
                    return lstContentOverviewEntity;
                else
                    return null;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public static List<ContentOverviewEntity> GetContentOverviewQueryResultsLineChart(GAnalyticParam gAnalyticParam)
        {
            try
            {
                String RequestUrl = String.Format(FeedUrlDateWise, new object[] { gAnalyticParam.ProfileId });

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

                var lstContentOverviewEntity = new List<ContentOverviewEntity>();

                for (int i = 0; i < entries.Count; i++)
                {
                    XmlNode nodeDate = entries[i].SelectSingleNode("dxp:dimension[@name='ga:date']", nsmgr);
                    XmlNode nodePageViews = entries[i].SelectSingleNode("dxp:metric[@name='ga:pageviews']", nsmgr);
                    XmlNode nodeVisits = entries[i].SelectSingleNode("dxp:metric[@name='ga:visits']", nsmgr);
                    XmlNode nodeUniquePageViews = entries[i].SelectSingleNode("dxp:metric[@name='ga:uniquePageviews']", nsmgr);
                    XmlNode nodeAvgTimeOnPage = entries[i].SelectSingleNode("dxp:metric[@name='ga:avgTimeOnPage']", nsmgr); //avgTimeOnPage

                    XmlNode nodeEntrances = entries[i].SelectSingleNode("dxp:metric[@name='ga:entrances']", nsmgr); //entrances
                    XmlNode nodeBounces = entries[i].SelectSingleNode("dxp:metric[@name='ga:bounces']", nsmgr); //bounces
                    XmlNode nodeExitRate = entries[i].SelectSingleNode("dxp:metric[@name='ga:exitRate']", nsmgr); //exitRate


                    ContentOverviewEntity obj = lstContentOverviewEntity.SingleOrDefault(c => c.PagePath == nodeDate.Attributes["value"].Value);

                    if (obj == null)
                    {
                        var dateString = nodeDate.Attributes["value"].Value.ToString();
                        var date = DateTime.ParseExact(dateString,
                                                            "yyyyMMdd",
                                                            CultureInfo.InvariantCulture,
                                        DateTimeStyles.None);


                        lstContentOverviewEntity.Add(new ContentOverviewEntity(i + 1, Convert.ToDateTime(date).Date, string.Empty, string.Empty, Convert.ToInt32(nodePageViews.Attributes["value"].Value), Convert.ToInt32(nodeVisits.Attributes["value"].Value),
                            Convert.ToInt32(nodeUniquePageViews.Attributes["value"].Value), nodeAvgTimeOnPage.Attributes["value"].Value, Convert.ToInt32(nodeEntrances.Attributes["value"].Value), Convert.ToInt32(nodeBounces.Attributes["value"].Value), nodeExitRate.Attributes["value"].Value));
                    }
                    else
                    {
                        obj.AddCountToPageView(Convert.ToInt32(nodePageViews.Attributes["value"].Value));
                    }
                }

                if (lstContentOverviewEntity.Count > 0)
                    return lstContentOverviewEntity;
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