using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;

using System.Web;
using System.Web.SessionState;
using System.IO;
using System.Xml;
using ContentfulAPI.Utility;
using ContentfulAPI.api;


namespace YPortal.Web.App_Code.Handlers
{
    public class AssetHandler  : IHttpHandler, IReadOnlySessionState
    {
        private delegate void DelClearFile(string filename);

        public bool IsReusable
        {
            get { return false; }
        }



        /// <summary>
        /// 
        /// </summary>
        /// <param name="context"></param>
        public void ProcessRequest(HttpContext context)
        {
            string _file = null;
            AssetsController assetsController = new AssetsController();
            string assetid = Path.GetFileName(context.Request.FilePath);
            var json = assetsController.Get(assetid).ToString();
            XmlDocument Items = Newtonsoft.Json.JsonConvert.DeserializeXmlNode(json, "items");
            var urlList = Items.GetElementsByTagName("url");
            if (urlList != null && urlList.Count > 0)
            {
                context.Response.Redirect(urlList.Item(0).InnerText);     
                context.Response.End();

                //_file = string.Format(@"c:\temp\{0}", assetid);
                //if (DownloadFile(context, _file, urlList.Item(0).InnerText))
                //{
                //    context.Response.Clear();
                //    context.Response.ContentType = "application/pdf";
                //    context.Response.AddHeader("Content-Disposition", "attachment; filename=" + assetid);
                //    context.Response.TransmitFile(_file);

                //    // DelClearFile cleardel = new DelClearFile(ClearFile);

                //    // cleardel.BeginInvoke(_file, null, null);
                //    context.Response.End();
                //}


            }
            else
            {
                context.Response.Write(String.Format("File:{0} <br/> Not found!", assetid));
                context.Response.End();
            }
        }

               


        /// <summary>
        /// 
        /// </summary>
        /// <param name="file"></param>
        /// <param name="url"></param>
        /// <returns></returns>
        private bool DownloadFile(HttpContext context, string file, string url)
        {
            bool _ret = false;
            WebClient client = new WebClient();
            url = url.Replace("//", "http://");
            client.DownloadFile(url, file);
            _ret = File.Exists(file);
            return _ret;
        }

        /// <summary>
        /// Removes temp file
        /// </summary>
        /// <param name="FileName"></param>
        private void ClearFile(string FileName)
        {
            System.Threading.Thread.Sleep(5000);
            if (File.Exists(FileName))
            {
                File.Delete(FileName);
            }
        }
    }
}
