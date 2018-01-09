using System;

namespace GAnalytic
{
    public class ContentOverviewEntity
    {
        private String _avgTimeOnPage = String.Empty;
        private DateTime? _date = DateTime.Now.Date;
        private String _exitRate = String.Empty;
        private String _pagePath = String.Empty;
        private String _pageTitle = String.Empty;

        internal ContentOverviewEntity(Int32? rank, DateTime? date, String pagePath, String pageTitle, Int32? pageViews,
                                       Int32? visits, Int32? uniquePageViews, String avgTimeOnPage, Int32? entrances,
                                       Int32? bounce, String exitRate)
        {
            this.Rank = rank;
            _date = date;
            _pagePath = pagePath;
            _pageTitle = pageTitle;
            this.PageViews = pageViews;
            this.Visits = visits;
            this.UniquePageViews = uniquePageViews;
            _avgTimeOnPage = avgTimeOnPage;
            this.Entrances = entrances;
            this.Bounce = bounce;
            _exitRate = exitRate;
        }

        public Int32? Rank { get; set; }

        public DateTime? Date
        {
            get { return _date; }
            set { _date = value; }
        }

        public String PagePath
        {
            get { return _pagePath; }
            set { _pagePath = value; }
        }

        public String PageTitle
        {
            get { return _pageTitle; }
            set { _pageTitle = value; }
        }

        public Int32? PageViews { get; set; }

        public Int32? Visits { get; set; }

        public Int32? UniquePageViews { get; set; }

        public String AvgTimeOnPage
        {
            get { return _avgTimeOnPage; }
            set { _avgTimeOnPage = value; }
        }

        public Int32? Entrances { get; set; }

        public Int32? Bounce { get; set; }

        public String ExitRate
        {
            get { return _exitRate; }
            set { _exitRate = value; }
        }

        public decimal? PageViewsPercentage { get; set; }

        public void AddCountToPageView(Int32 count)
        {
            PageViews += count;
        }
    }
}