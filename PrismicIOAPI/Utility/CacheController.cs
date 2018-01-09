using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;



namespace PrismicIOAPI.Utility
{
    public class CacheController
    {
        private static object lockString = new object();

        public static void GetCachedObject<T>(ref T CachedObject, string CachedObjectID)
        {
            lock (lockString)
            {
                const string _REFERENCE_TEMPLATE = "{0}-Ref";
                int _defaultCacheTimeout = 15;
                if (ConfigurationManager.AppSettings["CacheTimeout"] != null)
                {
                    if (!int.TryParse(ConfigurationManager.AppSettings["CacheTimeout"], out _defaultCacheTimeout))
                    {
                        _defaultCacheTimeout = 15;
                    }
                }

                if (CachedObject == null)
                {
                    CacheUtility.Get(String.Format(_REFERENCE_TEMPLATE, CachedObjectID), out CachedObject);
                }
                else
                {
                    CacheUtility.Add(CachedObject, String.Format(_REFERENCE_TEMPLATE, CachedObjectID), _defaultCacheTimeout);
                }
            }
        }
    }
}
