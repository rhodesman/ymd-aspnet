using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;

namespace GAnalytic
{
    public class EnumSettings
    {
        public enum GoogleAnalyticDeviceType
        {
            [Description("ga:mobileDeviceInfo")]
            Mobile = 1,
            [Description("ga:operatingSystem")]
            OS = 2,
            [Description("ga:browser")]
            Browser = 3,
            [Description("ga:country")]
            Location = 4,
            [Description("ga:source")]
            Source = 5,

        }
    }
}
