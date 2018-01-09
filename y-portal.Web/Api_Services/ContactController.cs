using System;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using YPortal.BusinessEntities;
using YPortal.BusinessLogicLayer;
using YPortal.Helpers;

namespace YPortal.Web.Api_Services
{
    public class ContactController : ApiController
    {
        public HttpResponseMessage PostContact(Contact item)
        {
            HttpResponseMessage response;
            try
            {
                if (item == null)
                {
                    response = Request.CreateErrorResponse(HttpStatusCode.BadRequest, "Request not valid");
                }
                else
                {
                    ContactBLL contactbll = new ContactBLL();

                    item.DateSubmitted = DateTime.Now;
                    contactbll.CreateNewContact(item);

                    response = Request.CreateResponse(HttpStatusCode.Created);
                    string uri = Url.Link("DefaultApi", new { id = item.ContactId });
                    response.Headers.Location = new Uri(uri);

                    SendEmailToCustomer(item.Email, item.FirstName);
                    SendEmailToAdmin(item);
                }
            }
            catch (Exception ex)
            {
                response = Request.CreateErrorResponse(HttpStatusCode.InternalServerError, "Something went wrong. Please try again.");
            }

            return response;
        }

        #region Email

        private void SendEmailToCustomer(string email, string firstName)
        {
            string emailTemplateFilePath = "~/" + SiteSettings.CustomerEmailTemplate;

            if (File.Exists(HttpContext.Current.Server.MapPath(emailTemplateFilePath)))
            {
                try
                {
                    StreamReader reader = new StreamReader(HttpContext.Current.Server.MapPath(emailTemplateFilePath));
                    string templateContent = reader.ReadToEnd();
                    reader.Close();

                    templateContent = templateContent.Replace("<###FirstName###>", firstName);
                    templateContent = templateContent.Replace("<###SiteUrl###>", SiteSettings.BaseUrl);

                    Emailer.SendEmailFromContactUs(email, SiteSettings.FromEmailAddress, "", "", SiteSettings.FromName, SiteSettings.CustomerEmailSubject, templateContent);
                }
                catch (Exception ex)
                {
                    throw new Exception(ex.Message);
                }
            }
        }

        private void SendEmailToAdmin(Contact contact)
        {
            Location location = new LocationBLL().GetLocationByLocationName(contact.Location);

            string emailTemplateFilePath = "~/" + (string.IsNullOrEmpty(location.EmailTemplate) ? SiteSettings.AdminEmailTemplate : location.EmailTemplate);

            if (File.Exists(HttpContext.Current.Server.MapPath(emailTemplateFilePath)))
            {
                try
                {
                    StreamReader reader = new StreamReader(HttpContext.Current.Server.MapPath(emailTemplateFilePath));
                    string templateContent = reader.ReadToEnd();
                    reader.Close();

                    templateContent = templateContent.Replace("<###SiteUrl###>", SiteSettings.BaseUrl);
                    templateContent = templateContent.Replace("<###FirstName###>", contact.FirstName);
                    templateContent = templateContent.Replace("<###LastName###>", contact.LastName);
                    templateContent = templateContent.Replace("<###Email###>", contact.Email);
                    templateContent = templateContent.Replace("<###Phone###>", contact.Phone);
                    templateContent = templateContent.Replace("<###Location###>", contact.Location);
                    templateContent = templateContent.Replace("<###Feedback###>", contact.Feedback);
                    templateContent = templateContent.Replace("<###Interests###>", contact.Interests);

                    if (contact.Interests.ToLower().Contains("quality"))
                    {
                        location.Email = location.Email + "," + SiteSettings.QualityEmailAddress;
                    }

                    Emailer.SendEmailFromContactUs(location.Email, SiteSettings.FromEmailAddress, SiteSettings.CcEmailAddress, SiteSettings.BccEmailAddress, SiteSettings.FromName, SiteSettings.AdminEmailSubject, templateContent);
                }
                catch (Exception ex)
                {
                    throw new Exception(ex.Message);
                }
            }
        }

        #endregion
    }
}