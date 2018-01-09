using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;


namespace PrismicIOAPI.Utility
{
    public static class IOExtensions
    {
        public static string GetContent(String path)
        {
            string _ret = null;
            if(File.Exists(path)){
                _ret = File.ReadAllText(path);
            }
            return _ret;
        }
    }
}
