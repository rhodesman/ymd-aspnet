using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web.Http;
using YPortal.BusinessEntities;
using YPortal.BusinessLogicLayer;

namespace YPortal.Web.Api_Services
{
    public class BlastController : ApiController
    {

        public List<BlastDataOverview> GetBlastsOverview(string campaignIdBlastOverview)
        {
            try
            {
                long campaignIdInt = Convert.ToInt64(campaignIdBlastOverview);
                var emailBlast = new BlastBLL().GetBlastOverview(campaignIdInt,null);
                return emailBlast;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public List<BlastDataOverview> GetBlast(string campaignId,string blastId)
        {
            try
            {
                long campaignIdInt = Convert.ToInt64(campaignId);
                long blastIdInt = Convert.ToInt64(blastId);
                var emailBlast = new BlastBLL().GetBlastOverview(campaignIdInt, blastIdInt);
                return emailBlast;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public HttpResponseMessage Save(BlastDataOverview item)
        {
            try
            {
                var obj = new BlastBLL().SaveBlastInfo(item);
                HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.OK, "value");
                response.Content = new StringContent(obj==true?"true":"false", Encoding.Default);
                return response;

            }
            catch (Exception ex)
            {
                HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.BadRequest, "value");
                response.Content = new StringContent( ex.Message, Encoding.Default);
                return response;
            }
        }


    }
}