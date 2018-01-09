using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Text;
using System.IO;
using System.Web.Script.Serialization;
using System.Configuration;

using prismic;
using prismic.extensions;


namespace PrismicIOAPI.api
{
   



    public abstract class BaseController : ApiController
    {
        public string PRISMIC_REF = null;

        private const string DOCUMENT_SEARCH_TEMPLATE = @"[[:d = at(document.{0}, ""{1}"")]]";
        private const string DOCUMENT_SEARCH_MENU = @"[:d = fulltext(my.location.menu, ""Catonsville"")]";
        private const string FULLTEXT_SEARCH_MENU = @"[:d = fulltext(my.{0}.{1},""{2}"")]";

        
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public virtual object Get()
        {
            return String.Empty;
        }

        public virtual object Get(string id)
        {
            return String.Empty;
        }

        public virtual object Get(string id, string ordering)
        {
            return String.Empty;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        protected  prismic.Api.Api GetContext()
        {
            var url = ConfigurationManager.AppSettings.Get("Prismic.CDN");
            var token = ConfigurationManager.AppSettings.Get("Prismic.Token");
            prismic.Api.Api context = (prismic.extensions.Api.Get(token, url, new prismic.ApiInfra.NoCache<prismic.Api.Response>(), (l, m) => { })).Result;
            
            return context;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="document"></param>
        /// <returns></returns>
        protected prismic.Api.Document GetMediaInfo(prismic.Api.Document document)
        {
            prismic.Api.Document refdocument = null;
            var mediaInfoLink = document.GetAll(String.Format("{0}.mediaInfo", document.typ)).First() as prismic.Fragments.Fragment.Link;

            if (mediaInfoLink != null)
            {
                var mediaInfoDocumentlink = mediaInfoLink.Item as prismic.Fragments.Link.DocumentLink;
                if (mediaInfoDocumentlink != null)
                {
                    refdocument = GetDocument(mediaInfoDocumentlink.Item.id);
                }
            }
            return refdocument;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="section"></param>
        /// <param name="document"></param>
        /// <returns></returns>
        protected List<prismic.Fragments.GroupDoc> GetDocumentGroup(String section, prismic.Api.Document document)
        {

            List<prismic.Fragments.GroupDoc> groupDocuments = null;
            var grouplink = document.GetAll(section).First() as prismic.Fragments.Fragment.Group;
            if (grouplink != null)
            {
                groupDocuments = grouplink.Item.ToList();
                groupDocuments.ForEach(documentElement =>
                {
                    ProcessDocument(documentElement);
                });
            }
            return groupDocuments;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="document"></param>
        public void ProcessDocument(prismic.Api.Document document)
        {
            ProcessDocumentFragments(document.fragments.ToList());
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="document"></param>
        public void ProcessDocument(prismic.Fragments.GroupDoc document)
        {
            ProcessDocumentFragments(document.fragments.ToList());
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="document"></param>
        protected void ProcessDocumentFragments(List<System.Tuple<string, prismic.Fragments.Fragment>> fragments)
        {
            fragments.ForEach(fagment_elem =>
            {
                var fragment_name = fagment_elem.Item1;

                Fragments.Fragment.Link fragmentlink = fagment_elem.Item2 as prismic.Fragments.Fragment.Link;
                prismic.Fragments.Fragment.Group fragmentGroup = fagment_elem.Item2 as prismic.Fragments.Fragment.Group;


                if (fragmentlink != null)
                {
                    var documentlink = fragmentlink.Item as prismic.Fragments.Link.DocumentLink;
                    if (documentlink != null)
                    {
                        var refdocument = GetDocument(documentlink.Item.id);
                        var html = DocumentToHtml(refdocument);
                    }
                }

                if (fragmentGroup != null)
                {
                    List<prismic.Fragments.GroupDoc> groupDocuments = fragmentGroup.Item.ToList();
                    groupDocuments.ForEach(documentElement =>
                    {
                        ProcessDocument(documentElement);
                    });
                }

            });
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="ID"></param>
        /// <returns></returns>
        protected prismic.Api.Document GetDocument(string ID)
        {
            prismic.Api.Document document = null;
            var context = GetContext();
            if( this.PRISMIC_REF != null )
            {
                var form = context.Forms[ "everything" ].Ref( this.PRISMIC_REF ).Query( String.Format( DOCUMENT_SEARCH_TEMPLATE , "id" , ID ) ).SubmitableAsTask();
                document = form.Submit().Result.results.First();
            }
            else
            {
                var form = context.Forms[ "everything" ].Ref( context.Master ).Query( String.Format( DOCUMENT_SEARCH_TEMPLATE , "id" , ID ) ).SubmitableAsTask();
                document = form.Submit().Result.results.First();
            }
            return document;
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="document"></param>
        /// <returns></returns>
        protected string DocumentToHtml(prismic.Api.Document document)
        {
            string html = null;
            if (document == null)
            {
                return html;
            }

            var resolver = prismic.extensions.DocumentLinkResolver.For(l => String.Format("http://localhost/{0}/{1}", l.typ, l.id));
            html = document.AsHtml(resolver);
            return html;
        }
    }
}
