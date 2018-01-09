using System;
using YPortal.Web.User_Control;

namespace YPortal.Web.footer
{
    public partial class sponsors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            YDCarouselInfoV21.RoutingInfo = new RouteConfig
            {
                MnuLv1 = "sponsors",
                MnuLv2 = "sponsors",
                MnuLv3 = "",
                MnuLv4 = ""
            };
        }
    }
}