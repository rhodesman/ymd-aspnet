using System.Xml.Serialization;
using System.Collections.Generic;
using System.Xml.Schema;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;

namespace YPortal.Web.App_Code.Types.SiteMap
{
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true)]
    [System.Xml.Serialization.XmlRootAttribute(Namespace = "", IsNullable = false)]
    public partial class div
    {

        //private List<List<divH3>> h3Field;
        private List<divH3> h3Field;
        private List<divULLI> ulField;

        private List<div> div1Field;
        private List<divH4> h4Field;
        private string classField;
        private string idField;
        private string styleField;



        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("h3", Form = System.Xml.Schema.XmlSchemaForm.Unqualified, IsNullable = true)]

        //[System.Xml.Serialization.XmlArrayAttribute(Form = System.Xml.Schema.XmlSchemaForm.Unqualified)]
        //[System.Xml.Serialization.XmlArrayItemAttribute("h3", typeof(List<divH3>), Form = System.Xml.Schema.XmlSchemaForm.Unqualified, IsNullable = false)]
        public List<divH3> h3
        {
            get
            {
                return this.h3Field;
            }
            set
            {
                this.h3Field = value;
            }
        }

        /// <remarks/>
        // [System.Xml.Serialization.XmlElementAttribute("ul", Form = System.Xml.Schema.XmlSchemaForm.Unqualified, IsNullable = true)]
        [System.Xml.Serialization.XmlArrayAttribute(Form = System.Xml.Schema.XmlSchemaForm.Unqualified)]
        [System.Xml.Serialization.XmlArrayItemAttribute("li", typeof(divULLI), Form = System.Xml.Schema.XmlSchemaForm.Unqualified, IsNullable = false)]
        public List<divULLI> ul
        {
            get
            {
                return this.ulField;
            }
            set
            {
                this.ulField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("div")]
        public List<div> div1
        {
            get
            {
                return this.div1Field;
            }
            set
            {
                this.div1Field = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("h4", Form = System.Xml.Schema.XmlSchemaForm.Unqualified)]
        public List<divH4> h4
        {
            get
            {
                return this.h4Field;
            }
            set
            {
                this.h4Field = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string @class
        {
            get
            {
                return this.classField;
            }
            set
            {
                this.classField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string id
        {
            get
            {
                return this.idField;
            }
            set
            {
                this.idField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string style
        {
            get
            {
                return this.styleField;
            }
            set
            {
                this.styleField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true)]
    public partial class divH3
    {

        private string classField;
        private string valueField;
        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string @class
        {
            get
            {
                return this.classField;
            }
            set
            {
                this.classField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlTextAttribute()]
        public string Value
        {
            get
            {
                return this.valueField;
            }
            set
            {
                this.valueField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true)]
    public partial class divULLI
    {

        private List<a> aField;
        private string classField;

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("a", IsNullable = true)]
        public List<a> a
        {
            get
            {
                return this.aField;
            }
            set
            {
                this.aField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string @class
        {
            get
            {
                return this.classField;
            }
            set
            {
                this.classField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true)]
    [System.Xml.Serialization.XmlRootAttribute(Namespace = "", IsNullable = true)]
    public partial class a
    {

        private string hrefField;
        private string onclickField;
        private string targetField;
        private string dataparentField;
        private string datatoggleField;
        private string classField;
        private string valueField;

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string href
        {
            get
            {
                return this.hrefField;
            }
            set
            {
                this.hrefField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string onclick
        {
            get
            {
                return this.onclickField;
            }
            set
            {
                this.onclickField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string target
        {
            get
            {
                return this.targetField;
            }
            set
            {
                this.targetField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute("data-parent")]
        public string dataparent
        {
            get
            {
                return this.dataparentField;
            }
            set
            {
                this.dataparentField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute("data-toggle")]
        public string datatoggle
        {
            get
            {
                return this.datatoggleField;
            }
            set
            {
                this.datatoggleField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string @class
        {
            get
            {
                return this.classField;
            }
            set
            {
                this.classField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlTextAttribute()]
        public string Value
        {
            get
            {
                return this.valueField;
            }
            set
            {
                this.valueField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true)]
    public partial class divH4
    {

        private List<a> aField;

        private string classField;

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("a", IsNullable = true)]
        public List<a> a
        {
            get
            {
                return this.aField;
            }
            set
            {
                this.aField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string @class
        {
            get
            {
                return this.classField;
            }
            set
            {
                this.classField = value;
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
    public partial class YSiteMapFormatter
    {

        private div panel = null;

        /// <remarks/>
        //[System.Xml.Serialization.XmlElementAttribute("a", typeof(a), IsNullable = true)]
        // [System.Xml.Serialization.XmlElementAttribute("div", typeof(div))]
        public div Panel
        {
            get
            {
                return this.panel;
            }
            set
            {
                this.panel = value;
            }
        }
    }
}