using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace YPortal.Helpers
{
    public class MessageHelpers
    {
        public static void ShowMessage(HtmlGenericControl div, string msg, bool isSuccess)
        {
            div.InnerHtml = msg;
            div.Style.Add("display", "block");
            if (isSuccess)
            {
                div.Attributes.Add("class", "alert alert-success");
            }
            else
            {
                div.Attributes.Add("class", "alert alert-error");
            }
        }


        public class BusinessMessage
        {
            public const string INVALID_USER_PASS = "Invalid Username or Password. Please try again.";
        }
    }
}