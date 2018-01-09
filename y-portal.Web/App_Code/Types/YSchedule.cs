using System.Xml.Schema;
using System.Xml.Serialization;
using System.Collections.Generic;

namespace YPortal.Web.App_Code.Types
{   
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace = "WebbMason", IsNullable = false)]
    public partial class YSchedule
    {
        private YScheduleItems itemsField;
        
        public YScheduleItems items
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItems
    {
        private YScheduleItemsSys sysField;
        private byte totalField;
        private byte skipField;
        private byte limitField;
        private YScheduleItemsItems itemsField;
        private List<YScheduleItemsEntry> includesField;

        
        public YScheduleItemsSys sys
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

        
        public YScheduleItemsItems items
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

        
        [System.Xml.Serialization.XmlArrayItemAttribute("Entry", IsNullable = false)]
        public List<YScheduleItemsEntry> includes
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsSys
    {
        private string typeField;
        
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsItems
    {
        private YScheduleItemsItemsSys sysField;
        private YScheduleItemsItemsFields fieldsField;
        
        public YScheduleItemsItemsSys sys
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

        
        public YScheduleItemsItemsFields fields
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsItemsSys
    {
        private YScheduleItemsItemsSysSpace spaceField;
        private string typeField;
        private YScheduleItemsItemsSysContentType contentTypeField;
        private string idField;
        private byte revisionField;
        private System.DateTime createdAtField;
        private System.DateTime updatedAtField;
        private string localeField;

        
        public YScheduleItemsItemsSysSpace space
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

        
        public YScheduleItemsItemsSysContentType contentType
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsItemsSysSpace
    {
        private YScheduleItemsItemsSysSpaceSys sysField;
        
        public YScheduleItemsItemsSysSpaceSys sys
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsItemsSysSpaceSys
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsItemsSysContentType
    {
        private YScheduleItemsItemsSysContentTypeSys sysField;
        
        public YScheduleItemsItemsSysContentTypeSys sys
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsItemsSysContentTypeSys
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsItemsFields
    {
        private string entryIdField;
        private List<YScheduleItemsItemsFieldsInterests> interestsField;
        
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

        
        [System.Xml.Serialization.XmlElementAttribute("interests")]
        public List<YScheduleItemsItemsFieldsInterests> interests
        {
            get
            {
                return this.interestsField;
            }
            set
            {
                this.interestsField = value;
            }
        }
    }

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsItemsFieldsInterests
    {
        private YScheduleItemsItemsFieldsInterestsSys sysField;
        
        public YScheduleItemsItemsFieldsInterestsSys sys
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsItemsFieldsInterestsSys
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsEntry
    {
        private YScheduleItemsEntrySys sysField;
        private YScheduleItemsEntryFields fieldsField;
        
        public YScheduleItemsEntrySys sys
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

        
        public YScheduleItemsEntryFields fields
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsEntrySys
    {
        private YScheduleItemsEntrySysSpace spaceField;
        private string typeField;
        private YScheduleItemsEntrySysContentType contentTypeField;
        private string idField;
        private byte revisionField;
        private System.DateTime createdAtField;
        private System.DateTime updatedAtField;
        private string localeField;

        
        public YScheduleItemsEntrySysSpace space
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

        
        public YScheduleItemsEntrySysContentType contentType
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsEntrySysSpace
    {
        private YScheduleItemsEntrySysSpaceSys sysField;
        
        public YScheduleItemsEntrySysSpaceSys sys
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsEntrySysSpaceSys
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsEntrySysContentType
    {
        private YScheduleItemsEntrySysContentTypeSys sysField;
        
        public YScheduleItemsEntrySysContentTypeSys sys
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsEntrySysContentTypeSys
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsEntryFields
    {
        private string entryIdField;
        private string classNameField;
        private string descriptionField;
        private string daysOfferedField;
        private string datesAvailableField;
        private string genderField;
        private string ageField;
        private string activityLevelField;
        private string categoryField;
        private YScheduleItemsEntryFieldsCenter centerField;
        private string roomField;
        private string contactInfoField;
        private string priceField;
        private string start_dateField;
        private string end_dateField;
        private bool isGroupField;
        private bool isGroupFieldSpecified;
        private List<YScheduleItemsEntryFieldsClasses> classesField;
        private List<YScheduleItemsEntryFieldsEvents> eventsField;

        
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

        
        public string className
        {
            get
            {
                return this.classNameField;
            }
            set
            {
                this.classNameField = value;
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

        
        public string daysOffered
        {
            get
            {
                return this.daysOfferedField;
            }
            set
            {
                this.daysOfferedField = value;
            }
        }

        
        public string datesAvailable
        {
            get
            {
                return this.datesAvailableField;
            }
            set
            {
                this.datesAvailableField = value;
            }
        }

        
        public string gender
        {
            get
            {
                return this.genderField;
            }
            set
            {
                this.genderField = value;
            }
        }

        
        public string age
        {
            get
            {
                return this.ageField;
            }
            set
            {
                this.ageField = value;
            }
        }

        
        public string activityLevel
        {
            get
            {
                return this.activityLevelField;
            }
            set
            {
                this.activityLevelField = value;
            }
        }

        
        public string category
        {
            get
            {
                return this.categoryField;
            }
            set
            {
                this.categoryField = value;
            }
        }

        
        public YScheduleItemsEntryFieldsCenter center
        {
            get
            {
                return this.centerField;
            }
            set
            {
                this.centerField = value;
            }
        }

        
        public string room
        {
            get
            {
                return this.roomField;
            }
            set
            {
                this.roomField = value;
            }
        }

        
        public string contactInfo
        {
            get
            {
                return this.contactInfoField;
            }
            set
            {
                this.contactInfoField = value;
            }
        }

        
        public string price
        {
            get
            {
                return this.priceField;
            }
            set
            {
                this.priceField = value;
            }
        }

        
        public string start_date
        {
            get
            {
                return this.start_dateField;
            }
            set
            {
                this.start_dateField = value;
            }
        }

        
        public string end_date
        {
            get
            {
                return this.end_dateField;
            }
            set
            {
                this.end_dateField = value;
            }
        }

        
        public bool isGroup
        {
            get
            {
                return this.isGroupField;
            }
            set
            {
                this.isGroupField = value;
            }
        }

        
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public bool isGroupSpecified
        {
            get
            {
                return this.isGroupFieldSpecified;
            }
            set
            {
                this.isGroupFieldSpecified = value;
            }
        }

        
        [System.Xml.Serialization.XmlElementAttribute("classes")]
        public List<YScheduleItemsEntryFieldsClasses> classes
        {
            get
            {
                return this.classesField;
            }
            set
            {
                this.classesField = value;
            }
        }

        
        [System.Xml.Serialization.XmlElementAttribute("events")]
        public List<YScheduleItemsEntryFieldsEvents> events
        {
            get
            {
                return this.eventsField;
            }
            set
            {
                this.eventsField = value;
            }
        }
    }

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsEntryFieldsCenter
    {
        private YScheduleItemsEntryFieldsCenterSys sysField;
        
        public YScheduleItemsEntryFieldsCenterSys sys
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsEntryFieldsCenterSys
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsEntryFieldsClasses
    {
        private YScheduleItemsEntryFieldsClassesSys sysField;
        
        public YScheduleItemsEntryFieldsClassesSys sys
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsEntryFieldsClassesSys
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsEntryFieldsEvents
    {
        private YScheduleItemsEntryFieldsEventsSys sysField;
        
        public YScheduleItemsEntryFieldsEventsSys sys
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

    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.17929")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "WebbMason")]
    public partial class YScheduleItemsEntryFieldsEventsSys
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
}