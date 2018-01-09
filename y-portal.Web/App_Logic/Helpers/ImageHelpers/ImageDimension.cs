using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace YPortal.Helpers
{

   #region Enum Related To Image Resize
    
    public enum ImageResizeType
    {
        All=0,
        KeepOriginal = 1,
        Detail =  2,
        Listing = 3,
        Thumbnail = 4,
        Logo=5,
        Icon = 6,
        FavIcon = 7
    }

    enum ImageType
    {
        Portrait=0,
        Landscape=1,
        Square=2,
        Listing=3,
        Thumbnail=4,
        Logo=5,
        Icon=6,
        FavIcon=7
    }
    #endregion

    
    public class Dimension
    {
        #region Properties
        public decimal Width { get; set; }
        public decimal Height { get; set; }
        #endregion

        #region Constructor
        public Dimension()
        {
        }

        public Dimension(decimal width, decimal height)
        {
            this.Width = width;
            this.Height = height;
        }
        #endregion
    }

    public class ImageDimension
    {
        private static ImageDimension _imageDimension;

        private Dimension _portraitDimension = new Dimension();  //Portrait image: Height must be larger than Width
        private Dimension _landscapeDimension = new Dimension(); //Landscape image: Height must be smaller than Width
        private Dimension _squareDimension = new Dimension();    //Square image: Height and  Width must be equal
        private Dimension _listingDimension = new Dimension();
        private Dimension _thumbnailDimension = new Dimension();
        private Dimension _iconDimension = new Dimension();
        private Dimension _logoDimension = new Dimension();
        private Dimension _favIconDimension = new Dimension();
      

        #region Properties
        public Dimension PortraitDimension
        {
            get { return _portraitDimension; }
            set { _portraitDimension = value; }
        }
        public Dimension LandscapeDimension
        {
            get { return _landscapeDimension; }
            set { _landscapeDimension = value; }
        }
        public Dimension SquareDimension
        {
            get { return _squareDimension; }
            set { _squareDimension = value; }
        }
        public Dimension ListingDimension
        {
            get { return _listingDimension; }
            set { _listingDimension = value; }
        }
        public Dimension ThumbnailDimension
        {
            get { return _thumbnailDimension; }
            set { _thumbnailDimension = value; }
        }
        public Dimension IconDimension
        {
            get { return _iconDimension; }
            set { _iconDimension = value; }
        }
        public Dimension FavIconDimension
        {
            get { return _favIconDimension; }
            set { _favIconDimension = value; }
        }

        public Dimension LogoDimension
        {
            get { return _logoDimension; }
            set { _logoDimension = value; }
        }
        #endregion

        #region Constructor
        private ImageDimension()
        {

        }
        #endregion
        
        public static ImageDimension GetImageDimensionObject(String xmlfile)
        {
            try
            {
                
                if (_imageDimension == null)
                {
                    String[,] xmlDimensionObject = XmlHelper.ImageDimensionObjectFromXml(Enum.GetNames(typeof(ImageType)) ,xmlfile);
                    _imageDimension = InitializeImageDimensionObject(xmlDimensionObject);
                    return _imageDimension;
                }
                else
                {
                    return _imageDimension;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }


        }


        private static ImageDimension InitializeImageDimensionObject(String[,] xmlDimensionObject)
        {
            ImageDimension imageDimension = new ImageDimension();

            int row = xmlDimensionObject.GetLength(0);
            decimal width = 0;
            decimal height = 0;


            for (int counter = 0; counter < row; counter++)
            {
                //Height and Width Number Validation Check 
                IsHeightWidthNumber(xmlDimensionObject[counter, 2], xmlDimensionObject[counter, 1]);

                width = Convert.ToDecimal(xmlDimensionObject[counter, 1]);
                height = Convert.ToDecimal(xmlDimensionObject[counter, 2]);
                

                if (xmlDimensionObject[counter, 0] == ImageType.Landscape.ToString())
                {
                    if (height > width)
                    {
                        throw new Exception(ImageMessage.LANDSCAPE_IMAGE_VALIDATION);
                    }

                    imageDimension.LandscapeDimension.Width = width;
                    imageDimension.LandscapeDimension.Height = height;
                }


                if (xmlDimensionObject[counter, 0] == ImageType.Portrait.ToString())
                {
                 
                    if (width > height)
                    {
                        throw new Exception(ImageMessage.PORTRAIT_IMAGE_VALIDATION);
                    }

                    imageDimension.PortraitDimension.Width = width;
                    imageDimension.PortraitDimension.Height = height;
                }


                if (xmlDimensionObject[counter, 0] == ImageType.Square.ToString())
                {
                  
                    if (width != height)
                    {
                        throw new Exception(ImageMessage.SQUARE_IMAGE_VALIDATION);
                    }

                    imageDimension.SquareDimension.Width = width;
                    imageDimension.SquareDimension.Height = height;
                }

                if (xmlDimensionObject[counter, 0] == ImageType.Listing.ToString())
                {
                    imageDimension.ListingDimension.Width = width;
                    imageDimension.ListingDimension.Height = height;
                }


                if (xmlDimensionObject[counter, 0] == ImageType.Logo.ToString())
                {
                    imageDimension.LogoDimension.Width = width;
                    imageDimension.LogoDimension.Height = height;
                }


                if (xmlDimensionObject[counter, 0] == ImageType.Icon.ToString())
                {
                    imageDimension.IconDimension.Width = width;
                    imageDimension.IconDimension.Height = height;
                }


                if (xmlDimensionObject[counter, 0] == ImageType.FavIcon.ToString())
                {
                    imageDimension.FavIconDimension.Width = width;
                    imageDimension.FavIconDimension.Height = height;
                }

                if (xmlDimensionObject[counter, 0] == ImageType.Thumbnail.ToString())
                {
                    imageDimension.ThumbnailDimension.Width = width;
                    imageDimension.ThumbnailDimension.Height = height;
                }



            }//end for loop

            return imageDimension;
        }

        private static void IsHeightWidthNumber(string height, string width)
        {
            if (!InputValidationHelper.IsInputTextNumberValidation(height))
            {
                throw new Exception(ImageMessage.XML_IMAGE_WIDTH_HEIGHT_NUMBER_VALIDATION);
            }

            if (!InputValidationHelper.IsInputTextNumberValidation(width))
            {
                throw new Exception(ImageMessage.XML_IMAGE_WIDTH_HEIGHT_NUMBER_VALIDATION);
            }
        }
        

    }//end class
}
