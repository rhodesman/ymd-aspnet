using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Net;
using System.Net.Http;
using System.Web.Http;

using prismic;
using prismic.extensions;

using log4net;
using log4net.Config;


namespace PrismicIOAPI.api
{
    public class CDNDTO
    {        
        private  List<prismic.Api.Document> documents = null;
        public prismic.Api.Document MediaInfo
        {
            get;
            set;
        }

        public List<prismic.Api.Document> Documents
        {
            set
            {
                documents = value;
            }
            get
            {
                if (documents == null)
                {
                    documents = new System.Collections.Generic.List<prismic.Api.Document>();
                }
                return documents;
            }
        }

        public Exception APIException
        {
            get;
            set;
        }
    }


    public sealed class ContentController : BaseController
    {
        private const string DOCUMENT_SEARCH_TEMPLATE = @"[[:d = at(document.{0}, ""{1}"")]]";
        private const string DOCUMENT_SEARCH_MENU = @"[:d = fulltext(my.location.menu, ""Catonsville"")]";

        private static readonly ILog logger = LogManager.GetLogger(typeof(ContentController));


        /// <summary>
        /// Returns Entries based on Search Query
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        /// 


        public void LogMessage(string Message)
        {
            logger.Debug(Message);
        }


        public override object Get(string id)
        {
            return Get(id, null);
        }


        public override object Get(string id, string ordering)
        {
            List<prismic.Api.Document> documents = null;            

            try
            {
                prismic.Api.Api api = GetContext();
                prismic.extensions.Api.SearchFormWithTask form = null;                

                int pagenum = 1;
                do{

                    if (String.IsNullOrEmpty(ordering))
                    {
                        if( this.PRISMIC_REF != null )
                        {
                            form = api.Forms[ "everything" ].Ref( this.PRISMIC_REF ).Query( id ).Page( pagenum ).SubmitableAsTask();
                        }
                        else
                        {
                            form = api.Forms[ "everything" ].Ref( api.Master ).Query( id ).Page( pagenum ).SubmitableAsTask();
                        }
                    }
                    else
                    {
                        if( this.PRISMIC_REF != null )
                        {
                            form = api.Forms[ "everything" ].Ref( this.PRISMIC_REF ).Query( id ).Page( pagenum ).Orderings( ordering ).SubmitableAsTask();
                        }
                        else
                        {
                            form = api.Forms[ "everything" ].Ref( api.Master ).Query( id ).Orderings( ordering ).Page( pagenum ).SubmitableAsTask();
                        }
                    }
                    
                    
                   
                    if (documents == null)
                    {
                        documents = form.Submit().Result.results.ToList<prismic.Api.Document>();
                    }
                    else
                    {                        
                        documents.AddRange(form.Submit().Result.results.ToList<prismic.Api.Document>());
                    }
                    pagenum++;                  

                } while (form.Submit().Result.nextPage != null);

            }catch(Exception ex){
                System.Diagnostics.Debug.WriteLine(String.Format("Query: {0}, Error:{1} ", id, ex.ToString()));
            }


            if (!String.IsNullOrEmpty(id) && id.Contains("Locations.Preschool"))
            {
                if (documents != null && documents.Count > 0)
                {
                    var docIds = new StringBuilder();
                    documents.ForEach(elem =>
                    {
                        docIds.Append(String.Format("{0}, ", elem.id));
                    });
                    
                    LogMessage(String.Format("Request Query: {0} - Response Doc. ID: {1} ", id, docIds.ToString()));

                }
            }

           

           

            return documents;
        }
    }
}
