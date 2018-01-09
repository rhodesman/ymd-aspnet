using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace YPortal.BusinessLogicLayer
{
    public partial class AppSettingBLL
    {
        public string GetAppValueByAppKey(string key)
        {
            return (
                from
                    appSettings
                in
                    _DatabaseContext.AppSettings
                where
                    appSettings.AppKey.Trim().ToUpper().Equals(key.Trim().ToUpper())
                select
                    appSettings.AppValue).FirstOrDefault();
        }

    }
}