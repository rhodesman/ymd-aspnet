using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using YPortal.BusinessEntities;

namespace YPortal.BusinessLogicLayer
{
    public partial class LocationBLL
    {
        public Location GetLocationByLocationName(string name)
        {
            var location =
                (from loc
                in _DatabaseContext.Locations
                 where loc.Name.Trim().Replace(" ", "").Replace("(", "").Replace(")", "").Replace("-", "").ToLower().Contains(name.Replace(" in ", "").Replace(" ", "").ToLower())
                 select loc).FirstOrDefault();
            return location;
        }
    }
}