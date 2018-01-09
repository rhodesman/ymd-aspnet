using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YPortal.Web.App_Resources
{
    public partial class YContent_Default : System.Web.UI.MasterPage
    {
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            Page.Header.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}