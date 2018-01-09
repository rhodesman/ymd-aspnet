using System.Xml.Schema;
using System.Xml.Serialization;
using System.Collections.Generic;




namespace YPortal.Web.App_Code.Types
{
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    [System.Xml.Serialization.XmlRootAttribute("YMenu", Namespace = "WebbMason", IsNullable = false)]

    public partial class YMenu
    {
        private YMenuItems itemsField;
        public YMenuItems items
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


    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]

    public partial class YMenuItems
    {
        private YMenuItemsIncludes _includes;

        public YMenuItemsIncludes includes
        {
            get
            {
                return this._includes;
            }
            set
            {
                this._includes = value;
            }
        }
    }


    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
    [System.SerializableAttribute()]
    // [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]

    public partial class YMenuItemsIncludes
    {
        private List<YMenuItemsIncludesEntry> entryField;
        private List<YMenuItemsIncludesAsset> assetField;

        [XmlElement("Entry", IsNullable = true)]
        public List<YMenuItemsIncludesEntry> Entries
        {
            get
            {
                return this.entryField;
            }
            set
            {
                this.entryField = value;
            }
        }


        [XmlElement("Asset", IsNullable = true)]
        public List<YMenuItemsIncludesAsset> Assets
        {
            get
            {
                return this.assetField;
            }
            set
            {
                this.assetField = value;
            }
        }
    }


    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute("Entry", AnonymousType = true, Namespace = "WebbMason")]
    public partial class YMenuItemsIncludesEntry
    {

        private YMenuItemsIncludesEntryEntrySys entrySysField;
        private YMenuItemsIncludesEntryEntryFields entryFieldsField;


        [System.Xml.Serialization.XmlElementAttribute("sys")]
        public YMenuItemsIncludesEntryEntrySys EntrySys
        {
            get
            {
                return this.entrySysField;
            }
            set
            {
                this.entrySysField = value;
            }
        }

        [System.Xml.Serialization.XmlElementAttribute("fields")]
        public YMenuItemsIncludesEntryEntryFields EntryFields
        {
            get
            {
                return this.entryFieldsField;
            }
            set
            {
                this.entryFieldsField = value;
            }
        }
    }


    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YMenuItemsIncludesEntryEntrySys
    {

        private YMenuItemsIncludesEntryEntrySysSpace spaceField;
        private string typeField;
        private YMenuItemsIncludesEntryEntrySysContentType contentTypeField;
        private string idField;
        private long revisionField;
        private System.DateTime createdAtField;
        private System.DateTime updatedAtField;
        private string localeField;



        public YMenuItemsIncludesEntryEntrySysSpace space
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


        public YMenuItemsIncludesEntryEntrySysContentType contentType
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


        public long revision
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


    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YMenuItemsIncludesEntryEntrySysSpace
    {
        private YMenuItemsIncludesEntryEntrySysSpaceSys sysField;

        public YMenuItemsIncludesEntryEntrySysSpaceSys sys
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


    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YMenuItemsIncludesEntryEntrySysSpaceSys
    {
        private string typeField;
        private string linkTypeField;
        private string idField;

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


    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YMenuItemsIncludesEntryEntrySysContentType
    {

        private YMenuItemsIncludesEntryEntrySysContentTypeSys sysField;

        public YMenuItemsIncludesEntryEntrySysContentTypeSys sys
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


    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YMenuItemsIncludesEntryEntrySysContentTypeSys
    {
        private string typeField;
        private string linkTypeField;
        private string idField;

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



    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
    [System.SerializableAttribute()]
    //[System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YMenuEntrySysInclude
    {
        private YMenuItemsIncludesEntryEntrySysSpaceSys sysField;

        public YMenuItemsIncludesEntryEntrySysSpaceSys sys
        {
            get
            {
                return sysField;
            }
            set
            {
                sysField = value;
            }
        }
    }



    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YMenuItemsIncludesEntryEntryFields
    {
        private long idField;
        private long parentIdField;
        private long columnField;
        private bool isActiveField;

        private bool displayThumbNailField = true;
        private string textField;
        private bool isGropupItemField;
        private string contentTypeIdField;
        private object contentFieldField;
        private string controlIdField;

        private string actionField;
        private string targetField;
        private string classField;
        private string menuPanelClassField;
        private string labelField;

        private string pageLookupField;
        private string pagedataTargetField;
        private string pagedataToggleField;

        private YMenuEntrySysInclude thumbnailField;
        private YMenuEntrySysInclude imageField;


        public long id
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


        public long parentId
        {
            get
            {
                return this.parentIdField;
            }
            set
            {
                this.parentIdField = value;
            }
        }


        public long column
        {
            get
            {
                return this.columnField;
            }
            set
            {
                this.columnField = value;
            }
        }


        public bool displayThumbNail
        {
            get
            {
                return this.displayThumbNailField;
            }
            set
            {
                this.displayThumbNailField = value;
            }
        }

        public bool isActive
        {
            get
            {
                return this.isActiveField;
            }
            set
            {
                this.isActiveField = value;
            }
        }


        public string text
        {
            get
            {
                return this.textField;
            }
            set
            {
                this.textField = value;
            }
        }


        public bool isGropupItem
        {
            get
            {
                return this.isGropupItemField;
            }
            set
            {
                this.isGropupItemField = value;
            }
        }


        public string contentTypeId
        {
            get
            {
                return this.contentTypeIdField;
            }
            set
            {
                this.contentTypeIdField = value;
            }
        }


        public object contentField
        {
            get
            {
                return this.contentFieldField;
            }
            set
            {
                this.contentFieldField = value;
            }
        }


        public string controlId
        {
            get
            {
                return this.controlIdField;
            }
            set
            {
                this.controlIdField = value;
            }
        }


        public string action
        {
            get
            {
                return this.actionField;
            }
            set
            {
                this.actionField = value;
            }
        }

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

        public string menuPanelClass
        {
            get
            {
                return this.menuPanelClassField;
            }
            set
            {
                this.menuPanelClassField = value;
            }
        }

        public string label
        {
            get
            {
                return this.labelField;
            }
            set
            {
                this.labelField = value;
            }
        }

        public string pageLookup
        {
            get
            {
                return this.pageLookupField;
            }
            set
            {
                this.pageLookupField = value;
            }
        }


        public string dataTarget
        {
            get
            {
                return this.pagedataTargetField;
            }
            set
            {
                this.pagedataTargetField = value;
            }
        }

        public string dataToggle
        {
            get
            {
                return this.pagedataToggleField;
            }
            set
            {
                this.pagedataToggleField = value;
            }
        }


        public YMenuEntrySysInclude thumbnail
        {
            get
            {
                return thumbnailField;
            }
            set
            {
                thumbnailField = value;
            }
        }

        public YMenuEntrySysInclude image
        {
            get
            {
                return imageField;
            }
            set
            {
                imageField = value;
            }
        }



    }


    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute("Asset", AnonymousType = true, Namespace = "WebbMason")]
    public partial class YMenuItemsIncludesAsset
    {
        private YMenuItemsIncludesAssetAssetSys assetSysField;
        private YMenuItemsIncludesAssetAssetFields assetFieldsField;

        [System.Xml.Serialization.XmlElementAttribute("sys")]
        public YMenuItemsIncludesAssetAssetSys AssetSys
        {
            get
            {
                return this.assetSysField;
            }
            set
            {
                this.assetSysField = value;
            }
        }

        [System.Xml.Serialization.XmlElementAttribute("fields")]
        public YMenuItemsIncludesAssetAssetFields AssetFields
        {
            get
            {
                return this.assetFieldsField;
            }
            set
            {
                this.assetFieldsField = value;
            }
        }
    }


    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YMenuItemsIncludesAssetAssetSys
    {

        private YMenuItemsIncludesAssetAssetSysSpace spaceField;
        private string typeField;
        private string idField;
        private long revisionField;
        private System.DateTime createdAtField;
        private System.DateTime updatedAtField;
        private string localeField;


        public YMenuItemsIncludesAssetAssetSysSpace space
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


        public long revision
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


    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YMenuItemsIncludesAssetAssetSysSpace
    {
        private YMenuItemsIncludesAssetAssetSysSpaceSys sysField;

        public YMenuItemsIncludesAssetAssetSysSpaceSys sys
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


    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YMenuItemsIncludesAssetAssetSysSpaceSys
    {
        private string typeField;
        private string linkTypeField;
        private string idField;

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


    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YMenuItemsIncludesAssetAssetFields
    {
        private YMenuItemsIncludesAssetAssetFieldsFile fileField;
        private string titleField;
        private string descriptionField;


        public YMenuItemsIncludesAssetAssetFieldsFile file
        {
            get
            {
                return this.fileField;
            }
            set
            {
                this.fileField = value;
            }
        }


        public string title
        {
            get
            {
                return this.titleField;
            }
            set
            {
                this.titleField = value;
            }
        }


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
    }


    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YMenuItemsIncludesAssetAssetFieldsFile
    {
        private string fileNameField;
        private string contentTypeField;
        private YMenuItemsIncludesAssetAssetFieldsFileDetails detailsField;
        private string urlField;

        public string fileName
        {
            get
            {
                return this.fileNameField;
            }
            set
            {
                this.fileNameField = value;
            }
        }


        public string contentType
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


        public YMenuItemsIncludesAssetAssetFieldsFileDetails details
        {
            get
            {
                return this.detailsField;
            }
            set
            {
                this.detailsField = value;
            }
        }


        public string url
        {
            get
            {
                return this.urlField;
            }
            set
            {
                this.urlField = value;
            }
        }
    }


    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YMenuItemsIncludesAssetAssetFieldsFileDetails
    {
        private YMenuItemsIncludesAssetAssetFieldsFileDetailsImage imageField;
        private long sizeField;

        public YMenuItemsIncludesAssetAssetFieldsFileDetailsImage image
        {
            get
            {
                return this.imageField;
            }
            set
            {
                this.imageField = value;
            }
        }


        public long size
        {
            get
            {
                return this.sizeField;
            }
            set
            {
                this.sizeField = value;
            }
        }
    }


    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YMenuItemsIncludesAssetAssetFieldsFileDetailsImage
    {
        private long widthField;
        private long heightField;


        public long width
        {
            get
            {
                return this.widthField;
            }
            set
            {
                this.widthField = value;
            }
        }


        public long height
        {
            get
            {
                return this.heightField;
            }
            set
            {
                this.heightField = value;
            }
        }
    }
}
