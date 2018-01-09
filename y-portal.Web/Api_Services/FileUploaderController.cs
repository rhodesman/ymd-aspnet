using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web;
using System.Web.Http;
using YPortal.Helpers;

namespace YPortal.Web.Api_Services
{
    public class FileUploaderController : ApiController
    {

        #region Fields
        String imageSavingPath = @"~/Admin/EmailThumbImage/";
        String imageDimensionXmlFile = @"~/Admin/image-dimension.xml";
        #endregion


        [HttpPost]
        public HttpResponseMessage UploadFile(string newFileName)
        {
            try
            {
                if (HttpContext.Current.Request.Files.AllKeys.Any())
                {

                    var httpPostedFile = HttpContext.Current.Request.Files["UploadedImage"];
                  
                    var fileSavePath = Path.Combine(HttpContext.Current.Server.MapPath(imageSavingPath), newFileName);
                    var imageDimensionPath =HttpContext.Current.Server.MapPath(imageDimensionXmlFile);
                    String imageName = String.Empty;
                    String contentType = String.Empty;
                    String uploadResult = String.Empty;

                    if (httpPostedFile != null)
                    {
                        contentType = httpPostedFile.ContentType;
                        byte[] imageBytes = null;
                        using (var binaryReader = new BinaryReader(httpPostedFile.InputStream))
                        {
                            imageBytes = binaryReader.ReadBytes(httpPostedFile.ContentLength);
                        }
                        imageName = newFileName;

                        ImageContainer imageContainer = new ImageContainer();
                        imageContainer.ContentType = contentType;
                        imageContainer.ImageBytes = imageBytes;
                        imageContainer.ImageName = imageName;
                       // imageContainer.ImageResizeType.Add(ImageResizeType.Detail);

                        uploadResult = ImageHelper.DoSingleImageResize(imageContainer, fileSavePath, imageDimensionPath);

                      
                        if (!String.IsNullOrEmpty(uploadResult))
                        {
                            HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.BadRequest, "value");
                            response.Content = new StringContent(uploadResult, Encoding.Unicode);                                             
                            return response;                                
                        }

                        HttpResponseMessage response1 = Request.CreateResponse(HttpStatusCode.OK, "value");
                        response1.Content = new StringContent(uploadResult, Encoding.Unicode);
                        return response1;                 
                    }

                    HttpResponseMessage response2 = Request.CreateResponse(HttpStatusCode.BadRequest, "value");
                    response2.Content = new StringContent("Could not get the uploaded file.", Encoding.Unicode);
                    return response2;
                }

                HttpResponseMessage response3 = Request.CreateResponse(HttpStatusCode.BadRequest, "value");
                response3.Content = new StringContent("No file found to upload.", Encoding.Unicode);
                return response3;
            }
            catch (Exception ex)
            {
                HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.BadRequest, "value");
                response.Content = new StringContent("An error occurred while uploading the file. Error Message: " + ex.Message, Encoding.Unicode);
                return response;
            }
        }

        [HttpGet]
        public HttpResponseMessage IsFileExists(string fileName)
        {
            var fileSavePath = Path.Combine(HttpContext.Current.Server.MapPath("~/Admin/EmailThumbImage/"), fileName);
            if (File.Exists(fileSavePath))
            {
                HttpResponseMessage response1 = Request.CreateResponse(HttpStatusCode.OK, "value");
                response1.Content = new StringContent("true", Encoding.Default);
                return response1;
                
            }
            else
            {
                HttpResponseMessage response1 = Request.CreateResponse(HttpStatusCode.BadRequest, "value");
                response1.Content = new StringContent("false", Encoding.Default);
                return response1;
            }
        }


         [HttpGet]
        public HttpResponseMessage RenameFile(string oldfileName,string newfileName)
        {
            var oldfileSavePath = Path.Combine(HttpContext.Current.Server.MapPath("~/Admin/EmailThumbImage/"), oldfileName);
              var newfileSavePath = Path.Combine(HttpContext.Current.Server.MapPath("~/Admin/EmailThumbImage/"), newfileName);
            if (File.Exists(oldfileSavePath))
            {
                 File.Move(oldfileSavePath ,  newfileSavePath);

                HttpResponseMessage response1 = Request.CreateResponse(HttpStatusCode.OK, "value");
                response1.Content = new StringContent("true", Encoding.Default);
                return response1;
                
            }
            else
            {
                HttpResponseMessage response1 = Request.CreateResponse(HttpStatusCode.BadRequest, "value");
                response1.Content = new StringContent("false", Encoding.Default);
                return response1;
            }
        }

        

    }
}