using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

using System.Text;
using System.IO;
using System.Text.RegularExpressions;
using Microsoft.FSharp.Core;

using prismic;
using prismic.extensions;
using PrismicIOAPI;
using PrismicIOAPI.api;
using PrismicIOAPI.Utility;

namespace PrismicIOAPI.Web.UI
{
    public abstract class PrismicControl : UserControl
    {


        private ContentController _contentController = null;
        private prismic.Api.Document pageDocument = null;
        private List<prismic.Api.Document> pageDocuments = null;
        private static object lockobj = 1;

        protected virtual String DataSource { get; set; }



        /// <summary>
        /// 
        /// </summary>
        private ContentController Controller
        {
            get
            {
                if (_contentController == null)
                {
                    _contentController = new ContentController();
                }
                return _contentController;
            }
        }


        /// <summary>
        /// 
        /// </summary>
        protected prismic.Api.Document PageDocument
        {
            get
            {
                if (pageDocument == null)
                {

                    if (PageDocuments != null && PageDocuments.Count > 0)
                    {
                        pageDocument = PageDocuments.FirstOrDefault();
                    }
                }
                return pageDocument;
            }
            set
            {
                pageDocument = value;
            }
        }


        protected List<prismic.Api.Document> PageDocuments
        {
            get
            {
                if (pageDocument == null)
                {
                    pageDocuments = FetchContent();

                }
                return pageDocuments;
            }
            set
            {
                pageDocuments = value;
            }
        }



        /// <summary>
        /// 
        /// </summary>
        protected virtual void BindControls() { }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="writer"></param>
        //public override void RenderControl(HtmlTextWriter writer)
        //{
        //    lock (lockobj)
        //    {
        //        string html = null;

        //        var ctrl_id = HttpContext.Current.Request.Url.AbsolutePath;

        //       // CacheController.GetCachedObject<String>(ref html, ctrl_id);
        //        if (html == null)
        //        {
        //            BindControls();
        //            StringBuilder sb = new StringBuilder();
        //            StringWriter tw = new StringWriter(sb);
        //            HtmlTextWriter hw = new HtmlTextWriter(tw);
        //            this.Render(hw);
        //            html = sb.ToString();
        //            CacheController.GetCachedObject<String>(ref html, ctrl_id);
        //        }
        //        writer.Write(html);
        //    }
        //}




        #region PrismicIO Helper Methods

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        protected List<prismic.Api.Document> FetchContent()
        {
            if (String.IsNullOrEmpty(DataSource))
            {
                return null;
            }
            List<prismic.Api.Document> documents = null;
            documents = Controller.Get(DataSource) as List<prismic.Api.Document>;
            return documents;
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="Document"></param>
        /// <param name="field"></param>
        /// <returns></returns>
        protected String GetText(prismic.Api.Document Document, String field)
        {
            string fragmentvalue = null;
            var fragment = Document.GetText(String.Format("{0}.{1}", Document.typ, field));
            if (fragment != null)
            {
                fragmentvalue = fragment.Value;
            }
            return fragmentvalue;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="Document"></param>
        /// <param name="field"></param>
        /// <returns></returns>
        protected String GetText(prismic.Fragments.GroupDoc Document, String field)
        {
            string fragmentvalue = null;
            var fragment = Document.GetText(field);
            if (fragment != null)
            {
                fragmentvalue = fragment.Value;
            }
            return fragmentvalue;
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="Document"></param>
        /// <param name="Element"></param>
        /// <param name="Thumbnail"></param>
        /// <returns></returns>
        protected String GetImageURL(prismic.Api.Document Document, String Element, String Thumbnail)
        {
            string url = null;
            if (String.IsNullOrEmpty(Thumbnail))
            {
                Thumbnail = "main";
            }

            var coverImageViewFragment = Document.GetImageView(String.Format("{0}.{1}", Document.typ, Element), Thumbnail);
            if (coverImageViewFragment != null)
            {
                url = coverImageViewFragment.Value.url;
            }
            return url;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="Document"></param>
        /// <param name="Element"></param>
        /// <param name="Thumbnail"></param>
        /// <returns></returns>
        protected String GetImageURL(prismic.Fragments.GroupDoc Document, String Element, String Thumbnail)
        {
            string url = null;
            if (String.IsNullOrEmpty(Thumbnail))
            {
                Thumbnail = "main";
            }

            var coverImageViewFragment = Document.GetImageView(String.Format("{0}", Element), Thumbnail);
            if (coverImageViewFragment != null)
            {
                url = coverImageViewFragment.Value.url;
            }
            return url;
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="Document"></param>
        /// <param name="?"></param>
        /// <returns></returns>
        protected String GetHTML(prismic.Api.Document Document)
        {
            string html = null;
            if (Document == null)
            {
                return html;
            }
            var resolver = prismic.extensions.DocumentLinkResolver.For(l => String.Format("http://localhost/{0}/{1}", l.typ, l.id));
            html = Document.AsHtml(resolver);
            return html;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="Document"></param>
        /// <returns></returns>
        protected String GetHTML(prismic.Fragments.GroupDoc Document, String Field)
        {
            string html = String.Empty;
            if (Document == null)
            {
                return html;
            }
            var resolver = prismic.extensions.DocumentLinkResolver.For(l => String.Format("http://localhost/{0}/{1}", l.typ, l.id));
            var fragment = Document.Get(Field);
            if (fragment != null)
            {
                var fragHTML = fragment.BindAsHtml(resolver);
                if (fragHTML != null)
                {
                    html = fragHTML.Value;
                }
            }
            return html;
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="Document"></param>
        /// <param name="FragmentName"></param>
        /// <returns></returns>
        protected String GetHTML(prismic.Api.Document Document, String FragmentName)
        {
            String html = String.Empty;
            if (Document == null || String.IsNullOrEmpty(FragmentName))
            {
                return html;
            }
            var dSectionFrag = Document.Get(string.Format("{0}.{1}", Document.typ, FragmentName));
            if (dSectionFrag != null)
            {
                var resolver = prismic.extensions.DocumentLinkResolver.For(l => String.Format("http://localhost/{0}/{1}", l.typ, l.id));
                var fragmentContainer = dSectionFrag.BindAsHtml(resolver);
                if (fragmentContainer != null)
                {
                    html = fragmentContainer.Value;
                }
            }
            return html;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="Document"></param>
        /// <param name="Field"></param>
        protected List<prismic.Fragments.GroupDoc> GetGroupContent(prismic.Api.Document Document, string Field)
        {
            List<prismic.Fragments.GroupDoc> content = null; ;
            var groupFragment = Document.Get(String.Format("{0}.{1}", Document.typ, Field));
            if (groupFragment != null)
            {
                var group = groupFragment.Value as prismic.Fragments.Fragment.Group;
                if (group != null)
                {
                    content = group.Item.ToList();
                }
            }
            return content;
        }

        #endregion PrismicIO Helper Methods

    }
}