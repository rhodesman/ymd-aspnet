using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;
using YPortal.Web.Controls;
using YPortal.Web.User_Control.Data;
using prismic.extensions;

namespace YPortal.Web.App_Logic
{
    public static class Common
    {

        public const string QUERY_CONTENT_GROUP = @"[[:d=fulltext(my.PageContainer.ContentGroup,""{0}"")]]";
        public const string QUERY_CONTENT_TYPE = @"[[:d=at(document.type,""{0}"")]]";
        public const string LOCATIONS_CONTROLLER_CACHE_ID = "Y_CACHE_LOCATIONS";
        public const string LOCATIONS_ROOT = "/locations/familycenterys/{0}";
        public const string HEAD_START_ROOT = "/locations/headstart/{0}";
        public const string PRESCHOOL_ROOT = "/locations/preschool/{0}";

        public const string DATE_FORMATTER_TEMPLATE = "{0:yyyy-MM-dd HH:mm}";
        public const string SCHEDULER_DOC_TEMPLATE = "<YSchedule xmlns='WebbMason'>{0}</YSchedule>";
        public const string SCHEDULER_DOC_ROOT_TEMPLATE = "items";
        public const string SCHEDULER_CONFIG_TEMPLATE = "SchedulerContentId";
        public const string DOCUMENT_SEARCH_TEMPLATE = @"[[:d = at(document.{0}, ""{1}"")]]";
        // private const string DOCUMENT_EVENTS_TEMPLATE = @"[[:d=fulltext(my.Event.Title,""Lap Swim"")]]"; // @"[[:d=at(document.type,""Event"")]]";
        public const string DOCUMENT_EVENTS_TEMPLATE = @"[[:d=at(document.type,""Event"")]]";
        public const string DOCUMENT_SCHEDULE_HEADER_TEMPLATE = @"[[:d=at(document.type,""YSchedulePageHeader"")]]";


        public const string DOCUMENT_CLASSES_TEMPLATE = @"[[:d=at(document.type,""YScheduleClass"")]]";
        public const string DOCUMENT_INTERESTS_TEMPLATE = @"[[:d=at(document.type,""YScheduleInterest"")]]";
        public const string SCHEDULE_EVENTS_CACHE_ID = "YSCHEDULE_EVENTS";
        public const string SCHEDULE_HEADER_CACHE_ID = "YSCHEDULE_HEADER";

        public static Dictionary<string, string> Passwords = new Dictionary<string, string>
                                                                 {
                                                                     { "A", "yboard" },
                                                                     { "B", "execcomm" },
                                                                     { "C", "cmpnstn" },
                                                                     { "D", "fincomm" },
                                                                 };


        public static string RemoveSiteRoot(string link)
        {
            if (!String.IsNullOrEmpty(link))
            {
                link = link.ToLower();
                if (link.Contains("y-portal") 
                    || link.Contains("y-ymaryland.org")
                    || link.Contains("localhost")
                    || link.Contains("/programs")
                    || link.Contains("/schedule")
                    || link.Contains("/locations")
                    || link.Contains("/membership")
                    || link.Contains("/our_mission")
                    || link.Contains("/ourmission")
                    || link.Contains("/footer")
                    || link.Contains("/bio")                    
                    )
                {
                  
                    link = Regex.Replace(link, "http://y-portal.cms.development.webbmason.com", String.Empty, RegexOptions.IgnoreCase);
                    link = Regex.Replace(link, "http://y-portal.cms2.development.webbmason.com", String.Empty, RegexOptions.IgnoreCase);
                    link = Regex.Replace(link, "http://y-portal.cms-staging.development.webbmason.com", String.Empty, RegexOptions.IgnoreCase);
                    link = Regex.Replace(link, "http://ymaryland.org", String.Empty, RegexOptions.IgnoreCase);

                    link = Regex.Replace(link, "http://programs", "/programs", RegexOptions.IgnoreCase);
                    link = Regex.Replace(link, "http:///programs", "/programs", RegexOptions.IgnoreCase);
                    link = Regex.Replace(link, "http://schedule", "/schedule", RegexOptions.IgnoreCase);
                    link = Regex.Replace(link, "http:///schedule", "/schedule", RegexOptions.IgnoreCase);
                    link = Regex.Replace(link, "http://locations", "/locations", RegexOptions.IgnoreCase);
                    link = Regex.Replace(link, "http:///locations", "/locations", RegexOptions.IgnoreCase);
                    link = Regex.Replace(link, "http://membership", "/membership", RegexOptions.IgnoreCase);
                    link = Regex.Replace(link, "http:///membership", "/membership", RegexOptions.IgnoreCase);
                    link = Regex.Replace(link, "http://our_mission", "/ourmission", RegexOptions.IgnoreCase);
                    link = Regex.Replace(link, "http:///our_mission", "/ourmission", RegexOptions.IgnoreCase);
                    link = Regex.Replace(link, "http://footer", "/footer", RegexOptions.IgnoreCase);
                    link = Regex.Replace(link, "http:///footer", "/footer", RegexOptions.IgnoreCase);


                    link = EncodeClenupLink(link);
                }
            }
            return link;

        }



        public static string EncodeClenupLink(string link)
        {
            return EncodeClenupLink(link, false, false);
        }


        public static string EncodeClenupLink(string link, bool PreserveCase, bool PreserveSpaces)
        {
            if (!String.IsNullOrEmpty(link))
            {
                link = link.Trim();

                if (!PreserveCase)
                {
                    link = link.ToLower();
                }

                link = Regex.Replace(link, "_cm_", String.Empty, RegexOptions.IgnoreCase);
                link = Regex.Replace(link, "_and_", String.Empty, RegexOptions.IgnoreCase);

                if (!PreserveSpaces)
                {
                    link = Regex.Replace(link, " ", String.Empty, RegexOptions.IgnoreCase);
                }
                
                link = Regex.Replace(link, ",", String.Empty, RegexOptions.IgnoreCase);
                link = Regex.Replace(link, "&", String.Empty, RegexOptions.IgnoreCase);
                link = Regex.Replace(link, "_small_ot_", String.Empty, RegexOptions.IgnoreCase);
                link = Regex.Replace(link, "_small_ct_", String.Empty, RegexOptions.IgnoreCase);
                link = Regex.Replace(link, "_br_", String.Empty, RegexOptions.IgnoreCase);
                link = Regex.Replace(link, "_br1_", String.Empty, RegexOptions.IgnoreCase);
                link = Regex.Replace(link, "<small>", String.Empty, RegexOptions.IgnoreCase);
                link = Regex.Replace(link, "</small>", String.Empty, RegexOptions.IgnoreCase);
                link = Regex.Replace(link, "<br>", String.Empty, RegexOptions.IgnoreCase);
                link = Regex.Replace(link, "<br/>", String.Empty, RegexOptions.IgnoreCase);
                link = Regex.Replace(link, "blank", String.Empty, RegexOptions.IgnoreCase);
                link = Regex.Replace(link, "//", "/", RegexOptions.IgnoreCase);
                //link = Regex.Replace(link, "_", String.Empty, RegexOptions.IgnoreCase);                
                link = Regex.Replace(link, "fitlinxxtrainingsystem", "fitlinxx", RegexOptions.IgnoreCase);
                link = Regex.Replace(link, "fitquesttrainingsystem", "fitquest", RegexOptions.IgnoreCase);
                link = Regex.Replace(link, "/beforeafterschoolenrichment/beforeafterschoolenrichment", "/beforeafterschoolenrichment/beforeafterschool", RegexOptions.IgnoreCase);
                
                link = Regex.Replace(link, @"<[^>]*>", String.Empty);

                link = link.Replace("(", "").Replace(")", "");
            }
            return link;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="link"></param>
        /// <returns></returns>
        public static string DeCodeLink(string link)
        {
            if (!String.IsNullOrEmpty(link))
            {
                link = link.ToLower();
                link = link.Replace("_and_", "&");
                link = link.Replace("_cm_", ",");
                link = link.Replace("_small_ot_", "<small>");
                link = link.Replace("_small_ct_", "</small>");
                link = link.Replace("_br_", "<br>");
                link = link.Replace("_br1_", "<br/>");

                link = link.Replace("_", " ");
            }

            return link;
        }

        public static string GetGoogleTagManagerPixel(List<MediaContainer> documents, string urlMenu3, string urlMenu4)
        {
            foreach (var document in documents)
            {
                var documentMenuItem = EncodeClenupLink(document.MenuItem.Text).ToLower();

                if (urlMenu3 == "beforeafterschool" && documentMenuItem == "beforeafterschoolenrichment")
                {
                    documentMenuItem = "beforeafterschool";
                }

                if (documentMenuItem == urlMenu3)
                {
                    var dtab = new YDTabControl
                    {
                        ID = documentMenuItem,
                        MediaInfo = document
                    };

                    var tabs = dtab.GetTabLists();
                    if (tabs != null && tabs.Count > 0)
                    {
                        if (string.IsNullOrEmpty(urlMenu4))
                        {
                            var activeTab = tabs[0];

                            var googlefragment = activeTab.GetText(String.Format("{0}.GoogleTagManagerPixel", activeTab.typ));

                            if (googlefragment != null)
                            {
                                return googlefragment.Value;
                            }
                        }
                        else
                        {
                            foreach (var tab in tabs)
                            {
                                var titleFragment = tab.GetText(String.Format("{0}.Title", tab.typ));

                                if (titleFragment != null)
                                {
                                    if (urlMenu4 == titleFragment.Value.ToLower().Replace(" ", ""))
                                    {
                                        var googlefragment = tab.GetText(String.Format("{0}.GoogleTagManagerPixel", tab.typ));

                                        if (googlefragment != null)
                                        {
                                            return googlefragment.Value;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return string.Empty;
        }
    }
}