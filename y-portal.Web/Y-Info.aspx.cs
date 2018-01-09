using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PrismicIOAPI.Web.Common.UI;
using PrismicIOAPI.Web.UI;
using YPortal.Web.User_Control.Data;
using log4net;
using PrismicIOAPI.Utility;
using YPortal.Web.App_Logic;
using YPortal.Web.Controls;
using YPortal.Web.User_Control;
using prismic.extensions;

namespace YPortal.Web
{
    public partial class Y_Info : PrismicPage
    {
        private const string CTRL_CACHE_ID_TEMPLATE = "YInfo_{0}_{1}_{2}_{3}";
        private const string DEFAULT_PAGE = "/";
        private static readonly ILog logger = LogManager.GetLogger(typeof(Y_Info));
        private static object lockobj = 1;
        private RouteConfig routingInfo;

        private RouteConfig RoutingInfo
        {
            get
            {
                if (routingInfo == null && !String.IsNullOrEmpty(MenuLv1))
                {
                    routingInfo = new RouteConfig
                    {
                        MnuLv1 = MenuLv1,
                        MnuLv2 = String.IsNullOrEmpty(MenuLv2) ? MenuLv1 : MenuLv2,
                        MnuLv3 = String.IsNullOrEmpty(MenuLv3) ? MenuLv2 : MenuLv3,
                        MnuLv4 = MenuLv4
                    };
                }
                return routingInfo;
            }
        }

        public override void RenderControl(HtmlTextWriter writer)
        {
            string html = null;
            if (RoutingInfo == null)
            {
                Response.Redirect(DEFAULT_PAGE, true);
                return;
            }
            var ctrl_id = HttpContext.Current.Request.Url.AbsolutePath;
            logger.Debug(String.Format("RenderControl: {0}", ctrl_id));

            CacheController.GetCachedObject(ref html, ctrl_id);
            if (html != null)
            {
                logger.Debug(String.Format("Fetched from cache: {0} [{1}] {2}", ctrl_id, html.Length,
                    html.IndexOf("<p><strong>Y Preschool at Weinberg</strong></p>")));
            }
            else
            {
                BindControls();
                var sb = new StringBuilder();
                var tw = new StringWriter(sb);
                var hw = new HtmlTextWriter(tw);
                Render(hw);
                html = sb.ToString();

                logger.Debug(String.Format("Rendered: {0} [{1}] ({2})", ctrl_id, html.Length,
                    html.IndexOf("<p><strong>Y Preschool at Weinberg</strong></p>")));

                //don't store garbage kludge
                if (html.Length > 60000) CacheController.GetCachedObject(ref html, ctrl_id);
            }
            writer.Write(html);
        }

        private void BindControls()
        {
            try
            {
                if (RoutingInfo != null)
                {
                    YCarouselV21.RoutingInfo = RoutingInfo;
                    var localmedia = YCarouselV21.LocalMedia;
                    if (localmedia != null && localmedia.Count > 0)
                    {
                        var isActive = localmedia.Count == 1;
                        localmedia.ForEach(elem =>
                        {
                            var _dtab = new YDTabControl
                            {
                                ID = Common.EncodeClenupLink(elem.MenuItem.Text).ToLower(),
                                MediaInfo = elem,
                                RoutingInfo = RoutingInfo,
                                isActive = isActive,
                                isCached = false
                            };
                            tabcontent.Controls.Add(_dtab);
                        });
                    }
                    else
                    {
                        Response.Redirect(DEFAULT_PAGE, false);
                    }
                }
                else
                {
                    Response.Redirect(DEFAULT_PAGE, false);
                }
            }
            catch (Exception ex)
            {
                //TODO: REVISE
                Debug.WriteLine(ex.ToString());
                Response.Redirect(DEFAULT_PAGE, false);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (RoutingInfo == null)
            {
                Response.Redirect(DEFAULT_PAGE, true);
            }

            if (!IsPostBack)
            {
                SetGoogleTagManagerPixel();
            }
        }

        private void SetGoogleTagManagerPixel()
        {
            var ltrGoogleTagManagerPixel = (Literal)Page.Master.FindControl("ltrGoogleTagManagerPixel");
            if (ltrGoogleTagManagerPixel != null)
            {
                YCarouselV21.RoutingInfo = RoutingInfo;
                var documents = YCarouselV21.LocalMedia;
                var urlMenu3 = string.IsNullOrEmpty(routingInfo.MnuLv3) ? "" : Common.EncodeClenupLink(RoutingInfo.MnuLv3);
                var urlMenu4 = string.IsNullOrEmpty(routingInfo.MnuLv4) ? "" : Common.EncodeClenupLink(RoutingInfo.MnuLv4);

                ltrGoogleTagManagerPixel.Text = Common.GetGoogleTagManagerPixel(documents, urlMenu3, urlMenu4);
            }
        }
    }
}