using System;
using System.Linq;
using PrismicIOAPI.Web.Common.UI;
using YPortal.Helpers;
using YPortal.Web.User_Control;

namespace YPortal.Web.footer
{
    public partial class volunteer_content : PrismicPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var loggedInUser = SessionManager._Volunteer_LoggedIn_User;
            if (loggedInUser == null)
            {
                Response.Redirect("/volunteerlogin");
            }

            var menuLevel1 = "volunteercontent";

            var menuLevel2 = Context.Items["menuLevel2"].ToString();
            var menuLevel3 = Context.Items["menuLevel3"].ToString();

            if (string.IsNullOrEmpty(menuLevel2))
            {
                menuLevel2 = "General Information";
                menuLevel3 = "overview";
            }

            YDTabControl1.RoutingInfo =
            YDTabControl2.RoutingInfo =
            YDTabControl3.RoutingInfo =
            YDTabControl4.RoutingInfo =
            YDCarouselInfoV21.RoutingInfo = new RouteConfig
            {
                MnuLv1 = menuLevel1,
                MnuLv2 = String.IsNullOrEmpty(menuLevel2) ? menuLevel1 : menuLevel2,
                MnuLv3 = String.IsNullOrEmpty(menuLevel3) ? menuLevel2 : menuLevel3,
                MnuLv4 = ""
            };

            YDTabControl4.HiddenTabs = loggedInUser.First().Key.Replace(".", "").Replace(" ", "");
        }
    }
}