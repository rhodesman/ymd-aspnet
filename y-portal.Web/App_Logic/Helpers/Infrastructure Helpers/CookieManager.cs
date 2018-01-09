using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace YPortal.Helpers
{
    public class CookieManager
    {
        public static bool SetCookieValue(string key, string value, DateTime expires)
        {
            if (IsCookieExists(key))
            {
                HttpCookie oldCookie = HttpContext.Current.Request.Cookies[key];
                oldCookie.Expires = DateTime.Now.AddDays(-1); ;
                System.Web.HttpContext.Current.Response.Cookies.Add(oldCookie);
            }
            HttpCookie cookie = new HttpCookie(key, value);
            cookie.Expires = expires;
            HttpContext.Current.Response.Cookies.Add(cookie);
            if (IsCookieExists(key))
            {
                return true;
            }
            return false;
        }

        public static string GetCookieValue(string key)
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies[key];
            if (cookie != null)
            {
                return cookie.Value;
            }
            return string.Empty;
        }

        public static bool RemoveCookie(string key)
        {
            if (IsCookieExists(key))
            {
                HttpCookie cookie = HttpContext.Current.Request.Cookies[key];
                cookie.Expires = DateTime.Now.AddDays(-1); ;
                HttpContext.Current.Response.Cookies.Add(cookie);
                return true;
            }
            return false;
        }

        public static bool IsCookieExists(string key)
        {
            if (HttpContext.Current.Request.Cookies[key] != null)
            {
                return true;
            }
            return false;
        }

        public static void ClearCookie()
        {
            string[] myCookies = HttpContext.Current.Request.Cookies.AllKeys;
            foreach (string cookie in myCookies)
            {
                var httpCookie = HttpContext.Current.Response.Cookies[cookie];
                if (httpCookie != null) httpCookie.Expires = DateTime.Now.AddDays(-1);
            }
        }
    }
}