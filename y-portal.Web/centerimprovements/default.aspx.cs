using System;
using YPortal.Web.User_Control;

namespace YPortal.Web.centerimprovements
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var menuLevel1 = "centerimprovements";
            var menuLevel2 = Page.RouteData.Values["MenuLv2"] != null ? Page.RouteData.Values["MenuLv2"].ToString() : "";
            var menuLevel3 = Page.RouteData.Values["MenuLv3"] != null ? Page.RouteData.Values["MenuLv3"].ToString() : "";

            if (string.IsNullOrEmpty(menuLevel2))
            {
                menuLevel2 = "annearundelharfordcounty";
            }

            YDTabControl1.RoutingInfo =
            YDTabControl2.RoutingInfo =
            YDTabControl3.RoutingInfo =
            YDTabControl4.RoutingInfo =
            YDTabControl5.RoutingInfo =
            YDTabControl6.RoutingInfo =
            YDCarouselInfoV21.RoutingInfo = new RouteConfig
            {
                MnuLv1 = menuLevel1,
                MnuLv2 = String.IsNullOrEmpty(menuLevel2) ? menuLevel1 : menuLevel2,
                MnuLv3 = String.IsNullOrEmpty(menuLevel3) ? menuLevel2 : menuLevel3,
                MnuLv4 = ""
            };
        }
    }
}