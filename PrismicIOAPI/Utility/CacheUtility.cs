using System;
using System.Web;
using System.Runtime.Caching;
using System.Collections.Generic;
using System.Collections;


namespace PrismicIOAPI.Utility
{
    public class CacheUtility
    {
        /// <summary>
        /// App Cache
        /// </summary>
        private static ObjectCache Cache
        {
            get
            {
                return MemoryCache.Default;
            }
        }

        /// <summary>
        /// Add generic Item into cache
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="obj"></param>
        /// <param name="key"></param>
        /// <param name="minutes"></param>
        public static void Add<T>(T obj, string key, int minutes)
        {
            Cache.Add(key, obj, DateTime.Now.AddMinutes(minutes));          
        }

        /// <summary>
        /// Verify if Item exist in the cache
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        public static bool Exists(string key)
        {
            return Cache[key] != null;                        
        }

        /// <summary>
        /// Get Object from cache
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="key"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool Get<T>(string key, out T value)
        {
            try
            {
                if (!Exists(key))
                {
                    value = default(T);
                    return false;
                }
                value = (T)Cache[key];                
            }
            catch
            {
                value = default(T);
                return false;
            }
            return true;
        }

        /// <summary>
        /// Removes all the Cache
        /// </summary>
        public static void ClearCache()
        {
            var cacheEnumerator = (IDictionaryEnumerator)((IEnumerable)Cache).GetEnumerator();

            while (cacheEnumerator.MoveNext())
            {
                var key = cacheEnumerator.Key.ToString();
                Cache.Remove(key);               
            }
        }

        public static List<String> ListCache()
        {
            List<String> cachelist = new List<string>();
            var cacheEnumerator = (IDictionaryEnumerator)((IEnumerable)Cache).GetEnumerator();

            while (cacheEnumerator.MoveNext())
            {
                var key = cacheEnumerator.Key.ToString();
                cachelist.Add(key);                
            }
            return cachelist;
        }






    }
}
