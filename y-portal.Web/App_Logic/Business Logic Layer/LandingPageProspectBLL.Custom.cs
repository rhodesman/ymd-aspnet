using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using YPortal.Web.App_Logic.Business_Entities;

namespace YPortal.BusinessLogicLayer
{
    public partial class LandingPageProspectBLL
    {
        public List<ProspectDetails> SearchLandingPageProspect(string keyword, string location, DateTime? fromDate, DateTime? toDate)
        {
            var paramKeyword = new SqlParameter
            {
                ParameterName = "keyword",
                Value = ((keyword == "null" || keyword == "") ? (object)DBNull.Value : keyword)
            };

            var paramLocation = new SqlParameter
            {
                ParameterName = "location",
                Value = ((location == "null" || location == "") ? (object)DBNull.Value : location)
            };

            var paramFromDate = new SqlParameter
            {
                ParameterName = "fromDate",
                Value = (fromDate == null ? (object)DBNull.Value : fromDate)
            };

            var paramToDate = new SqlParameter
            {
                ParameterName = "toDate",
                Value = (toDate == null ? (object)DBNull.Value : toDate)
            };

            return _DatabaseContext.ExecuteStoreQuery<ProspectDetails>("exec SPR_SearchLandingPageProspect @keyword, @location, @fromDate, @toDate", paramKeyword, paramLocation, paramFromDate, paramToDate).ToList();
        }
    }
}