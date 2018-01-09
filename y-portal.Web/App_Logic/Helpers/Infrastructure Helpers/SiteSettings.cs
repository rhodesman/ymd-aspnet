using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using YPortal.BusinessLogicLayer;

namespace YPortal.Helpers
{
    public class SiteSettings
    {
        public static Int32 _QueryParamId
        {
            get
            {

                try
                {
                    if (HttpContext.Current.Request.QueryString != null && !string.IsNullOrEmpty(HttpContext.Current.Request.QueryString["id"]))
                    {
                        return Convert.ToInt32(HttpContext.Current.Request.QueryString["id"]);
                    }
                    else
                    {
                        return -1;
                    }
                }
                catch
                {
                    return -1;
                }
            }
        }

        public static bool _QueryParamIsEdit
        {
            get
            {

                try
                {
                    if (HttpContext.Current.Request.QueryString != null && !string.IsNullOrEmpty(HttpContext.Current.Request.QueryString["mode"]))
                    {
                        return HttpContext.Current.Request.QueryString["mode"].ToLower() == "edit" ? true : false;
                    }
                    else
                    {
                        return false;
                    }
                }
                catch
                {
                    return false;
                }
            }
        }

        public static string BaseUrl
        {
            get
            {
                string orginalUrl = HttpContext.Current.Request.Url.AbsoluteUri;
                if (HttpContext.Current.Request.Url.Query.Length > 0)
                    orginalUrl = orginalUrl.Replace(HttpContext.Current.Request.Url.Query, string.Empty);

                return orginalUrl.Replace(HttpContext.Current.Request.Url.AbsolutePath, string.Empty) + ((HttpContext.Current.Request.ApplicationPath == "/" ? "" : HttpContext.Current.Request.ApplicationPath)) + @"/";
            }
        }

        public static string WebApiUrl
        {
            get
            {
                // IWSD-11653: so for whatever reason Request.Url here doesn't think the site's connection is SSL in prod, even though it is, at the time it builds this
                // URL. So I'm just making it a variable so we can stomp it to be whatever we need.
                var uriBuilder = new UriBuilder
                {
                    Scheme = ConfigurationManager.AppSettings.Get("WebApiProtocol"),
                    Host = HttpContext.Current.Request.Url.Host,
                    Path = (HttpContext.Current.Request.ApplicationPath == "/"
                        ? String.Empty
                        : HttpContext.Current.Request.ApplicationPath) + @"/api/"
                };
                return uriBuilder.ToString();
            }
        }

        public static string ExportFilesUrl
        {
            get
            {
                string orginalUrl = HttpContext.Current.Request.Url.AbsoluteUri;
                if (HttpContext.Current.Request.Url.Query.Length > 0)
                    orginalUrl = orginalUrl.Replace(HttpContext.Current.Request.Url.Query, string.Empty);

                return orginalUrl.Replace(HttpContext.Current.Request.Url.AbsolutePath, string.Empty) + ((HttpContext.Current.Request.ApplicationPath == "/" ? "" : HttpContext.Current.Request.ApplicationPath)) + @"/ExportFiles/";
            }
        }

        public static string NoImageUrl
        {
            get { return "~/App_Themes/default/images/no-image.png"; }
        }

        public const String ImageFolder = "/HomeSlider/";
        public const String ResourceFolder = "/Resources/";
        public const String BannerImageFolder = "~/App_Style/images/banner-images/";
        public const String NoBannerImageFolder = "~/App_Style/images/banner-images/common.png";
        public const String IconImageFolder = "~/App_Style/images/";
        public const String NoIconImageFolder = "~/App_Style/images/icon-common.png";

        public static void ShowMessage(string message, string className, System.Web.UI.HtmlControls.HtmlGenericControl divMessage)
        {
            divMessage.InnerText = message;
            divMessage.Attributes.Add("class", className);
            divMessage.Visible = true;
        }

        public static String SiteRunningMode
        {
            get
            {
                return new AppSettingBLL().GetAppValueByAppKey("SITE_RUNNING_MODE");
            }
        }

        public static String FromEmailAddress
        {
            get
            {
                return new AppSettingBLL().GetAppValueByAppKey("FROM_ADDRESS");
            }
        }

        public static String FromName
        {
            get
            {
                return new AppSettingBLL().GetAppValueByAppKey("FROM_NAME");
            }
        }

        public static String AdminEmailSubject
        {
            get
            {
                return new AppSettingBLL().GetAppValueByAppKey("ADMIN_EMAIL_SUBJECT");
            }
        }

        public static String CustomerEmailSubject
        {
            get
            {
                return new AppSettingBLL().GetAppValueByAppKey("CUSTOMER_EMAIL_SUBJECT");
            }
        }

        public static String SMTPClientHost
        {
            get
            {
                return new AppSettingBLL().GetAppValueByAppKey("SMTP_CLIENT_HOST");
            }
        }

        public static String CustomerEmailTemplate
        {
            get
            {
                return new AppSettingBLL().GetAppValueByAppKey("CUSTOMER_EMAIL_TEMPLATE");
            }
        }

        public static String AdminEmailTemplate
        {
            get
            {
                return new AppSettingBLL().GetAppValueByAppKey("ADMIN_EMAIL_TEMPLATE");
            }
        }

        public static String BccEmailAddress
        {
            get
            {
                return new AppSettingBLL().GetAppValueByAppKey("BCC_EMAIL_ADDRESS");
            }
        }

        public static String CcEmailAddress
        {
            get
            {
                return new AppSettingBLL().GetAppValueByAppKey("CC_EMAIL_ADDRESS");
            }
        }

        public static String QualityEmailAddress
        {
            get
            {
                return new AppSettingBLL().GetAppValueByAppKey("Quality_EMAIL_ADDRESS");
            }
        }
    }
}