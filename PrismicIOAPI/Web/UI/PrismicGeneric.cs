using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Newtonsoft.Json.Linq;
using PrismicIOAPI.Ext;


namespace PrismicIOAPI.Web.UI
{

    [DefaultProperty("ContentId")]
    [ToolboxData("<{0}:PrismicGeneric runat=server></{0}:PrismicGeneric>")]
    public class PrismicGeneric : BasePrismic, ICallbackEventHandler
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="e"></param>
        protected override void OnLoad(EventArgs e)
        {
            if (this.Async)
            {
                string _callbackMethod = null;
                if (!String.IsNullOrEmpty(this.Callback))
                {
                    _callbackMethod = string.Format("{0}(arg, context);", this.Callback);
                }
                string _callbackHandler = Page.ClientScript.GetCallbackEventReference(this, "args", String.Format("{0}procResult", this.ClientID), "context");
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "ClientCallBackRqst",
                                                            String.Format(CLIENT_CALLBACK_RQST_TEMPLATE, this.ClientID, _callbackHandler), true);
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "ClientCallBackRsp",
                                                             String.Format(CLIENT_CALLBACK_RSP_TEMPLATE, this.ClientID, _callbackMethod ?? _callbackMethod), true);
            }
        }



        /// <summary>
        /// 
        /// </summary>
        /// <param name="writer"></param>
        protected override void Render(HtmlTextWriter writer)
        {
            if (!String.IsNullOrEmpty(this.ContentTypeId) || !String.IsNullOrEmpty(this.EntryId))
            {
                writer.Write(!this.Async ? FormattedContent : "Loading....");
            }
        }

        #region ICallbackEventHandler Implementation

        /// <summary>
        ///  Return Async Call result
        /// </summary>
        /// <returns></returns>
        public string GetCallbackResult()
        {
            return m_callbackResult;
        }


        /// <summary>
        /// Async Call Handle
        /// </summary>
        /// <param name="eventArgument"></param>
        public void RaiseCallbackEvent(string eventArgument)
        {
            //TODO REMOVE Long running Code:
            // System.Threading.Thread.Sleep(5000);
            m_callbackResult = FormattedContent;
        }

        #endregion ICallbackEventHandler Implementation


        //protected string HTMLEncode(string value)
        //{
        //    value = value.Replace("&", "_AND_");
        //    return HttpContext.Current.Server.HtmlEncode(value);
        //}

        //protected string HTMLDecode(string value)
        //{
        //    if (String.IsNullOrEmpty(value))
        //    {
        //        return null;
        //    }
        //    value = value.Replace("_AND_", "&");
        //    return HttpContext.Current.Server.HtmlDecode(value);
        //}

    }
}
