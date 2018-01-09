using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Drawing;

namespace YPortal.Helpers
{

    public class ImageHelper
    {

        #region Fields
        const string _acceptedImageFormat = "image/jpg image/gif image/png image/jpeg image/bmp image/pjpeg image/x-png";
        #endregion

        #region Properties
        private static string AcceptedImageFormat
        {
            get { return _acceptedImageFormat; }
        }
        #endregion


        public static String DoSingleImageResize(ImageContainer imageContainer, String imageFileSavePath, String imageDimensionXmlFile)
        {

            ImageDimension imageDimension = ImageDimension.GetImageDimensionObject(imageDimensionXmlFile);

            if (!AcceptedImageFormat.Contains(imageContainer.ContentType))
            {
                return ImageMessage.IMAGE_FORMAT_VALIDATION;
            }


            ImageResizeType resizeType = ChangeImageResizeType(imageContainer.ImageBytes, imageDimension);
            var resizeTypeList = new List<ImageResizeType>();
            resizeTypeList.Add(resizeType);

            ImageResize(resizeTypeList, imageContainer.ImageBytes, imageContainer.ImageName, imageFileSavePath, imageDimension);
            return String.Empty;
        }



        private static ImageResizeType ChangeImageResizeType(byte[] image, ImageDimension imageDimension) 
        {
            MemoryStream ms = new MemoryStream(image);
            var currentImage = Image.FromStream(ms);

            if ((currentImage.Height >= imageDimension.SquareDimension.Height) || (currentImage.Width >= imageDimension.SquareDimension.Width))
            {
                return ImageResizeType.Detail;
            }
            else 
            {
                return ImageResizeType.Listing;            
            }
        
        }


        public static String DoImageResize(List<ImageContainer> imageList, String imageFileSavePath, String imageDimensionXmlFile)
        {
            //Image Dimension Object is created with default value.You can create your own Image dimension object by passing
            //parameter in ImageDimension constructor,all parameters are optional.
            ImageDimension imageDimension = ImageDimension.GetImageDimensionObject(imageDimensionXmlFile);

            foreach (ImageContainer imageContainer in imageList)
            {
                String validationResult = DoImageValidation(imageContainer.ImageBytes, imageContainer.ContentType, imageDimension);

                if (!String.IsNullOrEmpty(validationResult))
                {
                    return validationResult;
                }
            }

            foreach (ImageContainer imageContainer in imageList)
            {
                ImageResize(imageContainer.ImageResizeType, imageContainer.ImageBytes, imageContainer.ImageName, imageFileSavePath, imageDimension);
            }

            return String.Empty;
        }

        private static String DoImageValidation(byte[] image, String contentType, ImageDimension imageDimension)
        {
            if (!AcceptedImageFormat.Contains(contentType))
            {
                return ImageMessage.IMAGE_FORMAT_VALIDATION;
            }

            String sizeValid = IsImageSizeValid(image, imageDimension);

            if (!String.IsNullOrEmpty(sizeValid))
            {
                return sizeValid;
            }

            return String.Empty;
        }

        private static void ImageResize(List<ImageResizeType> resizeType, byte[] image, String imageName, String imageFilePath, ImageDimension imageDimension)
        {
            FileInfo fileInfo = new FileInfo(imageName);


            if (resizeType.FindIndex(x => x == ImageResizeType.All) >= 0 || resizeType.FindIndex(x => x == ImageResizeType.Detail) >= 0)
            {
                ImageResizer.ResizeDetailImage(image, imageFilePath, fileInfo, imageDimension);
            }

            if (resizeType.FindIndex(x => x == ImageResizeType.All) >= 0 || resizeType.FindIndex(x => x == ImageResizeType.Listing) >= 0)
            {

                ImageResizer.ResizeListingImage(image, imageFilePath, fileInfo, imageDimension);
            }

            if (resizeType.FindIndex(x => x == ImageResizeType.All) >= 0 || resizeType.FindIndex(x => x == ImageResizeType.Thumbnail) >= 0)
            {
                ImageResizer.ResizeThumbnailImage(image, imageFilePath, fileInfo, imageDimension);
            }


            if (resizeType.FindIndex(x => x == ImageResizeType.All) >= 0 || resizeType.FindIndex(x => x == ImageResizeType.Icon) >= 0)
            {
                ImageResizer.ResizeIconImage(image, imageFilePath, fileInfo, imageDimension);
            }

            if (resizeType.FindIndex(x => x == ImageResizeType.All) >= 0 || resizeType.FindIndex(x => x == ImageResizeType.FavIcon) >= 0)
            {
                ImageResizer.ResizeFavIconImage(image, imageFilePath, fileInfo, imageDimension);
            }

            if (resizeType.FindIndex(x => x == ImageResizeType.All) >= 0 || resizeType.FindIndex(x => x == ImageResizeType.KeepOriginal) >= 0)
            {
                ImageResizer.KeepOriginalImage(image, imageFilePath, fileInfo, imageDimension);
            }

        }

        private static String IsImageSizeValid(byte[] image, ImageDimension imageDimension)
        {
            MemoryStream ms = new MemoryStream(image);
            var currentImage = Image.FromStream(ms);


            if (currentImage.Height >= currentImage.Width && currentImage.Height < imageDimension.PortraitDimension.Height)
            {
                return String.Format(ImageMessage.IMAGE_SIZE_INVALID, imageDimension.PortraitDimension.Width, imageDimension.PortraitDimension.Height);
            }
            else if (currentImage.Height <= currentImage.Width && currentImage.Width < imageDimension.LandscapeDimension.Width)
            {
                return String.Format(ImageMessage.IMAGE_SIZE_INVALID, imageDimension.LandscapeDimension.Width, imageDimension.LandscapeDimension.Height);
            }
            else
            {
                return String.Empty;
            }
        }

    }//end class
}
