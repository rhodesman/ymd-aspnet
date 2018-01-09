using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PrismicIOAPI.Util
{
    public class NGram
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="find"></param>
        /// <param name="target"></param>
        /// <returns></returns>
        public static double CompareUnigram(string find, string target)
        {
            return Compare(1, find, target);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="find"></param>
        /// <param name="target"></param>
        /// <returns></returns>
        public static double CompareBigram(string find, string target)
        {
            return Compare(2, find, target);
        }

       /// <summary>
       /// 
       /// </summary>
       /// <param name="find"></param>
       /// <param name="target"></param>
       /// <returns></returns>
        public static double CompareTrigram(string find, string target)
        {
            return Compare(3, find, target);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="n"></param>
        /// <param name="find"></param>
        /// <param name="target"></param>
        /// <returns></returns>
        private static double Compare(int n, string find, string target)
        {
            if (find == null) throw new ArgumentNullException("scan");
            if (target == null) throw new ArgumentNullException("text");

            List<string> noise = new List<string>();
            for (int i = 0; i < find.Length - (n - 1); i++)
            {
                string ngitem = find.Substring(i, n);
                if (!noise.Contains(ngitem)) { noise.Add(ngitem); }
            }
            if (noise.Count == 0) return 0;

            int coincidence = 0;
            for (int i = 0; i < target.Length - (n - 1); i++)
            {
                string ngitem = target.Substring(i, n);
                if (noise.Contains(ngitem)) { coincidence++; }
            }
            return (double)coincidence / noise.Count;
        }
    }
}
