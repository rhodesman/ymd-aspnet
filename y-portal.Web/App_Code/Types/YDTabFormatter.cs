using System.Xml.Serialization;
using System.Collections.Generic;
using System.Xml.Schema;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;

namespace YPortal.Web.App_Code.Types
{
    [GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [DebuggerStepThroughAttribute()]
    [DesignerCategoryAttribute("code")]
    [XmlTypeAttribute(AnonymousType = true)]
    [XmlRootAttribute("div", Namespace = "", IsNullable = false)]

    public partial class DivPanel
    {
        private List<DivPanel> _panels;
        private List<HtmlAnchor> _anchors;
        private List<DivPanelUL> _panelLists;
        private string _class;
        private string _style;
        private string _id;
        private string _value;

        [XmlElementAttribute("ul", Form = System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public List<DivPanelUL> UnOrderedList
        {
            get
            {
                return this._panelLists;
            }
            set
            {
                this._panelLists = value;
            }
        }

        [XmlElementAttribute("div")]
        public List<DivPanel> SubDivPanel
        {
            get
            {
                return this._panels;
            }
            set
            {
                this._panels = value;
            }
        }

        [XmlElementAttribute("a", IsNullable = true)]
        public List<HtmlAnchor> Anchor
        {
            get
            {
                return this._anchors;
            }
            set
            {
                this._anchors = value;
            }
        }

        [XmlAttributeAttribute()]
        public string @class
        {
            get
            {
                return this._class;
            }
            set
            {
                this._class = value;
            }
        }


        [XmlAttributeAttribute()]
        public string style
        {
            get
            {
                return this._style;
            }
            set
            {
                this._style = value;
            }
        }


        [XmlAttributeAttribute()]
        public string id
        {
            get
            {
                return this._id;
            }
            set
            {
                this._id = value;
            }
        }

        [XmlTextAttribute()]
        public string Value
        {
            get
            {
                return this._value;
            }
            set
            {
                this._value = value;
            }
        }
    }


    [GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [DebuggerStepThroughAttribute()]
    [DesignerCategoryAttribute("code")]
    [XmlTypeAttribute(AnonymousType = true)]
    [XmlRootAttribute(Namespace = "", IsNullable = true)]
    public partial class HtmlAnchor
    {
        private string _href;
        private string _class;
        private string _datatoggle;
        private string _dataparent;
        private string _value;

        [XmlAttributeAttribute()]
        public string href
        {
            get
            {
                return this._href;
            }
            set
            {
                this._href = value;
            }
        }

        [XmlAttributeAttribute()]
        public string @class
        {
            get
            {
                return this._class;
            }
            set
            {
                this._class = value;
            }
        }


        [XmlAttributeAttribute("data-toggle")]
        public string datatoggle
        {
            get
            {
                return this._datatoggle;
            }
            set
            {
                this._datatoggle = value;
            }
        }


        [XmlAttributeAttribute("data-parent")]
        public string dataparent
        {
            get
            {
                return this._dataparent;
            }
            set
            {
                this._dataparent = value;
            }
        }


        [XmlTextAttribute()]
        public string Value
        {
            get
            {
                return this._value;
            }
            set
            {
                this._value = value;
            }
        }
    }


    [GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [DebuggerStepThroughAttribute()]
    [DesignerCategoryAttribute("code")]
    [XmlTypeAttribute(AnonymousType = true)]

    public partial class DivPanelUL
    {

        private List<UListEment> _listItems;
        private string _class;
        private string _id;


        [XmlElementAttribute("li", Form = System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public List<UListEment> ListItems
        {
            get
            {
                return this._listItems;
            }
            set
            {
                this._listItems = value;
            }
        }


        [XmlAttributeAttribute()]
        public string @class
        {
            get
            {
                return this._class;
            }
            set
            {
                this._class = value;
            }
        }


        [XmlAttributeAttribute()]
        public string id
        {
            get
            {
                return this._id;
            }
            set
            {
                this._id = value;
            }
        }
    }


    [GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [DebuggerStepThroughAttribute()]
    [DesignerCategoryAttribute("code")]
    [XmlTypeAttribute(AnonymousType = true)]
    public partial class UListEment
    {

        private List<HtmlAnchor> _anchors;
        private string _class;


        [XmlElementAttribute("a", IsNullable = true)]
        public List<HtmlAnchor> Anchors
        {
            get
            {
                return this._anchors;
            }
            set
            {
                this._anchors = value;
            }
        }


        [XmlAttributeAttribute()]
        public string @class
        {
            get
            {
                return this._class;
            }
            set
            {
                this._class = value;
            }
        }
    }


    [GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [DebuggerStepThroughAttribute()]
    [DesignerCategoryAttribute("code")]
    [XmlTypeAttribute(AnonymousType = true)]
    [XmlRootAttribute(Namespace = "", IsNullable = false)]
    public partial class YDTabFormatter
    {
        private List<DivPanel> _panels;

        [XmlElementAttribute("div", typeof(DivPanel))]
        public List<DivPanel> Panels
        {
            get
            {
                return this._panels;
            }
            set
            {
                this._panels = value;
            }
        }
    }
}
