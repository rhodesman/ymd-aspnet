using System.Collections.Generic;
using System.Web;

namespace YPortal.Helpers
{
    public class SessionManager
    {
        public static int? _LoggedIn_User_Id
        {
            get
            {
                if (HttpContext.Current.Session["_LoggedIn_User_Id"] != null)
                {
                    return HttpContext.Current.Session["_LoggedIn_User_Id"] as int?;
                }
                else
                {
                    return null;
                }
            }
            set
            {
                HttpContext.Current.Session["_LoggedIn_User_Id"] = value;
            }
        }

        public static Dictionary<string, string> _Volunteer_LoggedIn_User
        {
            get
            {
                if (HttpContext.Current.Session["_Volunteer_LoggedIn_User"] != null)
                {
                    return HttpContext.Current.Session["_Volunteer_LoggedIn_User"] as Dictionary<string, string>;
                }
                return null;
            }
            set
            {
                HttpContext.Current.Session["_Volunteer_LoggedIn_User"] = value;
            }
        }
    }
}