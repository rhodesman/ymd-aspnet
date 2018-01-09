using System;

namespace GAnalytic
{
    public class ContentStat
    {
        public Int32 Rank { get; set; }
        public DateTime Date { get; set; }
        public String PagePath { get; set; }
        public String PageTitle { get; set; }
        public Int32 PageViews { get; set; }
        public Int32 Visits { get; set; }
        public Int32 UniquePageViews { get; set; }
        public String AvgTimeonPage { get; set; }
        public Int32 Entrances { get; set; }
        public Double BounceRate { get; set; }
        public String ExitRate { get; set; }
        
        public ContentStat()
        {

        }

        public ContentStat(String pagePath, String pageTitle, Int32 pageViews, Int32 uniquePageViews, String avgTimeonPage, Int32 entrances, Double bounceRate, String exitRate)
        {
            this.PagePath = pagePath;
            this.PageTitle = pageTitle;
            this.PageViews = pageViews;
            this.UniquePageViews = uniquePageViews;
            this.AvgTimeonPage = avgTimeonPage;
            this.Entrances = entrances;
            this.BounceRate = bounceRate;
            this.ExitRate = exitRate;
        }

        public ContentStat(DateTime date, String pagePath, String pageTitle, Int32 pageViews, Int32 uniquePageViews, Int32 visits, String avgTimeonPage, Int32 entrances, Double bounceRate, String exitRate)
        {
            this.Date = date;
            this.PagePath = pagePath;
            this.PageTitle = pageTitle;
            this.PageViews = pageViews;
            this.UniquePageViews = uniquePageViews;
            this.Visits = visits;
            this.AvgTimeonPage = avgTimeonPage;
            this.Entrances = entrances;
            this.BounceRate = bounceRate;
            this.ExitRate = exitRate;
        }

        public ContentStat(Int32 rank, DateTime date, String pagePath, String pageTitle, Int32 pageViews, Int32 uniquePageViews, Int32 visits, String avgTimeonPage, Int32 entrances, Double bounceRate, String exitRate)
        {
            this.Rank = rank;
            this.Date = date;
            this.PagePath = pagePath;
            this.PageTitle = pageTitle;
            this.PageViews = pageViews;
            this.UniquePageViews = uniquePageViews;
            this.Visits = visits;
            this.AvgTimeonPage = avgTimeonPage;
            this.Entrances = entrances;
            this.BounceRate = bounceRate;
            this.ExitRate = exitRate;
        }
    }
}