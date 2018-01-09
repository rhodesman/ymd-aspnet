using System.Xml.Serialization;
using System.Collections.Generic;


namespace YPortal.Web.App_Code.Types
{




    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true)]
    [System.Xml.Serialization.XmlRootAttribute(Namespace = "", IsNullable = false)]
    public partial class div
    {

        private List<divP> _pField;
        private List<img> _imgField;
        private List<div> _div1Field;
        private divOL _olField;
        private string _classField;
        private string _datarideField;
        private string _dataintervalField;
        private string _idField;
        private div _controlTitle;
        private string _value;



        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("ol", Form = System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public divOL ol
        {
            get
            {
                return this._olField;
            }
            set
            {
                this._olField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("p", Form = System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public List<divP> p
        {
            get
            {
                return this._pField;
            }
            set
            {
                this._pField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("img")]
        public List<img> img
        {
            get
            {
                return this._imgField;
            }
            set
            {
                this._imgField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("div")]
        public List<div> div1
        {
            get
            {
                return this._div1Field;
            }
            set
            {
                this._div1Field = value;
            }
        }





        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string @class
        {
            get
            {
                return this._classField;
            }
            set
            {
                this._classField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute("data-ride")]
        public string dataride
        {
            get
            {
                return this._datarideField;
            }
            set
            {
                this._datarideField = value;
            }
        }

        [System.Xml.Serialization.XmlAttributeAttribute("data-interval")]
        public string datainterval
        {
            get
            {
                return this._dataintervalField;
            }
            set
            {
                this._dataintervalField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string id
        {
            get
            {
                return this._idField;
            }
            set
            {
                this._idField = value;
            }
        }

        [XmlTextAttribute()]
        public string Value
        {
            get
            {
                return _value;
            }
            set
            {
                _value = value;
            }
        }





    }



    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true)]
    public partial class divP
    {

        private string _value;

        /// <remarks/>
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

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true)]
    [System.Xml.Serialization.XmlRootAttribute(Namespace = "", IsNullable = false)]
    public partial class img
    {
        private string _srcField;
        private string _altField;
        private string _datasrcField;

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string src
        {
            get
            {
                return this._srcField;
            }
            set
            {
                this._srcField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string alt
        {
            get
            {
                return this._altField;
            }
            set
            {
                this._altField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute("data-src")]
        public string datasrc
        {
            get
            {
                return this._datasrcField;
            }
            set
            {
                this._datasrcField = value;
            }
        }
    }


    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true)]
    public partial class divOL
    {

        private List<divOLLI> _liField;
        private string _classField;

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("li", Form = System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public List<divOLLI> li
        {
            get
            {
                return this._liField;
            }
            set
            {
                this._liField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string @class
        {
            get
            {
                return this._classField;
            }
            set
            {
                this._classField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true)]
    public partial class divOLLI
    {

        private List<divOLLIA> _aField;
        private string _classField;
        private string _dataslidetoField;
        private string _datatargetField;

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("a", Form = System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public List<divOLLIA> Anchor
        {
            get
            {
                return this._aField;
            }
            set
            {
                this._aField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string @class
        {
            get
            {
                return this._classField;
            }
            set
            {
                this._classField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute("data-slide-to")]
        public string dataslideto
        {
            get
            {
                return this._dataslidetoField;
            }
            set
            {
                this._dataslidetoField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute("data-target")]
        public string datatarget
        {
            get
            {
                return this._datatargetField;
            }
            set
            {
                this._datatargetField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true)]
    public partial class divOLLIA
    {

        private string _spanField;
        private List<img> _imgField;
        private string _hrefField;
        private string _onclickField;
        private string _datatoggleField;


        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("img")]
        public List<img> img
        {
            get
            {
                return this._imgField;
            }
            set
            {
                this._imgField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Form = System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public string span
        {
            get
            {
                return this._spanField;
            }
            set
            {
                this._spanField = value;
            }
        }



        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string href
        {
            get
            {
                return this._hrefField;
            }
            set
            {
                this._hrefField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string onclick
        {
            get
            {
                return this._onclickField;
            }
            set
            {
                this._onclickField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute("data-toggle")]
        public string datatoggle
        {
            get
            {
                return this._datatoggleField;
            }
            set
            {
                this._datatoggleField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true)]
    [System.Xml.Serialization.XmlRootAttribute(Namespace = "", IsNullable = false)]
    public partial class YCarouselFormatter
    {

        private div _panel;

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("div", typeof(div))]
        public div Panel
        {
            get
            {
                return this._panel;
            }
            set
            {
                this._panel = value;
            }
        }
    }
}
