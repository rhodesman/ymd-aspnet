﻿using System;
using YPortal.Web.User_Control;

namespace YPortal.Web.footer
{
    public partial class financial_assistance : YBasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var menuLevel1 = "financialassistance";
            var menuLevel2 = Page.RouteData.Values["MenuLv2"] != null ? Page.RouteData.Values["MenuLv2"].ToString() : "";
            var menuLevel3 = Page.RouteData.Values["MenuLv3"] != null ? Page.RouteData.Values["MenuLv3"].ToString() : "";


            YDTabControlFA.RoutingInfo = new RouteConfig
            {
                MnuLv1 = menuLevel1,
                MnuLv2 = String.IsNullOrEmpty(menuLevel2) ? menuLevel1 : menuLevel2,
                MnuLv3 = String.IsNullOrEmpty(menuLevel3) ? menuLevel2 : menuLevel3,
                MnuLv4 = ""
            };
        }
    }
}