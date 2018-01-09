using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using YPortal.Web.Controls;
using prismic;

namespace YPortal.Web.User_Control.Data
{
    public class MediaContainer
    {
        public String ThumbnailURL { get; set; }
        public String CoverImageURL { get; set; }
        public String LargeLabel { get; set; }
        public MenuElement MenuItem {get;set;}       
        public prismic.Api.Document Document { get; set; }
    }
}