using System;
using PrismicIOAPI.Web.Common.UI;
using YPortal.Helpers;
using System.Collections.Generic;

namespace YPortal.Web.footer
{
    public partial class volunteer_login : PrismicPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var menuLevel2 = Page.RouteData.Values["MenuLv2"] != null ? Page.RouteData.Values["MenuLv2"].ToString() : "";
            var menuLevel3 = Page.RouteData.Values["MenuLv3"] != null ? Page.RouteData.Values["MenuLv3"].ToString() : "";

            if (SessionManager._Volunteer_LoggedIn_User != null)
            {
                Context.Items["menuLevel2"] = menuLevel2;
                Context.Items["menuLevel3"] = menuLevel3;
                Server.Transfer("~/footer/volunteer-content.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtPassword.Text))
            {
                if (ValidateLogin(txtPassword.Text.Trim()))
                {
                    var menuLevel2 = Page.RouteData.Values["MenuLv2"] != null ? Page.RouteData.Values["MenuLv2"].ToString() : "";
                    var menuLevel3 = Page.RouteData.Values["MenuLv3"] != null ? Page.RouteData.Values["MenuLv3"].ToString() : "";
                    Context.Items["menuLevel2"] = menuLevel2;
                    Context.Items["menuLevel3"] = menuLevel3;
                    Server.Transfer("~/footer/volunteer-content.aspx");
                }
                else
                {
                    MessageHelpers.ShowMessage(divMessage, MessageHelpers.BusinessMessage.INVALID_USER_PASSWORD, "alert alert-danger");
                }
            }
            else
            {
                MessageHelpers.ShowMessage(divMessage, MessageHelpers.BusinessMessage.USERNAME_PASS_REQ, "alert alert-danger");
            }
        }

        private bool ValidateLogin(string password)
        {
            DataSource = "[[:d=at(document.type,\"password\")]]";
            var documents = FetchContent();

            foreach (var document in documents)
            {
                var sectionFragment = (document.fragments.Inner[0].Item2 as prismic.Fragments.Fragment.Text).Item;
                var passwordFragment = (document.fragments.Inner[1].Item2 as prismic.Fragments.Fragment.Text).Item;

                if (passwordFragment == password)
                {
                    SessionManager._Volunteer_LoggedIn_User = new Dictionary<string, string> { { sectionFragment, passwordFragment } };
                    return true;
                }
            }
            return false;
        }
    }
}