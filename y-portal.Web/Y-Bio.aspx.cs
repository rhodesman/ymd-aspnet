using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;

using log4net;
using log4net.Config;
using log4net.Repository;
using log4net.Repository.Hierarchy;

namespace YPortal.Web
{
    public partial class Y_Bio : YBasePage
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="e"></param>
        protected override void OnLoad(EventArgs e)
        {
            if (!String.IsNullOrEmpty(MenuLv1))
            {
                bioTab1.EntryId = MenuLv1;
                bioTab1.QueryContentType = "Page";
                bioTab1.QueryContentField = "URL";
            }
            base.OnLoad(e);
        }
    }
}