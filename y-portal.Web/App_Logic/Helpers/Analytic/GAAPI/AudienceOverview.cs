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
    public class AudienceOverview
    {
       private const String FeedUrl = "https://www.googleapis.com/analytics/v2.4/data?ids=ga:{0}&dimensions=ga:sessionDurationBucket,ga:date,ga:visitLength&metrics=ga:sessions,ga:visits,ga:bounces,ga:sessionDuration,ga:timeOnSite,ga:hits,ga:users,ga:newUsers,ga:percentNewSessions,ga:pageviews,ga:avgSessionDuration&start-date={1}&end-date={2}&start-index=1&max-results=50000";
       
       
        public static List<AudienceOverviewSessionEntity> GetAudienceOverviewQueryResults(GAnalyticParam gAnalyticParam, DateTime startDate)
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

                var lstAudienceOverviewEntity = new List<AudienceOverviewSessionEntity>();

                for (int i = 0; i < entries.Count; i++)
                {

                    XmlNode nodeuserdate = entries[i].SelectSingleNode("dxp:dimension[@name='ga:date']", nsmgr);

                    XmlNode nodesessions = entries[i].SelectSingleNode("dxp:metric[@name='ga:sessions']", nsmgr);


                    lstAudienceOverviewEntity.Add(new AudienceOverviewSessionEntity( int.Parse(nodesessions.Attributes["value"].Value), DateTime.ParseExact(nodeuserdate.Attributes["value"].Value,  "yyyyMMdd", CultureInfo.InvariantCulture,
                                        DateTimeStyles.None)));
                }

                if (lstAudienceOverviewEntity.Count > 0)
                    return lstAudienceOverviewEntity;
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