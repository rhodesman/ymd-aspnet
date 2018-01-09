using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using YPortal.BusinessEntities;
using YPortal.BusinessLogicLayer;

namespace YPortal.Web.Api_Services
{
    public class InterestController : ApiController
    {
        public List<Interest> GetInterest()
        {
            return new InterestBLL().GetAllInterests().OrderBy(x => x.DisplayOrder).ToList();
        }
    }
}