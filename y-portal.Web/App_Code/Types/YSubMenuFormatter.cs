using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

namespace YPortal.Web.App_Code.Types
{
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace = "WebbMason", IsNullable = false)]
    public partial class YSubMenuFormatter
    {

        private YSubMenuItems itemsField;

        /// <remarks/>
        public YSubMenuItems items
        {
            get
            {
                return this.itemsField;
            }
            set
            {
                this.itemsField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YSubMenuItems
    {

        private YSubMenuItemsSys sysField;

        private byte totalField;

        private byte skipField;

        private byte limitField;

        private YSubMenuItemsItems itemsField;

        private YSubMenuItemsEntry[] includesField;

        /// <remarks/>
        public YSubMenuItemsSys sys
        {
            get
            {
                return this.sysField;
            }
            set
            {
                this.sysField = value;
            }
        }

        /// <remarks/>
        public byte total
        {
            get
            {
                return this.totalField;
            }
            set
            {
                this.totalField = value;
            }
        }

        /// <remarks/>
        public byte skip
        {
            get
            {
                return this.skipField;
            }
            set
            {
                this.skipField = value;
            }
        }

        /// <remarks/>
        public byte limit
        {
            get
            {
                return this.limitField;
            }
            set
            {
                this.limitField = value;
            }
        }

        /// <remarks/>
        public YSubMenuItemsItems items
        {
            get
            {
                return this.itemsField;
            }
            set
            {
                this.itemsField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlArrayItemAttribute("Entry", IsNullable = false)]
        public YSubMenuItemsEntry[] includes
        {
            get
            {
                return this.includesField;
            }
            set
            {
                this.includesField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YSubMenuItemsSys
    {

        private string typeField;

        /// <remarks/>
        public string type
        {
            get
            {
                return this.typeField;
            }
            set
            {
                this.typeField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YSubMenuItemsItems
    {

        private YSubMenuItemsItemsSys sysField;

        private YSubMenuItemsItemsFields fieldsField;

        /// <remarks/>
        public YSubMenuItemsItemsSys sys
        {
            get
            {
                return this.sysField;
            }
            set
            {
                this.sysField = value;
            }
        }

        /// <remarks/>
        public YSubMenuItemsItemsFields fields
        {
            get
            {
                return this.fieldsField;
            }
            set
            {
                this.fieldsField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YSubMenuItemsItemsSys
    {

        private YSubMenuItemsItemsSysSpace spaceField;
        private string typeField;
        private YSubMenuItemsItemsSysContentType contentTypeField;
        private string idField;
        private byte revisionField;
        private System.DateTime createdAtField;
        private System.DateTime updatedAtField;
        private string localeField;

        /// <remarks/>
        public YSubMenuItemsItemsSysSpace space
        {
            get
            {
                return this.spaceField;
            }
            set
            {
                this.spaceField = value;
            }
        }

        /// <remarks/>
        public string type
        {
            get
            {
                return this.typeField;
            }
            set
            {
                this.typeField = value;
            }
        }

        /// <remarks/>
        public YSubMenuItemsItemsSysContentType contentType
        {
            get
            {
                return this.contentTypeField;
            }
            set
            {
                this.contentTypeField = value;
            }
        }

        /// <remarks/>
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
        public byte revision
        {
            get
            {
                return this.revisionField;
            }
            set
            {
                this.revisionField = value;
            }
        }

        /// <remarks/>
        public System.DateTime createdAt
        {
            get
            {
                return this.createdAtField;
            }
            set
            {
                this.createdAtField = value;
            }
        }

        /// <remarks/>
        public System.DateTime updatedAt
        {
            get
            {
                return this.updatedAtField;
            }
            set
            {
                this.updatedAtField = value;
            }
        }

        /// <remarks/>
        public string locale
        {
            get
            {
                return this.localeField;
            }
            set
            {
                this.localeField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YSubMenuItemsItemsSysSpace
    {

        private YSubMenuItemsItemsSysSpaceSys sysField;

        /// <remarks/>
        public YSubMenuItemsItemsSysSpaceSys sys
        {
            get
            {
                return this.sysField;
            }
            set
            {
                this.sysField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YSubMenuItemsItemsSysSpaceSys
    {

        private string typeField;

        private string linkTypeField;

        private string idField;

        /// <remarks/>
        public string type
        {
            get
            {
                return this.typeField;
            }
            set
            {
                this.typeField = value;
            }
        }

        /// <remarks/>
        public string linkType
        {
            get
            {
                return this.linkTypeField;
            }
            set
            {
                this.linkTypeField = value;
            }
        }

        /// <remarks/>
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
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YSubMenuItemsItemsSysContentType
    {

        private YSubMenuItemsItemsSysContentTypeSys sysField;

        /// <remarks/>
        public YSubMenuItemsItemsSysContentTypeSys sys
        {
            get
            {
                return this.sysField;
            }
            set
            {
                this.sysField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YSubMenuItemsItemsSysContentTypeSys
    {

        private string typeField;

        private string linkTypeField;

        private string idField;

        /// <remarks/>
        public string type
        {
            get
            {
                return this.typeField;
            }
            set
            {
                this.typeField = value;
            }
        }

        /// <remarks/>
        public string linkType
        {
            get
            {
                return this.linkTypeField;
            }
            set
            {
                this.linkTypeField = value;
            }
        }

        /// <remarks/>
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
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YSubMenuItemsItemsFields
    {

        private string entryIdField;

        private string subEntryIdField;

        private YSubMenuItemsItemsFieldsPages[] pagesField;

        /// <remarks/>
        public string entryId
        {
            get
            {
                return this.entryIdField;
            }
            set
            {
                this.entryIdField = value;
            }
        }

        /// <remarks/>
        public string subEntryId
        {
            get
            {
                return this.subEntryIdField;
            }
            set
            {
                this.subEntryIdField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("pages")]
        public YSubMenuItemsItemsFieldsPages[] pages
        {
            get
            {
                return this.pagesField;
            }
            set
            {
                this.pagesField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YSubMenuItemsItemsFieldsPages
    {

        private YSubMenuItemsItemsFieldsPagesSys sysField;

        /// <remarks/>
        public YSubMenuItemsItemsFieldsPagesSys sys
        {
            get
            {
                return this.sysField;
            }
            set
            {
                this.sysField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YSubMenuItemsItemsFieldsPagesSys
    {

        private string typeField;

        private string linkTypeField;

        private string idField;

        /// <remarks/>
        public string type
        {
            get
            {
                return this.typeField;
            }
            set
            {
                this.typeField = value;
            }
        }

        /// <remarks/>
        public string linkType
        {
            get
            {
                return this.linkTypeField;
            }
            set
            {
                this.linkTypeField = value;
            }
        }

        /// <remarks/>
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
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YSubMenuItemsEntry
    {

        private YSubMenuItemsEntrySys sysField;

        private YSubMenuItemsEntryFields fieldsField;

        /// <remarks/>
        public YSubMenuItemsEntrySys sys
        {
            get
            {
                return this.sysField;
            }
            set
            {
                this.sysField = value;
            }
        }

        /// <remarks/>
        public YSubMenuItemsEntryFields fields
        {
            get
            {
                return this.fieldsField;
            }
            set
            {
                this.fieldsField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YSubMenuItemsEntrySys
    {

        private YSubMenuItemsEntrySysSpace spaceField;

        private string typeField;

        private YSubMenuItemsEntrySysContentType contentTypeField;

        private string idField;

        private byte revisionField;

        private System.DateTime createdAtField;

        private System.DateTime updatedAtField;

        private string localeField;

        /// <remarks/>
        public YSubMenuItemsEntrySysSpace space
        {
            get
            {
                return this.spaceField;
            }
            set
            {
                this.spaceField = value;
            }
        }

        /// <remarks/>
        public string type
        {
            get
            {
                return this.typeField;
            }
            set
            {
                this.typeField = value;
            }
        }

        /// <remarks/>
        public YSubMenuItemsEntrySysContentType contentType
        {
            get
            {
                return this.contentTypeField;
            }
            set
            {
                this.contentTypeField = value;
            }
        }

        /// <remarks/>
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
        public byte revision
        {
            get
            {
                return this.revisionField;
            }
            set
            {
                this.revisionField = value;
            }
        }

        /// <remarks/>
        public System.DateTime createdAt
        {
            get
            {
                return this.createdAtField;
            }
            set
            {
                this.createdAtField = value;
            }
        }

        /// <remarks/>
        public System.DateTime updatedAt
        {
            get
            {
                return this.updatedAtField;
            }
            set
            {
                this.updatedAtField = value;
            }
        }

        /// <remarks/>
        public string locale
        {
            get
            {
                return this.localeField;
            }
            set
            {
                this.localeField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YSubMenuItemsEntrySysSpace
    {

        private YSubMenuItemsEntrySysSpaceSys sysField;

        /// <remarks/>
        public YSubMenuItemsEntrySysSpaceSys sys
        {
            get
            {
                return this.sysField;
            }
            set
            {
                this.sysField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YSubMenuItemsEntrySysSpaceSys
    {

        private string typeField;

        private string linkTypeField;

        private string idField;

        /// <remarks/>
        public string type
        {
            get
            {
                return this.typeField;
            }
            set
            {
                this.typeField = value;
            }
        }

        /// <remarks/>
        public string linkType
        {
            get
            {
                return this.linkTypeField;
            }
            set
            {
                this.linkTypeField = value;
            }
        }

        /// <remarks/>
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
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YSubMenuItemsEntrySysContentType
    {

        private YSubMenuItemsEntrySysContentTypeSys sysField;

        /// <remarks/>
        public YSubMenuItemsEntrySysContentTypeSys sys
        {
            get
            {
                return this.sysField;
            }
            set
            {
                this.sysField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YSubMenuItemsEntrySysContentTypeSys
    {

        private string typeField;

        private string linkTypeField;

        private string idField;

        /// <remarks/>
        public string type
        {
            get
            {
                return this.typeField;
            }
            set
            {
                this.typeField = value;
            }
        }

        /// <remarks/>
        public string linkType
        {
            get
            {
                return this.linkTypeField;
            }
            set
            {
                this.linkTypeField = value;
            }
        }

        /// <remarks/>
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
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
   // [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YSubMenuItemsEntryFields
    {

        private string descriptionField;
        private int? _position = 0;
        private bool? _displayOnMenu;
        private bool? _menuBasedLink;

        private string _linkclass;

        /// <remarks/>
        public string description
        {
            get
            {
                return this.descriptionField;
            }
            set
            {
                this.descriptionField = value;
            }
        }

       [XmlElementAttribute("position", IsNullable = true)]       
        public int? position
        {
            get
            {
                return String.IsNullOrEmpty(this._position.ToString()) ? 0 : this._position;
            }
            set
            {
                int _foo = 0;

                if(int.TryParse(value.ToString(), out _foo)){
                    this._position = _foo;
                }
                
               
            }
        }


        [XmlElementAttribute("displayOnMenu", IsNullable = true)]
        public bool? displayOnMenu
        {
            get
            {
                return this._displayOnMenu;
            }
            set
            {
                this._displayOnMenu = value;
            }
        }


        [XmlElementAttribute("menuBasedLink", IsNullable = true)]
        public bool? menuBasedLink
        {
            get
            {
                return this._menuBasedLink == null || this._menuBasedLink == false ? false : true;
            }
            set
            {

                this._menuBasedLink = value;
            }
        }


        /// <summary>
        /// Used decorate link:
        /// </summary>
        public string linkclass
        {
            get
            {
                return this._linkclass;
            }
            set
            {
                this._linkclass = value;
            }
        }

    }
}