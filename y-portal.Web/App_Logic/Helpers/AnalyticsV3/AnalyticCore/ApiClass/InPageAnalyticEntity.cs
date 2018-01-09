namespace GAnalytic
{
    public class InPageAnalyticEntity
    {
        public InPageAnalyticEntity()
        {
        }

        internal InPageAnalyticEntity(string pagePath, int pageviews, int uniquePageviews, double avgTimeOnPage,
                                      double avgPageLoadTime, double bounceRate, double exitRate,
                                      string avgTimeOnPageString)
        {
            PagePath = pagePath;
            Pageviews = pageviews;
            UniquePageviews = uniquePageviews;
            AvgTimeOnPage = avgTimeOnPage;
            AvgPageLoadTime = avgPageLoadTime;
            BounceRate = bounceRate;
            ExitRate = exitRate;
            AvgTimeOnPageString = avgTimeOnPageString;
        }

        internal InPageAnalyticEntity(string pagePath, string pageTitle, int pageviews, int uniquePageviews, double avgTimeOnPage,
                                      double avgPageLoadTime, double bounceRate, double exitRate,
                                      string avgTimeOnPageString)
        {
            PagePath = pagePath;
            PageTitle = pageTitle;
            Pageviews = pageviews;
            UniquePageviews = uniquePageviews;
            AvgTimeOnPage = avgTimeOnPage;
            AvgPageLoadTime = avgPageLoadTime;
            BounceRate = bounceRate;
            ExitRate = exitRate;
            AvgTimeOnPageString = avgTimeOnPageString;
        }

        internal InPageAnalyticEntity(string pagePath, string pageTitle, int pageviews, int uniquePageviews)
        {
            PagePath = pagePath;
            PageTitle = pageTitle;
            Pageviews = pageviews;
            UniquePageviews = uniquePageviews;
        }

        internal InPageAnalyticEntity(string pagePath, string pageTitle, int pageviews)
        {
            PagePath = pagePath;
            PageTitle = pageTitle;
            Pageviews = pageviews;
        }

        public string PagePath { get; set; }
        public string PageTitle { get; set; }
        public int Pageviews { get; set; }
        public int UniquePageviews { get; set; }
        public double AvgTimeOnPage { get; set; }
        public double AvgPageLoadTime { get; set; }
        public double BounceRate { get; set; }
        public double ExitRate { get; set; }
        public string AvgTimeOnPageString { get; set; }
    }
}