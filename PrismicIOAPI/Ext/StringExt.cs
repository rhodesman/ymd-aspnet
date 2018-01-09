using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace PrismicIOAPI.Ext
{
    public static class StringExt
    {

        public static string HTMLEncode(this string value)
        {
            value = value.Replace("&", "_AND_");
            return HttpContext.Current.Server.HtmlEncode(value);
        }

        public static string HTMLDecode(this string value)
        {
            if (String.IsNullOrEmpty(value))
            {
                return null;
            }
            value = value.Replace("_AND_", "&");
            return HttpContext.Current.Server.HtmlDecode(value);
        }
    }
}
