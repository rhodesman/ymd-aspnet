using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Text.RegularExpressions;

using prismic;
using prismic.extensions;

using PrismicIOAPI.Utility;
using YPortal.BusinessEntities;
using YPortal.BusinessLogicLayer;


using PrismicIOAPI.api;
using YPortal.Web.App_Logic;

namespace YPortal.Web.Api_Services
{
    public class LocationController : ApiController
    {


        /// <summary>
        /// Returns list of locations
        /// </summary>
        /// <returns></returns>
        public List<Location> Get()
        {
            List<Location> locationList = null;

            CacheController.GetCachedObject<List<Location>>(ref locationList, Common.LOCATIONS_CONTROLLER_CACHE_ID);

            if (locationList == null)
            {
                PrismicIOAPI.api.ContentController contentController = new ContentController();
                var query = String.Format(Common.QUERY_CONTENT_GROUP, "Locations.Family Center YS");
                List<prismic.Api.Document> documents = contentController.Get(query) as List<prismic.Api.Document>;
                if (documents != null)
                {
                    locationList = new List<Location>();
                    documents.ForEach(locationelem =>
                    {

                        var locationname = locationelem.GetText(string.Format("{0}.{1}", locationelem.typ, "Title")).Value;

                        var locationtext = locationname.Replace("<br/>", String.Empty);
                        locationtext = locationtext.Replace("<br/>", String.Empty);
                        locationtext = locationtext.Replace("<small>", String.Empty);
                        locationtext = locationtext.Replace("</small>", String.Empty);

                        locationList.Add(new Location
                        {
                            Name = locationtext,
                            LocationPage = Common.EncodeClenupLink(String.Format(Common.LOCATIONS_ROOT, locationname))
                        });
                    });
                }
                //fetching 
                query = String.Format(Common.QUERY_CONTENT_GROUP, "Locations.Head Start");
                documents = contentController.Get(query) as List<prismic.Api.Document>;
                if(documents != null)
                {
                    documents.ForEach(locationelem =>
                    {
                        var locationname = locationelem.GetText(string.Format("{0}.{1}", locationelem.typ, "Title")).Value;

                        var locationtext = locationname.Replace("<br/>", String.Empty);
                        locationtext = locationtext.Replace("<br/>", String.Empty);
                        locationtext = locationtext.Replace("<small>", String.Empty);
                        locationtext = locationtext.Replace("</small>", String.Empty);

                        locationList.Add(new Location
                        {
                            Name = locationtext,
                            LocationPage = Common.EncodeClenupLink(String.Format(Common.HEAD_START_ROOT, locationname))
                        });
                    });
                }

                locationList = locationList.OrderBy(elem => elem.Name).ToList();
                CacheController.GetCachedObject<List<Location>>(ref locationList, Common.LOCATIONS_CONTROLLER_CACHE_ID);
            }

            return locationList;
        }

    }
}