using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.IO;

using PrismicIOAPI;
using PrismicIOAPI.Web.UI;
using PrismicIOAPI.Ext;
using PrismicIOAPI.Utility;

namespace YPortal.Web.User_Control
{
    public partial class YDSiteMapControlV2 : YBaseUC
    {
        private const string CTRL_CACHE_ID = "YSiteMap";

        /// <summary>
        /// 
        /// </summary>
        /// <param name="writer"></param>
        public override void RenderControl(HtmlTextWriter writer)
        {
            string html = null;
            CacheController.GetCachedObject<String>(ref html, CTRL_CACHE_ID);

            if (html == null)
            {
                StringBuilder sb = new StringBuilder();
                StringWriter tw = new StringWriter(sb);
                HtmlTextWriter hw = new HtmlTextWriter(tw);
                this.Render(hw);
                html = sb.ToString();
                CacheController.GetCachedObject<String>(ref html, CTRL_CACHE_ID);
            }
            writer.Write(html);
        }
    }
}