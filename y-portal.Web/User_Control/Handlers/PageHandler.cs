using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;

using System.Web;
using System.Web.UI;
using System.Web.Compilation;
using System.Web.SessionState;
using System.Text;

using System.IO;
using System.Xml;
using System.Configuration;
using System.Collections.Specialized;

//using ContentfulAPI.Utility;
//using ContentfulAPI.api;
//using ContentfulAPI.Web.UI;

using PrismicIOAPI.Web.UI;
using PrismicIOAPI.Utility;
using PrismicIOAPI.Util;
using YPortal.Web.App_Code.Types;

using Debug = System.Diagnostics.Debug;


namespace YPortal.Web.App_Code.Handlers
{

    internal class LinkMatch
    {
        public double MatchProbability { get; set; }
        public Controls.MenuElement MenuItem { get; set; }
    }



    public class PageHandler : BasePrismic, IHttpHandler,  IRequiresSessionState
    {
        private const string _MenuDocTemplate = "<YMenu xmlns='WebbMason'>{0}</YMenu>";
        private const string ACTION_LINK_TEMPLATE = "{0}{1}?GroupEntryId={2}&EntryID={3}&LinkID={4}&ContentType={5}&ParentGroup={6}&MenuID={7}";
        private const string DEFAULT_PAGE = "default.aspx";
        private static List<String> exludedpages;

        /// <summary>
        /// TODO: Get it from Config;
        /// </summary>
        private static List<String> ExludedPages
        {
            get
            {
                if (exludedpages == null)
                {

                   string exludedpagesTemp =  ConfigurationManager.AppSettings.Get("ExludePages");

                   if (!String.IsNullOrEmpty(exludedpagesTemp))
                   {
                       exludedpages = exludedpagesTemp.Split(';').ToList();
                   }
                   
                }
                return exludedpages;
            }
        }



        /// <summary>
        /// 
        /// </summary>
        public bool IsReusable
        {
            get { return false; }
        }


        /// <summary>
        /// Custom page handler
        /// </summary>
        /// <param name="context"></param>
        public void ProcessRequest(HttpContext context)
        {
            string filepath = context.Request.FilePath;
            string _tempFilepath = null;
            string lookupPath = filepath;


            try
            {
                if (filepath != null)
                {
                    if (File.Exists(context.Server.MapPath(filepath)))
                    {
                        _tempFilepath = filepath;
                    }
                    else
                    {
                        filepath = filepath.Replace(@"/footer", String.Empty);
                        if (File.Exists(context.Server.MapPath(filepath)))
                        {
                            _tempFilepath = filepath;
                        }
                    }
                }

                string assetid = Path.GetFileName(filepath);
                if (assetid.Equals(DEFAULT_PAGE, StringComparison.InvariantCultureIgnoreCase))
                {
                    ResetSession(context);
                }

                if (context.Request.ApplicationPath != "/")
                {
                    lookupPath = filepath.Replace(context.Request.ApplicationPath, string.Empty);
                }

                if (!ExludedPages.Contains(assetid))
                {
                    filepath = PageLookup(lookupPath);

                    if (!String.IsNullOrEmpty(filepath))
                    {
                        context.Response.Redirect(filepath);
                    }
                }


                if (context.Request.RawUrl.Contains("GroupEntryId"))
                {
                    var queryString = string.Join(string.Empty, context.Request.RawUrl.Split('?').Skip(1));
                    NameValueCollection query = System.Web.HttpUtility.ParseQueryString(queryString);
                    context.Session["GroupEntryId"] = query["GroupEntryId"];
                    context.Session["ParentGroup"] = query["ParentGroup"];
                    context.Session["EntryID"] = query["EntryID"];
                    context.Session["LinkID"] = query["LinkID"];
                    context.Session["MenuID"] = query["MenuID"];
                    context.Response.Redirect(filepath,false);
                }

                if (!String.IsNullOrEmpty(_tempFilepath))
                {
                    Type compiledtype = BuildManager.GetCompiledType(_tempFilepath);
                    Page pageinstance = (Page)Activator.CreateInstance(compiledtype);
                    pageinstance.ProcessRequest(context);
                }
                else
                {
                    context.Response.Redirect(DEFAULT_PAGE, false);
                    //context.Response.Write(String.Format("Page Not Found: {0};<br/>Application Path: {1}", lookupPath, context.Request.ApplicationPath));
                }

            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.ToString());
            }

        }



        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        private string PageLookup(string RequestId)
        {
            string lookupURL = null;            
            var assetid = Path.GetFileName(RequestId);            
            string genericPage = ConfigurationManager.AppSettings.Get("GenericYPage");
            if (String.IsNullOrEmpty(genericPage))
            {
                return lookupURL;
            }
            var _YMenuElement = Global.MenuData.FirstOrDefault(elem => elem.PageLookup != null && elem.PageLookup.Contains(RequestId));            
            if (_YMenuElement == null)
            {                
                _YMenuElement = Global.MenuData.FirstOrDefault(elem => elem.PageLookup != null && elem.PageLookup.Contains(assetid));
            }
            if (_YMenuElement == null)
            {               
                _YMenuElement = GetMatch(assetid);
            }

            if (_YMenuElement != null)
            {
                lookupURL = string.Format(ACTION_LINK_TEMPLATE,
                                              BaseUrl,
                                              String.IsNullOrEmpty(_YMenuElement.action) ? genericPage : _YMenuElement.action, 
                                              String.IsNullOrEmpty(_YMenuElement.contentTypeId) ? _YMenuElement.Text : _YMenuElement.contentTypeId, 
                                              String.IsNullOrEmpty(_YMenuElement.SubDocumentId) ? _YMenuElement.Id.ToString() : _YMenuElement.SubDocumentId,
                                              String.IsNullOrEmpty(_YMenuElement.SubDocumentId) ? _YMenuElement.Id.ToString() : _YMenuElement.SubDocumentId,
                                              String.IsNullOrEmpty(_YMenuElement.ContentType) ? "Page" : _YMenuElement.ContentType, 
                                              String.IsNullOrEmpty(_YMenuElement.ParentGroup) ? String.Empty : _YMenuElement.ParentGroup, 
                                              _YMenuElement.Id); 
            }


            return lookupURL;
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="lookup"></param>
        /// <returns></returns>
        private Controls.MenuElement GetMatch(string lookup)
        {
            Controls.MenuElement menuIem = null;
            lookup = lookup.Replace(".aspx", string.Empty);

            if (Global.DLinks != null)
            {
                List<LinkMatch> linkMatchList = new List<LinkMatch>();

                    Global.DLinks.ForEach(menuelem =>
                    {
                        LinkMatch linkMatch = new LinkMatch
                        {
                            MenuItem = menuelem,
                            MatchProbability = PrismicIOAPI.Util.NGram.CompareBigram(lookup, menuelem.Text)
                        };
                        linkMatchList.Add(linkMatch);

                    });

                    if (linkMatchList.Count > 0)
                    {
                        double maxmatch = linkMatchList.Max(elem => elem.MatchProbability);
                        if (maxmatch > 0.6)
                        {
                            menuIem = linkMatchList.FirstOrDefault(elem => elem.MatchProbability == maxmatch).MenuItem;
                        }
                    }
            }
            return menuIem;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="context"></param>
        private void ResetSession(HttpContext context)
        {
            context.Session["GroupEntryId"] = null;
            context.Session["ParentGroup"] = null;
            context.Session["EntryID"] = null;
            context.Session["LinkID"] = null;
            context.Session["MenuID"] = null;
        }

    }
}
