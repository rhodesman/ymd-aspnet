using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

using PrismicIOAPI.Web.UI;
using PrismicIOAPI.Utility;
using YPortal.Web.App_Code.Types;
using YPortal.Web.User_Control;


namespace YPortal.Web
{
    public partial class YBasePage : System.Web.UI.Page 
    {


        #region Fields
        private const string _MenuDocTemplate = "<YMenu xmlns='WebbMason'>{0}</YMenu>";
        private const string _SubMenuDocTemplate = "<YSubMenuFormatter xmlns='WebbMason'>{0}</YSubMenuFormatter>";

        private string _EntryId = null;
        private string _MenuId = null;
        private string _GroupEntryId = null;
        private string _ParentGroup = null;
        private string _TypeEntryId = null;

        #endregion Fields


        #region Properties


        private string menuLv1 = null;
        private string menuLv2 = null;
        private string menuLv3 = null;
        private string menuLv4 = null;

        protected string MenuLv1
        {
            get
            {  
                if (this.RouteData.Values["MenuLv1"] != null 
                    && !String.IsNullOrEmpty(this.RouteData.Values["MenuLv1"].ToString()))
                {
                    menuLv1 = this.RouteData.Values["MenuLv1"].ToString();
                    if(menuLv1.Contains("__browserLink")|| menuLv1.Contains("favico"))
                    {
                        menuLv1 = null;
                    }
                }
                return menuLv1;
            }
        }


        protected string MenuLv2
        {
            get
            {
                if (!String.IsNullOrEmpty(this.RouteData.Values["MenuLv2"].ToString()))
                {
                    menuLv2 = this.RouteData.Values["MenuLv2"].ToString();
                }
                return menuLv2;
            }
        }

        protected string MenuLv3
        {
            get
            {
                if (!String.IsNullOrEmpty(this.RouteData.Values["MenuLv3"].ToString()))
                {
                    menuLv3 = this.RouteData.Values["MenuLv3"].ToString();
                }
                return menuLv3;
            }
        }

        protected string MenuLv4
        {
            get
            {
                if (!String.IsNullOrEmpty(this.RouteData.Values["MenuLv4"].ToString()))
                {
                    menuLv4 = this.RouteData.Values["MenuLv4"].ToString();
                }
                return menuLv4;
            }
        }



        /// <summary>
        /// Individual Entry Identifier
        /// </summary>
        
        protected string EntryId
        {
            get
            {

                if (this.RouteData.Values["EntryId"] != null)
                {
                    _EntryId = this.RouteData.Values["EntryId"].ToString();
                }
                return _EntryId;
            }
        }

        /// <summary>
        /// 
        /// </summary>
        protected string MenuId
        {
            get
            {

                if (!String.IsNullOrEmpty(this.RouteData.Values["MenuId"].ToString()) )
                {
                    _MenuId = this.RouteData.Values["MenuId"].ToString();
                }
                return _MenuId;
            }
        }

        /// <summary>
        /// Group Entry Identifier
        /// </summary>
        protected string GroupEntryId
        {
            get
            {
                if (this.RouteData.Values["GroupEntryId"] != null)
                {
                    _GroupEntryId = this.RouteData.Values["GroupEntryId"].ToString();
                }
                return _GroupEntryId;
            }
        }


        protected string ParentGroup
        {
            get
            {
                if (HttpContext.Current.Session["ParentGroup"] != null)
                {
                    _ParentGroup = HttpContext.Current.Session["ParentGroup"].ToString();
                }
                return _ParentGroup;
            }
        }



        

        /// <summary>
        /// Group Entry Identifier
        /// </summary>
        protected string TypeEntryId
        {
            get
            {
                if (HttpContext.Current.Session["TypeEntryId"] != null)
                {
                    _TypeEntryId = HttpContext.Current.Session["TypeEntryId"].ToString();
                }
                return _TypeEntryId;
            }
        }

        #endregion Properties


        /// <summary>
        /// 
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        protected string HTMLEncode(string link)
        {
            if (!String.IsNullOrEmpty(link))
            {
                link = link.Trim();
                link = link.Replace(" ", "_");
                link = link.Replace(",", "_cm_");
                link = link.Replace("&", "_And_");
                link = link.Replace("<small>", "_small_ot_");
                link = link.Replace("</small>", "_small_ct_");
                link = link.Replace("<br>", "_br_");
                link = link.Replace("<br/>", "_br1_");

                link = Regex.Replace(link, @"<[^>]*>", String.Empty);
            }
            return link;
        }


        //protected string EncodeClenupLink(string link)
        //{
        //    if (!String.IsNullOrEmpty(link))
        //    {
        //        link = link.Trim();
        //        link = link.Replace(" ", String.Empty);
        //        link = link.Replace(",", String.Empty);
        //        link = link.Replace("&", String.Empty);
        //        link = link.Replace("<small>", String.Empty);
        //        link = link.Replace("</small>", String.Empty);
        //        link = link.Replace("<br>", String.Empty);
        //        link = link.Replace("<br/>", String.Empty);
        //        link = link.Replace("blank", String.Empty);
        //        link = link.Replace("//", "/");

        //        link = Regex.Replace(link, @"<[^>]*>", String.Empty);
        //        link = link.ToLower();
        //    }
        //    return link;
        //}


        /// <summary>
        /// 
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        protected string HTMLDecode(string link)
        {
            if (!String.IsNullOrEmpty(link))
            {
                link = link.Replace("_And_", "&");
                link = link.Replace("_cm_", ",");
                link = link.Replace("_small_ot_", "<small>");
                link = link.Replace("_small_ct_", "</small>");
                link = link.Replace("_br_", "<br>");
                link = link.Replace("_br1_", "<br/>");

                link = link.Replace("_", " ");
            }

            return link;
        }

        

    }
}