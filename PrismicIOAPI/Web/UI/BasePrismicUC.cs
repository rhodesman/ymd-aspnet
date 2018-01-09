using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Hosting;
using System.IO;
using PrismicIOAPI.api;

using prismic;
using prismic.extensions;

using PrismicIOAPI.Ext;


namespace PrismicIOAPI.Web.UI
{
    public class BasePrismicUC : UserControl
    {
        #region Fields


        private const string FULLTEXT_SEARCH_TEMPLATE = @"[[:d = fulltext(my.{0}.{1},""{2}"")]]";
        private const string FULLTEXT_SEARCH_TEMPLATE_TYPE = @"[[:d = fulltext(my.{0}.{1},""{3}"")] [:d = fulltext(my.{0}.{2},""{4}"")]]";

        private string _baseUrl = null;

        private string _EntryId = null;
        protected string m_callbackResult = String.Empty;
        protected const string CLIENT_CALLBACK_RSP_TEMPLATE = @"function {0}procResult(arg, context){{                                                                                                                             
                                                                    document.getElementById('{0}').innerHTML = arg;
                                                                    {1}
                                                               }}";

        protected const string CLIENT_CALLBACK_RQST_TEMPLATE = @"function {0}serverRequest(args, context){{
                                                                {1};
                                                              }}                                                                                                                           
                                                              setTimeout('{0}serverRequest();',0);";

        private const string CDATA = "<pre><code>{0}</code></pre>";

        private const string CONTROL_LAYOUT_TEMPLATE = @"<div class=""col-md-7"">
                                                        <div class=""main-body"">
                                                            {0}
                                                        </div>
                                                        </div>
                                                        <div class=""col-lg-5"">
                                                            <div class=""side-bar"">
                                                            {1}
                                                        </div>
                                                        </div>";


        #endregion Fields

        [Description("ClientIdentifier"), Browsable(true), DefaultValue(""), Category("Appearance"), Bindable(true)]
        public virtual string ClientControlId { get; set; }

        [Description("Content Type Identifier"), Browsable(true), DefaultValue(""), Category("Appearance"), Bindable(true)]
        public virtual string ContentTypeId { get; set; }

        [Description("Entry Identifier"), Browsable(true), DefaultValue(""), Category("Appearance"), Bindable(true)]
        public virtual string EntryId { get; set; }

        [Description("Menu Identifier"), Browsable(true), DefaultValue(""), Category("Appearance"), Bindable(true)]
        public virtual string MenuId { get; set; }



        [Description("Element Type"), Browsable(true), DefaultValue("Page"), Category("Appearance"), Bindable(true)]
        public virtual string ElementTypeID { get; set; }

        [Description("Element Field"), Browsable(true), DefaultValue("Description"), Category("Appearance"), Bindable(true)]
        public virtual string FieldID { get; set; }




        [Description("Group Entry Identifier"), Browsable(true), DefaultValue(""), Category("Appearance"), Bindable(true)]
        public virtual string GroupEntryId { get; set; }

        [Description("Parent Group Entry Identifier"), Browsable(true), DefaultValue(""), Category("Appearance"), Bindable(true)]
        public virtual string ParentGroup { get; set; }



        [Description("Transformation Rules XSLT"), Browsable(true), DefaultValue(""), Category("Appearance"), Bindable(true)]
        public virtual string Transformation { get; set; }

        [Description("Callback Method"), Browsable(true), DefaultValue(false), Category("Appearance"), Bindable(true)]
        public string Callback { get; set; }

        [Description("Enables Async Processing"), Browsable(true), DefaultValue(false), Category("Appearance"), Bindable(true)]
        public bool Async { get; set; }

        [Description("Enables Control Caching"), Browsable(true), DefaultValue(false), Category("Appearance"), Bindable(true)]
        public bool isCached { get; set; }

        [Description("Displays Debug Data - Useful for development"), Browsable(true), DefaultValue(false), Category("Appearance"), Bindable(true)]
        public bool Debug { get; set; }


        [Description("Prismic Document"), Browsable(false), DefaultValue(false), Category("Data"), Bindable(true)]
        public prismic.Api.Document PrismicDocument { get; set; }






        /// <summary>
        /// 
        /// </summary>
        protected string BaseUrl
        {
            get
            {
                if (String.IsNullOrEmpty(_baseUrl))
                {
                    if (HttpContext.Current == null)
                    {
                        return "dummyURL";
                    }


                    string orginalUrl = HttpContext.Current.Request.Url.AbsoluteUri;
                    if (HttpContext.Current.Request.Url.Query.Length > 0)
                    {
                        orginalUrl = orginalUrl.Replace(HttpContext.Current.Request.Url.Query, string.Empty);
                    }

                    _baseUrl = orginalUrl.Replace(HttpContext.Current.Request.Url.AbsolutePath, string.Empty) + ((HttpContext.Current.Request.ApplicationPath == "/" ? "" : HttpContext.Current.Request.ApplicationPath)) + @"/";
                }
                return _baseUrl;
            }
        }


        /// <summary>
        /// 
        /// </summary>
        protected object RawContent
        {
            get
            {
                return GetContent();
            }
        }

        /// <summary>
        /// 
        /// </summary>
        protected virtual string FormattedContent
        {
            get
            {
                string html = null;
                prismic.Api.Document document = null;
                if (PrismicDocument == null)
                {
                    document = (RawContent as List<prismic.Api.Document>).FirstOrDefault();
                    if (document == null)
                    {
                        return html;
                    }
                }
                else
                {
                    document = PrismicDocument;
                }
                var resolver = prismic.extensions.DocumentLinkResolver.For(l => String.Format("http://localhost/{0}/{1}", l.typ, l.id));
                html = String.Format(CONTROL_LAYOUT_TEMPLATE, document.AsHtml(resolver), "");
                return html;
            }
        }


        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        protected virtual object GetContent()
        {
            List<prismic.Api.Document> dto = null;

            if (!string.IsNullOrEmpty(this.ContentTypeId) || !string.IsNullOrEmpty(this.EntryId))
            {
                var contentController = new ContentController();
                var criteria = string.Format(FULLTEXT_SEARCH_TEMPLATE, this.ElementTypeID, FieldID, EntryId);
                dto = contentController.Get(criteria) as List<prismic.Api.Document>;
            }
            return dto;
        }


        /// <summary>
        /// 
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="id"></param>
        /// <returns></returns>
        protected virtual T GetContent<T>(string id)
        {
            var content = default(T);
            var contentController = new ContentController();
            content = (T)Convert.ChangeType(contentController.Get(id), typeof(T));
            return content;
        }

        
        /// <summary>
        /// 
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="id"></param>
        /// <param name="ordering"></param>
        /// <returns></returns>
        protected virtual T GetContent<T> (string id, string ordering)
        {   
            var content = default(T);
            var contentController = new ContentController();
            content = (T)Convert.ChangeType(contentController.Get(id, ordering), typeof(T));
            return content;
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="rootControl"></param>
        /// <param name="controlID"></param>
        /// <returns></returns>
        protected virtual Control FindControlRecursive(Control rootControl, string controlID)
        {
            if (rootControl.ID == controlID) return rootControl;
            foreach (Control controlToSearch in rootControl.Controls)
            {
                Control controlToReturn =
                    FindControlRecursive(controlToSearch, controlID);
                if (controlToReturn != null)
                {
                    return controlToReturn;
                }
            }
            return null;
        }



        public string ProcessDocument(prismic.Api.Document document)
        {
            return ProcessDocumentFragments(document.fragments.ToList());
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="document"></param>
        public string ProcessDocument(prismic.Fragments.GroupDoc document)
        {
            return ProcessDocumentFragments(document.fragments.ToList());
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="fragments"></param>
        protected string ProcessDocumentFragments(List<System.Tuple<string, prismic.Fragments.Fragment>> fragments)
        {
            string documentId = null;
            System.Collections.IEnumerator fragmentsEnum = fragments.GetEnumerator();

            while (fragmentsEnum.MoveNext())
            {
                var fagmentElem = fragmentsEnum.Current as System.Tuple<string, prismic.Fragments.Fragment>;
                if (fagmentElem == null)
                {
                    break;
                }
                var fragmentlink = fagmentElem.Item2 as prismic.Fragments.Fragment.Link;
                var fragmentGroup = fagmentElem.Item2 as prismic.Fragments.Fragment.Group;

                if (fragmentlink != null)
                {
                    var documentlink = fragmentlink.Item as prismic.Fragments.Link.DocumentLink;
                    if (documentlink != null)
                    {
                        documentId = documentlink.Item.id;
                        break;
                    }
                }

                if (fragmentGroup != null)
                {
                    var groupDocuments = fragmentGroup.Item.ToList();
                    groupDocuments.ForEach(documentElement => ProcessDocument(documentElement));
                }
            }
            return documentId;
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="AssetId"></param>
        /// <param name="AssetType"></param>
        /// <returns></returns>
        protected prismic.Api.Document GetDocument(string AssetId, string AssetType)
        {
            prismic.Api.Document document = null;
            AssetId = AssetId.HTMLDecode();
            var query = String.IsNullOrEmpty(ParentGroup) ? String.Format(FULLTEXT_SEARCH_TEMPLATE, AssetType, "Title", AssetId)
                : String.Format(FULLTEXT_SEARCH_TEMPLATE_TYPE, AssetType, "Title", "ContentGroup", AssetId, ParentGroup);

            var contentcontroller = new ContentController();           

            var documents = GetContent<List<prismic.Api.Document>>(query);
            if (documents != null && documents.Count > 0)
            {
                document = documents.FirstOrDefault();
                contentcontroller.LogMessage(String.Format("Query: {0} Document ID: {1}", query, document.id));
            }


            return document;
        }

        protected string GetHtml(Fragments.GroupDoc document, String field)
        {
            string html = String.Empty;
            if (document == null)
            {
                return html;
            }
            var resolver = DocumentLinkResolver.For(l => String.Format("http://localhost/{0}/{1}", l.typ, l.id));

            var serializer = HtmlSerializer.For((elt, body) =>
            {
                if (elt is Fragments.Span.Hyperlink)
                {
                    var link = ((Fragments.Span.Hyperlink)elt);

                    var mediaLink = link.Item.Item3 as Fragments.Link.MediaLink;
                    if (mediaLink != null && mediaLink.Item.url.Contains("http"))
                    {
                        return String.Format("<a target='_blank' href=\"{0}\">{1}</a>", mediaLink.Item.url, body);
                    }
                    if (mediaLink == null)
                    {
                        var anyLink = link.Item.Item3 as Fragments.Link.WebLink;
                        if (anyLink != null && anyLink.Item.url.Contains("http"))
                        {
                            return String.Format("<a target='_blank' href=\"{0}\">{1}</a>", anyLink.Item.url, body);
                        }
                    }
                }
                return null;
            });

            var fragment = document.Get(field);
            if (fragment != null)
            {
                var fragHtml = fragment.BindAsHtml(resolver, serializer);
                if (fragHtml != null)
                {
                    html = fragHtml.Value;
                }
            }
            return html;
        }
    }
}
