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
    public class ClearCacheController : ApiController
    {
        public void Get()
        {
            try
            {
                CacheUtility.ClearCache();
            }
            catch (Exception ex)
            {
                //TODO: REVISE
                System.Diagnostics.Debug.WriteLine(ex.ToString());
            }
        }
    }
}
