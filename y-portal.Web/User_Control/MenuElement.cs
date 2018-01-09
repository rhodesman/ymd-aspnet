using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace YPortal.Web.Controls
{
    public class MenuElement
    {
        public string @class { get; set; }
        public string datatoggle { get; set; }
        public string href { get; set; }
        public string action { get; set; }
        public string Text { get; set; }
        public string OverrideLabel { get; set; }
        public string target { get; set; }
        public string dataTarget { get; set; }
        public int Id { get; set; }
        public string DocumentId { get; set; }
        public string SubDocumentId { get; set; }

        public int ParentId { get; set; }
        public int RelLinkId { get; set; }

        public string menuPanelClass { get; set; }
        public int Column { get; set; }
        //public List<MenuElement> SubMenu { get; set; }
        public bool isGroupItem { get; set; }
        public string contentTypeId { get; set; }
        public bool DisplayThumbNail { get; set; }
        public bool StandAloneThumbNail { get; set; }
        public string PageLookup { get; set; }
        public string ParentGroup { get; set; }
        public string Group { get; set; }
        public string Category { get; set; }
        public string ContentType { get; set; }
        public string Thumbnail { get; set; }
        public bool DisplaySubMenu { get; set; }
        public string RouteURL { get; set; }

        public string AnchorClass { get; set; }
    }
}