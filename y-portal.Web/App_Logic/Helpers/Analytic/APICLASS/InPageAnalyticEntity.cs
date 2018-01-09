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

        public string PagePath { get; set; }
        public int Pageviews { get; set; }
        public int UniquePageviews { get; set; }
        public double AvgTimeOnPage { get; set; }
        public double AvgPageLoadTime { get; set; }
        public double BounceRate { get; set; }
        public double ExitRate { get; set; }
        public string AvgTimeOnPageString { get; set; }
    }
}