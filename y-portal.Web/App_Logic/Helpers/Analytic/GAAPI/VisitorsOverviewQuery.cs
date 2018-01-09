using System;
using System.Collections.Generic;
using System.Net;
using System.IO;
using System.Text;
using System.Xml;
using System.Diagnostics;

namespace GAnalytic
{
    public class VisitorsOverviewQuery
    {
        //private const String FeedUrl = "https://www.googleapis.com/analytics/v2.4/data?ids=ga:{0}&dimensions=ga:date&metrics=ga:visits,ga:visitors,ga:pageviews,ga:newVisits,ga:bounces,ga:avgTimeOnSite&start-date={1}&end-date={2}&start-index=1&max-results=50000";
        private const String FeedUrl = "https://www.googleapis.com/analytics/v2.4/data?ids=ga:{0}&metrics=ga:pageviews,ga:newVisits,ga:bounceRate,ga:avgTimeOnSite,ga:sessions,ga:users,ga:pageviewsPerSession,ga:avgSessionDuration,ga:percentNewSessions,ga:percentNewVisits&start-date={1}&end-date={2}&start-index=1&max-results=50000";

        public static VisitorsOverviewQueryEntity GetVisitorsOverviewQueryResults(GAnalyticParam gAnalyticParam, DateTime startDate, DateTime? endDate)
        {
            try
            {
  

                String requestUrl = String.Format(FeedUrl, new object[] { gAnalyticParam.ProfileId, startDate.ToString("yyyy-MM-dd"), endDate == null ? DateTime.Now.Date.ToString("yyyy-MM-dd") : Convert.ToDateTime(endDate).ToString("yyyy-MM-dd") });

                var myRequest = (HttpWebRequest)WebRequest.Create(requestUrl);
                myRequest.Headers.Add("Authorization: GoogleLogin auth=" + gAnalyticParam.Token);

                var myResponse = (HttpWebResponse)myRequest.GetResponse();
                Stream responseBody = myResponse.GetResponseStream();

                Encoding encode = Encoding.GetEncoding("utf-8");
                var readStream = new StreamReader(responseBody, encode);

                var resultsXml = new XmlDocument(); resultsXml.LoadXml(readStream.ReadToEnd());
                Debug.WriteLine(resultsXml);

                var nsmgr = new XmlNamespaceManager(resultsXml.NameTable);
                nsmgr.AddNamespace("dxp", "http://schemas.google.com/analytics/2009");

                XmlNodeList entries = resultsXml.GetElementsByTagName("entry");

                var VisitorsOverviewQueryEntity = new VisitorsOverviewQueryEntity();

                if (entries.Count > 0)
                {
                    XmlNode nodeDate = entries[0].SelectSingleNode("dxp:dimension[@name='ga:date']", nsmgr);
                    XmlNode nodePageViews = entries[0].SelectSingleNode("dxp:metric[@name='ga:pageviews']", nsmgr); //TotalPageView                   
                    XmlNode nodeAvgTimeOnSite = entries[0].SelectSingleNode("dxp:metric[@name='ga:avgTimeOnSite']", nsmgr); //avgTimeOnSite
                    XmlNode nodesessions = entries[0].SelectSingleNode("dxp:metric[@name='ga:sessions']", nsmgr); //avgTimeOnSite
                    XmlNode nodeusers = entries[0].SelectSingleNode("dxp:metric[@name='ga:users']", nsmgr); //avgTimeOnSite
                    XmlNode nodepageviewsPerSession = entries[0].SelectSingleNode("dxp:metric[@name='ga:pageviewsPerSession']", nsmgr); //avgTimeOnSite
                    XmlNode nodeavgSessionDuration = entries[0].SelectSingleNode("dxp:metric[@name='ga:avgSessionDuration']", nsmgr); //avgTimeOnSite
                    XmlNode nodepercentNewSessions = entries[0].SelectSingleNode("dxp:metric[@name='ga:percentNewSessions']", nsmgr); //avgTimeOnSite
                    XmlNode nodepercentNewVisits = entries[0].SelectSingleNode("dxp:metric[@name='ga:percentNewVisits']", nsmgr); //avgTimeOnSite
                    XmlNode nodebounceRate = entries[0].SelectSingleNode("dxp:metric[@name='ga:bounceRate']", nsmgr); //Bounce


                    VisitorsOverviewQueryEntity = new VisitorsOverviewQueryEntity()
                         {
                             Sessions = Int32.Parse(nodesessions.Attributes["value"].Value),
                             Users = Int32.Parse(nodeusers.Attributes["value"].Value),
                             PagePerSessions = double.Parse(nodepageviewsPerSession.Attributes["value"].Value),
                             AvgSessionDuration = double.Parse(nodeavgSessionDuration.Attributes["value"].Value),
                             PNewSessions = double.Parse(nodepercentNewSessions.Attributes["value"].Value),
                             PNewVisitor = double.Parse(nodepercentNewVisits.Attributes["value"].Value),
                             PReturningVisitor = 100 - double.Parse(nodepercentNewVisits.Attributes["value"].Value),
                             bounceRate = double.Parse(nodebounceRate.Attributes["value"].Value),
                             Pageviews = Int32.Parse(nodePageViews.Attributes["value"].Value)

                         };
                }
                else
                { 
                //do code
                }


                return VisitorsOverviewQueryEntity;
               
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}