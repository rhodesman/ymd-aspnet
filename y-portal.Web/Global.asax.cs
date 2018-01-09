using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Web;
using System.Web.Http;
using System.Web.Routing;
using log4net.Config;
using PrismicIOAPI.Utility;
using YPortal.Web.Controls;

namespace YPortal.Web
{
    public class Global : HttpApplication
    {
        private static List<MenuElement> menuData;
        private static List<MenuElement> dLinks;

        public static List<MenuElement> MenuData
        {
            get
            {
                var cacheid = "Y_APP.MENU";
                CacheController.GetCachedObject(ref menuData, cacheid);

                if (menuData == null)
                {
                    menuData = SetAppication();
                    CacheController.GetCachedObject(ref menuData, cacheid);
                }
                return menuData;
            }
            set { menuData = value; }
        }

        public static List<MenuElement> DLinks
        {
            get
            {
                var cacheid = "Y_APP.DLINKS";
                CacheController.GetCachedObject(ref dLinks, cacheid);

                if (dLinks == null)
                {
                    dLinks = new List<MenuElement>();
                    CacheController.GetCachedObject(ref dLinks, cacheid);
                }
                return dLinks;
            }
            set { dLinks = value; }
        }

        protected void Application_Start(object sender, EventArgs e)
        {
            XmlConfigurator.Configure();
            RegisterRoutes();
            //Route reportRoute = new Route("Accessoires/{accessory_name}", new PageRouteHandler("~/Y-Info.aspx"));
            //reportRoute.DataTokens = new RouteValueDictionary { { "lang", "en" } };
            //RouteTable.Routes.Add(reportRoute);
        }

        protected void Application_End(object sender, EventArgs e)
        {
            //  Code that runs on application shutdown
        }

        protected void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs
            //YProtal.Helpers.Logger.LogError();
        }

        protected void Application_AuthenticateRequest(Object sender, EventArgs e)
        {
            //if (HttpContext.Current.User != null)
            //{
            //    if (HttpContext.Current.User.Identity.IsAuthenticated)
            //    {

            //        if (HttpContext.Current.User.Identity.AuthenticationType != "Forms")
            //            throw new InvalidOperationException("Only forms authentication is supported, not " +
            //                HttpContext.Current.User.Identity.AuthenticationType);

            //        System.Security.Principal.IIdentity userId = HttpContext.Current.User.Identity;

            //        //if role info is already NOT loaded into cache, put the role info in cache
            //        if (System.Web.HttpContext.Current.Cache[userId.Name] == null)
            //        {
            //            string[] roles;

            //            if (userId.Name == "admin1")
            //                roles = new string[1] { "admin" };//this info will be generally collected from database
            //            else if (userId.Name == "member1")
            //                roles = new string[1] { "member" };//this info will be generally collected from database
            //            else
            //                roles = new string[1] { "public" };//this info will be generally collected from database                   

            //            //1 hour sliding expiring time. Adding the roles in chache. This will be used in Application_AuthenticateRequest event located in Global.ascx.cs file to attach user Principal object.
            //            System.Web.HttpContext.Current.Cache.Add(userId.Name, roles, null, DateTime.MaxValue, TimeSpan.FromHours(1), System.Web.Caching.CacheItemPriority.BelowNormal, null);
            //        }

            //        //now assign the user role in the current security context
            //        HttpContext.Current.User = new System.Security.Principal.GenericPrincipal(userId, (string[])System.Web.HttpContext.Current.Cache[userId.Name]);
            //    }
            //}
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            HandleExternalRedirects();
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            var menudata = MenuData;
        }

        protected void Session_End(object sender, EventArgs e)
        {
        }

        /// <summary>
        ///     Sets The application Hierarchy
        /// </summary>
        private static List<MenuElement> SetAppication()
        {
            List<MenuElement> menuData = null;

            var menudatapath = ConfigurationManager.AppSettings.Get("YMenu.Path");

            if (!String.IsNullOrEmpty(menudatapath))
            {
                menudatapath = HttpContext.Current.Server.MapPath(menudatapath);
                if (File.Exists(menudatapath))
                {
                    menuData = new List<MenuElement>();
                    var xml = File.ReadAllText(menudatapath);
                    menuData = CommonUtility.XMLDeSerialize<List<MenuElement>>(xml);
                }
            }
            return menuData;
        }

        private void RegisterRoutes()
        {
            GlobalConfiguration.Configuration.Formatters.XmlFormatter.SupportedMediaTypes.Clear();

            RouteTable.Routes.Add(new Route("{resource}.axd/{*pathInfo}", new StopRoutingHandler()));

            RouteTable.Routes.MapHttpRoute("DefaultApi", "api/{controller}/{id}", new { id = RouteParameter.Optional });

            RouteTable.Routes.MapHttpRoute(
             "CustomActionApi",
                "api/{controller}/custom/{action}/{id}", new { id = RouteParameter.Optional });

            RouteTable.Routes.MapPageRoute(
               "DPRoute",
                   "",
                   "~/default.aspx");

            RouteTable.Routes.MapPageRoute(
                "FARoute",
                    "financialassistance/{MenuLv2}/{MenuLv3}",
                    "~/footer/financialassistance.aspx", false, new RouteValueDictionary
                {
                    {"MenuLv2" , RouteParameter.Optional},
                    {"MenuLv3" , RouteParameter.Optional},
                });

            RouteTable.Routes.MapPageRoute(
                "ScheduleRoute",
                    "schedule",
                    "~/Y-Schedule.aspx", false);

            RouteTable.Routes.MapPageRoute(
                "SchedulePrintFriendlyRoute",
                    "schedule/print",
                    "~/Y-Schedule-Print-Friendly.aspx", false);

            RouteTable.Routes.MapPageRoute(
                "CURoute",
                    "contactus",
                    "~/contactus.aspx", false);

            RouteTable.Routes.MapPageRoute(
               "SMRoute",
                   "sitemap",
                   "~/footer/sitemap.aspx", false);

            RouteTable.Routes.MapPageRoute(
             "PPRoute",
                 "privacypolicy",
                 "~/footer/privacypolicy.aspx", false);

            RouteTable.Routes.MapPageRoute(
             "VLRoute",
                 "volunteerlogin/{MenuLv2}/{MenuLv3}",
                 "~/footer/volunteerlogin.aspx", false, new RouteValueDictionary
                {
                    {"MenuLv2" , RouteParameter.Optional},
                    {"MenuLv3" , RouteParameter.Optional},
                });

            //RouteTable.Routes.MapPageRoute(
            // "VLContentRoute",
            //     "volunteercontent",
            //     "~/footer/volunteer-content.aspx", false);

            RouteTable.Routes.MapPageRoute(
             "CapCamRoute",
                 "capitalcampaigns",
                 "~/footer/capitalcampaigns.aspx", false);

            RouteTable.Routes.MapPageRoute(
            "PPORoute",
                "partnershipopportunities",
                "~/footer/partnershipopportunities.aspx", false);

            RouteTable.Routes.MapPageRoute(
            "SponsorsRoute",
                "sponsors",
                "~/footer/sponsors.aspx", false);

            RouteTable.Routes.MapPageRoute(
            "MediaCenterRoute",
                "mediacenter/{MenuLv3}",
                "~/footer/mediacenter.aspx", false, new RouteValueDictionary
                {
                    {"MenuLv3" , RouteParameter.Optional},
                });

            RouteTable.Routes.MapPageRoute(
             "LeadershipRoute",
                 "leadership/{MenuLv2}/{MenuLv3}",
                 "~/footer/leadership.aspx", false, new RouteValueDictionary
                {
                    {"MenuLv2" , RouteParameter.Optional},
                    {"MenuLv3" , RouteParameter.Optional},
                });

            RouteTable.Routes.MapPageRoute(
             "MonarchglobalRoute",
                 "monarchglobal/{MenuLv2}/{MenuLv3}",
                 "~/monarchglobal/default.aspx", false, new RouteValueDictionary
                {
                    {"MenuLv2" , RouteParameter.Optional},
                    {"MenuLv3" , RouteParameter.Optional},
                });

            RouteTable.Routes.MapPageRoute(
            "EmplRoute",
                "employment/{MenuLv2}/{MenuLv3}",
                "~/footer/employment.aspx", false, new RouteValueDictionary
                {
                    {"MenuLv2" , RouteParameter.Optional},
                    {"MenuLv3" , RouteParameter.Optional},
                });

            RouteTable.Routes.MapPageRoute(
             "BERoute",
                 "billinginquiries/{MenuLv3}",
                 "~/footer/billinginquiries.aspx", false, new RouteValueDictionary
                {
                    {"MenuLv3" , RouteParameter.Optional},
                });

            RouteTable.Routes.MapPageRoute(
             "BSTPlanRoute",
                 "strategicplan",
                 "~/footer/strategicplan.aspx", false);

            RouteTable.Routes.MapPageRoute(
             "AnnualReportsRoute",
                 "annualreports",
                 "~/footer/annualreports.aspx", false);

            RouteTable.Routes.MapPageRoute(
             "CenterImprovements",
                 "centerimprovements/{MenuLv2}/{MenuLv3}",
                 "~/centerimprovements/default.aspx", false, new RouteValueDictionary
                {
                    {"MenuLv2" , RouteParameter.Optional},
                    {"MenuLv3" , RouteParameter.Optional},
                });

            RouteTable.Routes.MapPageRoute(
                 "BioRoute",
                     "bio/{MenuLv1}",
                "~/Y-Bio.aspx", false, new RouteValueDictionary
                {
                    {"MenuLv1", string.Empty}
                        });

            RouteTable.Routes.MapPageRoute(
                   "PageRoute1",
                       "{MenuLv1}/{MenuLv2}/{MenuLv3}/{MenuLv4}",
                "~/Y-Info.aspx", false, new RouteValueDictionary
                {
                    {"MenuLv1", string.Empty},
                    {"MenuLv2", string.Empty},
                    {"MenuLv3", string.Empty},
                    {"MenuLv4", string.Empty}
                        });
        }

        private static void HandleExternalRedirects()
        {
            if (HttpContext.Current.Request.Url.ToString().ToLower().EndsWith("/alerts"))
            {
                HttpContext.Current.Response.Redirect("https://dashboard.alertmedia.com/public?customer=163");
            }
        }
    }
}