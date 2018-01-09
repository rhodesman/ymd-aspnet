using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Text;
using System.Xml;

namespace GAnalytic
{
    public class ReferrersOverview
    {
        private const String FeedUrl = "https://www.googleapis.com/analytics/v2.4/data?ids=ga:{0}&dimensions=ga:source&metrics=ga:pageviews,ga:sessionDuration,ga:exits&filters=ga:medium==referral&sort=-ga:pageviews&start-date={1}&end-date={2}&start-index=1&max-results=50000";

        public static List<ReferralOverviewEntity> GetReferralOverviewQueryResults(GAnalyticParam gAnalyticParam, DateTime startDate)
        {
            try
            {
                String requestUrl = String.Format(FeedUrl, new object[] { gAnalyticParam.ProfileId, startDate.ToString("yyyy-MM-dd"), DateTime.Now.Date.ToString("yyyy-MM-dd") });

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

                var lstReferralOverviewEntity = new List<ReferralOverviewEntity>();

                for (int i = 0; i < entries.Count; i++)
                {
                    XmlNode nadeReferralName = entries[i].SelectSingleNode("dxp:dimension[@name='ga:source']", nsmgr);
                    XmlNode nodePageViews = entries[i].SelectSingleNode("dxp:metric[@name='ga:pageviews']", nsmgr);
                    XmlNode nodeSessionDuration = entries[i].SelectSingleNode("dxp:metric[@name='ga:sessionDuration']", nsmgr);
                    XmlNode nodeExitsCount = entries[i].SelectSingleNode("dxp:metric[@name='ga:exits']", nsmgr);

                    lstReferralOverviewEntity.Add(new ReferralOverviewEntity(nadeReferralName.Attributes["value"].Value, nodePageViews.Attributes["value"].Value, nodeSessionDuration.Attributes["value"].Value, nodeExitsCount.Attributes["value"].Value));
                }

                if (lstReferralOverviewEntity.Count > 0)
                    return lstReferralOverviewEntity;
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