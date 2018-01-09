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

using PrismicIOAPI.Utility;
namespace PrismicIOAPI.api
{
    public class ListCacheController : ApiController
    {


        public List<string> Get()
        {
            List<string> cacheList = null;
            try
            {
               cacheList =   CacheUtility.ListCache();
            }
            catch (Exception ex)
            {
                //TODO: REVISE
                System.Diagnostics.Debug.WriteLine(ex.ToString());
            }

            return cacheList;

        }
    }
}
