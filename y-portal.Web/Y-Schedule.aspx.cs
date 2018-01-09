using System;
using System.Configuration;
using System.Web.UI;

namespace YPortal.Web
{
    public partial class Y_Schedule : Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            apiEndpoint.Value = ConfigurationManager.AppSettings.Get("AdminService.ApiEndpoint");
        }
        
    }
}