using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace YPortal.Helpers
{
    public class ImageMessage
    {
        // === Image Related  Message ===
        public const String IMAGE_REQUIRED = "Image required.";
        public const String IMAGE_FORMAT_VALIDATION = "Only jpg, gif, png, jpeg, bmp, pjpeg, x-png format are supported.";
        public const String IMAGE_SIZE_INVALID = "Image size invalid.  Minimum Width: {0}px and Height: {1}px.";
        public const String IMAGE_UPLOAD_SUCCESSFULL = "Image(s) uploaded successfully.";


        //==== Xml Related Message =======================
        public const String XML_FILE_NOT_FOUND = "Xml file not found.";
        public const String PORTRAIT_IMAGE_VALIDATION = "For portrait image height must be larger than width.Please provide valid data in image dimension xml file.";
        public const String LANDSCAPE_IMAGE_VALIDATION = "For landscape image width must be larger than height.Please provide valid data in image dimension xml file.";
        public const String SQUARE_IMAGE_VALIDATION = "For square image width and height must be equal.Please provide valid data in image dimension xml file.";
        public const String XML_FILE_MODIFIED = "Image dimension xml file has modfied. Please do not modify any tag name of this xml file.";
        public const String XML_IMAGE_WIDTH_MUST_NUMBER = "Image width must be number. Please check your input in image dimension xml file.";
        public const String XML_IMAGE_HEIGHT_MUST_NUMBER = "Image height must be number. Please check your input in image dimension xml file.";
        public const String XML_IMAGE_TYPE_TAG_VALUE_ERROR = "Do not change inner value of TypeName tag in image dimension xml file.";
        public const String XML_IMAGE_TAG_NAME_MODIFIED = "Do not change xml tag name. Please keep it as it is in image dimension xml file.";
        public const String XML_IMAGE_TAG_WIDTH_HEIGHT_VALUE_REQUIRED = "In image dimension xml file tag: TypeName, Width and Height  must have values they can not be empty.";
        public const String XML_IMAGE_WIDTH_HEIGHT_NUMBER_VALIDATION = "Height and width must be number. Please check your input in image dimension xml file.";
    }
}
