using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace YPortal.Helpers
{
    public class ImageContainer
    {
        public List<ImageResizeType> ImageResizeType = new List<ImageResizeType>();
        public byte[] ImageBytes { get; set; }
        public String ContentType { get; set; }
        public String ImageName { get; set; }
    }//end class
}
