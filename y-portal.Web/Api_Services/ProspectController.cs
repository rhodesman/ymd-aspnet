using System;
using System.Collections.Generic;
using System.Web.Http;
using YPortal.BusinessLogicLayer;
using YPortal.Helpers;
using YPortal.Web.App_Logic.Business_Entities;
using YPortal.Web.App_Logic.Helpers.Basic_Helpers;

namespace YPortal.Web.Api_Services
{
    public class ProspectController : ApiController
    {
        [HttpGet]
        public List<ProspectDetails> SearchLandingPageProspect(string keyword, string location, DateTime? fromDate, DateTime? toDate)
        {
            try
            {
                keyword = keyword == null ? "" : keyword.Trim();
                location = location == null ? "" : location.Trim();

                List<ProspectDetails> details = new LandingPageProspectBLL().SearchLandingPageProspect(keyword, location, fromDate, toDate);
                return details;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        [HttpGet]
        public KeyValuePair<String, String> GetExportLink(string keyword, string location, DateTime? fromDate, DateTime? toDate, string type)
        {
            try
            {
                keyword = keyword == null ? "" : keyword.Trim();
                location = location == null ? "" : location.Trim();

                string fileName = "ExportFile_" + string.Format("{0:dd-mm-yyyy}_{1: hh_mm_ss}", DateTime.Now, DateTime.Now) + ".csv";

                string physicalPath = System.Web.Hosting.HostingEnvironment.MapPath("~/ExportFiles/");

                List<ProspectDetails> details = new LandingPageProspectBLL().SearchLandingPageProspect(keyword, location, fromDate, toDate);
                CsvUtility.ExportListToCsvAndSaveInFolder(details, ",", physicalPath, fileName);

                return new KeyValuePair<String, String>(SiteSettings.ExportFilesUrl + fileName, fileName);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}