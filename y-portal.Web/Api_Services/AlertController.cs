using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Xml;
using System.Configuration;
using System.Globalization;


using prismic;
using prismic.extensions;


using PrismicIOAPI.Utility;
using PrismicIOAPI.Ext;
using YPortal.Web.App_Code.Types;
using PrismicIOAPI.api;
using PrismicIOAPI.Web.UI;
using Api = prismic.Api;

namespace YPortal.Web.Api_Services
{

    public class YAlert
    {
        public String Title { get; set; }
        public String Description { get; set; }
        public DateTime DateCreated { get; set; }
        public DateTime Start { get; set; }
        public DateTime End { get; set; }
    }
    


    public class AlertController : ApiController
    {


        private const string DOCUMENT_ALERTS_TEMPLATE = @"[[:d=at(document.type,""Alert"")]]";
        private const string ALERTS_CACHE_ID = "Y_ALERTS";

        public List<YAlert> Get()
        {
            List<YAlert> alerts = null;
//            CacheController.GetCachedObject<List<YAlert>>(ref alerts, ALERTS_CACHE_ID);
            if (alerts == null)
            {
                alerts = FetchAlerts();
                if (alerts == null)
                {
                    alerts = new List<YAlert>();
                    alerts.Add(new YAlert
                    {
                        DateCreated = DateTime.Now,
                        Start = DateTime.Now.AddYears(+1),
                        End = DateTime.Now.AddYears(+1),
                        Title = String.Empty,
                        Description = String.Empty

                    });
                }
//                CacheController.GetCachedObject<List<YAlert>>(ref alerts, ALERTS_CACHE_ID);
            }
            return alerts;
        }

        /// <summary>
        /// DEMO DATA:
        /// </summary>
        /// <returns></returns>
        private List<YAlert> FetchAlerts()
        {
            List<YAlert> alerts = null;


            var contentController = new ContentController();
            var documents = contentController.Get(DOCUMENT_ALERTS_TEMPLATE) as List<prismic.Api.Document>;

            if (documents == null || documents.Count == 0)
            {
                return alerts;
            }




            alerts = new List<YAlert>();

            documents.ForEach(docElem =>
            {
                DateTime dateStart = default(DateTime);
                DateTime dateEnd= default(DateTime);
                DateTime dateCreated = default(DateTime);

                var title = docElem.GetTextExt("Title");
                var description = docElem.GetTextExt("Description");

                var CreatedDate = docElem.GetTextExt("DateCreated");
                var startDate = docElem.GetTextExt("Start");
                var endDate = docElem.GetTextExt("End");

                if (DateTime.TryParse(CreatedDate, out dateCreated)
                    && DateTime.TryParse(startDate, out dateStart)
                    && DateTime.TryParse(endDate, out dateEnd))
                {
                    alerts.Add(new YAlert
                    {
                        DateCreated = dateCreated,
                        Start = dateStart,
                        End = dateEnd,
                        Title = title,
                        Description = description

                    });
                }
            });


           

            var timeStamp = DateTime.Now;
            alerts = alerts.Where(elem => elem.End >= timeStamp && elem.Start <= timeStamp).OrderByDescending(elem => elem.DateCreated).ToList();
            return alerts;

        }



    }
}