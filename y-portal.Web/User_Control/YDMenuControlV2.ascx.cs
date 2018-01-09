using System.IO;
using System.Text;
using System.Web.UI;
using PrismicIOAPI.Utility;

namespace YPortal.Web.User_Control
{
    public partial class YDMenuControlV2 : YBaseUC
    {

     private const string CTRL_CACHE_ID = "YMenu";

     public override void RenderControl(HtmlTextWriter writer)
        {
            string  html  = null;
            CacheController.GetCachedObject(ref html, CTRL_CACHE_ID);

            if (html == null)
            {
                var sb = new StringBuilder();
                var tw = new StringWriter(sb);
                var hw = new HtmlTextWriter(tw);
                Render(hw);
                html = sb.ToString();
                CacheController.GetCachedObject(ref html, CTRL_CACHE_ID);
            }
            writer.Write(html);
        }
    }
}