using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI;
using Microsoft.FSharp.Core;
using prismic;
using prismic.extensions;
using PrismicIOAPI.Ext;
using PrismicIOAPI.Utility;

namespace YPortal.Web.Controls
{
    public class YGenericTabControl : YGenericControl, ICallbackEventHandler
    {
        protected const string HEADER_LAYOUT_TEMPLATE = @"<p>{0}</p>";
        protected const string FRAGMENT_LAYOUT_TEMPLATE = @"<div class=""col-md-{0}"">{1}</div>";
        /// <summary>
        /// 
        /// </summary>
        protected override string FormattedContent
        {
            get
            {
                string html = null;
                StringBuilder sbHtml = null;
                string header = null;
                string contentHtml = "Table Document was found, but the content is not defined";

                FSharpOption<Fragments.Fragment> contentHeaderFragment = null;
                FSharpOption<Fragments.Fragment> contentGroupFragment = null;
                FSharpOption<Fragments.Fragment> colsFragment = null;
                int cols = 0;

                #region Document Verification
                if (PrismicDocument == null)
                {
                    var documents = RawContent as List<prismic.Api.Document>;
                    if (documents == null)
                    {
                        return html;
                    }
                    PrismicDocument = documents.FirstOrDefault();
                }

                if (PrismicDocument == null)
                {
                    return "Document was not found";
                }

                #endregion Document Verification

                //if (PrismicDocument.id == "VEaGPCcAACcA4wKZ")
                //{
                //    var foo = 11;
                //}

                #region Get Fragments
                contentHeaderFragment = PrismicDocument.Get(String.Format("{0}.{1}", PrismicDocument.typ, "HeaderText"));
                contentGroupFragment = PrismicDocument.Get(String.Format("{0}.{1}", PrismicDocument.typ, "elements"));
                colsFragment = PrismicDocument.Get(String.Format("{0}.{1}", PrismicDocument.typ, "columns"));
                #endregion Get Fragments

                var resolver = PrismicUtils.GetDocumentLinkResolver();

                if (colsFragment != null)
                {
                    var colsNumVal = colsFragment.Value as prismic.Fragments.Fragment.Number;
                    if (colsNumVal != null)
                    {
                        double colsTemp = colsNumVal.Item;
                        cols = Convert.ToInt32(Math.Round(Convert.ToDouble(12 / Convert.ToInt32(colsTemp)), 0, MidpointRounding.ToEven));
                    }
                }


                if (contentHeaderFragment != null || contentGroupFragment != null)
                {
                    sbHtml = new StringBuilder();
                }


                if (contentHeaderFragment != null)
                {
                    header = contentHeaderFragment.Value.AsHtml(resolver);
                    header = string.Format(HEADER_LAYOUT_TEMPLATE, header.MarkdownToHTML(true, true, false));
                    sbHtml.Append(header);
                }

                if (contentGroupFragment != null)
                {
                    var contentGroup = contentGroupFragment.Value as prismic.Fragments.Fragment.Group;
                    if (contentGroup != null)
                    {
                        var contentList = contentGroup.Item.ToList();
                        if (contentList != null && contentList.Count > 0)
                        {
                            contentList.ForEach(contentElem =>
                            {
                                var contentFragment = contentElem.Get("content");
                                var content = contentFragment.BindAsHtml(resolver);
                                if (content != null)
                                {
                                    sbHtml.Append(String.Format(FRAGMENT_LAYOUT_TEMPLATE, cols, content.Value.MarkdownToHTML(true, true, false)));
                                }
                            });
                        }
                    }
                }
                html = String.Format(CONTROL_LAYOUT_TEMPLATE, sbHtml == null ? contentHtml : sbHtml.ToString(), ActionButton, PageImageUrl, PrismicDocument.id, RemarketingPixel, "");
                html = CorrectRelLinks(html);
                return html;
            }
        }



        /// <summary>
        /// 
        /// </summary>
        /// <param name="writer"></param>
        protected override void Render(HtmlTextWriter writer)
        {
            string _HTML = null;
            if (!String.IsNullOrEmpty(this.ContentTypeId) || !String.IsNullOrEmpty(this.EntryId))
            {
                string ctrlId = string.Format("YGTC_{0}.{1}.{2}", ID, ContentTypeId, EntryId);
                if (isCached)
                {
                    CacheController.GetCachedObject<String>(ref _HTML, ctrlId);
                    if (_HTML == null)
                    {
                        _HTML = FormattedContent;
                        CacheController.GetCachedObject<String>(ref _HTML, ctrlId);
                    }
                }
                else
                {
                    _HTML = FormattedContent;
                }
                writer.Write(!this.Async ? _HTML : "Loading....");
            }
            else
            {
                _HTML = "Could not locate content";
                writer.Write(!this.Async ? _HTML : "Loading....");
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

    }
}