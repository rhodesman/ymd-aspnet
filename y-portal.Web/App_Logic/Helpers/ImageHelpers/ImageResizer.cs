using System;
using System.Collections.Generic;
using System.Text;
using System.Drawing;
using System.Web;
using System.IO;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
//using BetterImageProcessorQuantization;



namespace YPortal.Helpers
{
    public class ImageResizer
    {

  

        /// <summary>
        /// Keep Original Image
        /// </summary>
        public static void KeepOriginalImage(byte[] image, String imageFilePath, FileInfo fileInfo, ImageDimension imageDimension)
        {
            MemoryStream ms = new MemoryStream(image);
            var parentImage = Image.FromStream(ms);

            String fileName =  fileInfo.Name.Replace(fileInfo.Extension,  "_original" + fileInfo.Extension);

            SaveImage(parentImage, imageFilePath, fileName);
            
        }
        
        /// <summary>
        /// Resize Image For Details View
        /// </summary>
        public static void ResizeDetailImage(byte[] image, String imageFilePath, FileInfo fileInfo, ImageDimension imageDimension)
        {
            MemoryStream ms = new MemoryStream(image);
            var parentImage = Image.FromStream(ms);

            String fileName =  fileInfo.Name.Replace(fileInfo.Extension,  "_detail" + fileInfo.Extension);

            if (parentImage.Height > parentImage.Width) //Portrait image: Height is larger than Width
            {
                ResizeImage(parentImage, imageFilePath, fileName, imageDimension.PortraitDimension.Width, imageDimension.PortraitDimension.Height);
            }
            else if (parentImage.Height < parentImage.Width) //Landscape image: Height is smaller than Width
            {
                ResizeImage(parentImage, imageFilePath, fileName, imageDimension.LandscapeDimension.Width, imageDimension.LandscapeDimension.Height);
            }
            else if (parentImage.Width == parentImage.Height) //Square image: Height and  Width are equal in size
            {
                ResizeImage(parentImage, imageFilePath, fileName, imageDimension.SquareDimension.Width, imageDimension.SquareDimension.Height);
            }
            else
            {
                SaveImage(parentImage, imageFilePath, fileName);
            }
        }

      

        /// <summary>
        /// Resize Image For ThumbNail View
        /// </summary>
        public static void ResizeThumbnailImage(byte[] image, String imageFilePath, FileInfo fileInfo, ImageDimension imageDimension)
        {
            MemoryStream ms = new MemoryStream(image);
            var parentImage = Image.FromStream(ms);

            String fileName = fileInfo.Name.Replace(fileInfo.Extension, "_thumb" + fileInfo.Extension);

            if (parentImage.Height > parentImage.Width ) //Portrait image: Height is larger than Width
            {
                ResizeImage(parentImage, imageFilePath, fileName, imageDimension.ThumbnailDimension.Height,imageDimension.ThumbnailDimension.Width);
            }
            else if (parentImage.Height < parentImage.Width) //Landscape image: Height is smaller than Width
            {
                ResizeImage(parentImage, imageFilePath, fileName, imageDimension.ThumbnailDimension.Width, imageDimension.ThumbnailDimension.Height);
            }
            else if (parentImage.Width == parentImage.Height) //Square image: Height and  Width are equal in size
            {
                ResizeImage(parentImage, imageFilePath, fileName, imageDimension.ThumbnailDimension.Width, imageDimension.ThumbnailDimension.Width);
            }
            else
            {
                SaveImage(parentImage, imageFilePath, fileName);
            }
        }


        /// <summary>
        /// Resize Image For Listing View
        /// </summary>
        public static void ResizeListingImage(byte[] image, String imageFilePath, FileInfo fileInfo, ImageDimension imageDimension)
        {
            MemoryStream ms = new MemoryStream(image);
            var parentImage = Image.FromStream(ms);

            String fileName = fileInfo.Name.Replace(fileInfo.Extension, "_list" + fileInfo.Extension);

            if (parentImage.Height > parentImage.Width) //Portrait image: Height is larger than Width
            {
                //ResizeImage(parentImage, imageFilePath, fileName, imageDimension.ListingDimension.Height,imageDimension.ListingDimension.Width);
                ResizeImage(parentImage, imageFilePath, fileName, imageDimension.ListingDimension.Width, imageDimension.ListingDimension.Height);
            }
            else if (parentImage.Height < parentImage.Width) //Landscape image: Height is smaller than Width
            {
                ResizeImage(parentImage, imageFilePath, fileName, imageDimension.ListingDimension.Width, imageDimension.ListingDimension.Height);
            }
            else if (parentImage.Width == parentImage.Height) //Square image: Height and  Width are equal in size
            {
                ResizeImage(parentImage, imageFilePath, fileName, imageDimension.ListingDimension.Width, imageDimension.ListingDimension.Width);
            }
            else
            {
                SaveImage(parentImage, imageFilePath, fileName);
            }
        }

        /// <summary>
        /// Resize Image For Icon View
        /// </summary>
        public static void ResizeIconImage(byte[] image, String imageFilePath, FileInfo fileInfo, ImageDimension imageDimension)
        {
            MemoryStream ms = new MemoryStream(image);
            var parentImage = Image.FromStream(ms);

            String fileName = fileInfo.Name.Replace(fileInfo.Extension, "_icon" + fileInfo.Extension);


            if (parentImage.Height > parentImage.Width) //Portrait image: Height is larger than Width
            {
                ResizeImage(parentImage, imageFilePath, fileName,  imageDimension.IconDimension.Height,imageDimension.IconDimension.Width);
            }
            else if (parentImage.Height < parentImage.Width) //Landscape image: Height is smaller than Width
            {
                ResizeImage(parentImage, imageFilePath, fileName, imageDimension.IconDimension.Width, imageDimension.IconDimension.Height);
            }
            else if (parentImage.Width == parentImage.Height)  //Square image: Height and  Width are equal in size
            {
                ResizeImage(parentImage, imageFilePath, fileName, imageDimension.IconDimension.Width, imageDimension.IconDimension.Width);
            }
            else
            {
                SaveImage(parentImage, imageFilePath, fileName);
            }
        }


        /// <summary>
        /// Resize Image For Fav Icon View
        /// </summary>
        public static void ResizeFavIconImage(byte[] image, String imageFilePath, FileInfo fileInfo, ImageDimension imageDimension)
        {
            MemoryStream ms = new MemoryStream(image);
            var parentImage = Image.FromStream(ms);

            String fileName = fileInfo.Name.Replace(fileInfo.Extension, "_favicon" + fileInfo.Extension);

            if (parentImage.Height > parentImage.Width) //Portrait image: Height is larger than Width
            {
                ResizeImage(parentImage, imageFilePath, fileName, imageDimension.FavIconDimension.Height,imageDimension.FavIconDimension.Width);
            }
            else if (parentImage.Height < parentImage.Width) //Landscape image: Height is smaller than Width
            {
                ResizeImage(parentImage, imageFilePath, fileName, imageDimension.FavIconDimension.Width, imageDimension.FavIconDimension.Height);
            }
            else if (parentImage.Width == parentImage.Height)  //Square image: Height and  Width are equal in size
            {
                ResizeImage(parentImage, imageFilePath, fileName, imageDimension.FavIconDimension.Width, imageDimension.FavIconDimension.Width);
            }
            else
            {
                SaveImage(parentImage, imageFilePath, fileName);
            }
        }



        public static void SaveImage(Image image, String imageFilePath, String fileName)
        {
            string fileNameWithPath = imageFilePath + fileName;
            using (var parentImage = image)
            {
                parentImage.Save(fileNameWithPath, parentImage.RawFormat);               
            }
        }


        public static void ResizeImage(Image image, String imageFilePath, String fileName, decimal width, decimal height)
        {
            //string fileNameWithPath = imageFilePath + fileName;
            string fileNameWithPath = imageFilePath;
           
            using (var parentImage = image)
            {
                if (width == -1)
                {
                    width = (int)(parentImage.Width * (height / parentImage.Height));
                }
                else if (height == -1)
                {
                    height = (int)(parentImage.Height * (width / parentImage.Width));
                }

                var finalImage = new Bitmap((int)width, (int)height);
                var graphic = Graphics.FromImage(finalImage);
                

                graphic.CompositingQuality = CompositingQuality.HighQuality;
                graphic.SmoothingMode = SmoothingMode.HighQuality;
                graphic.InterpolationMode = InterpolationMode.HighQualityBicubic;

                var imageRec = new Rectangle(0, 0, (int)width, (int)height);
                graphic.DrawImage(parentImage, imageRec);

                finalImage.Save(fileNameWithPath, parentImage.RawFormat);
            }
        }

     
    }//end class
}
