//------------------------------------------------------------------------------
// <auto-generated>
//
// ***************** Copyright Notice *****************
// 
// This code is licensed under Microsoft Public License (Ms-PL). 
// You are free to use, modify and distribute any portion of this code. 
// The only requirement to do that, you need to keep the developer name, as provided below to recognize and encourage original work:
//
// =======================================================
//   
// Architecture Designed and Implemented By:
// Mohammad Ashraful Alam
// Microsoft Most Valuable Professional, ASP.NET 2007 – 2011
// Twitter: http://twitter.com/AshrafulAlam | Blog: http://blog.ashraful.net | Portfolio: http://www.ashraful.net
//   
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Linq.Dynamic;
using YPortal.BusinessEntities;
using YPortal.DataAccessLayer;
using YPortal.Helpers;

namespace YPortal.BusinessLogicLayer
{   
	[System.ComponentModel.DataObject(true)]
	public partial class ContactBLL:IDisposable
	{
		#region Constructors, Dependency and Partial Method Declaration

        public ContactBLL() : this(new DatabaseContext()) { }

        public ContactBLL(DatabaseContext DatabaseContext)
        {
            _DatabaseContext = DatabaseContext;
        }

        DatabaseContext _DatabaseContext;

        public void Dispose()
        {
            if (_DatabaseContext != null)
            {
                _DatabaseContext.Dispose();
                _DatabaseContext = null;
            }
            
            GC.SuppressFinalize(this);
        }

        partial void OnContactSaving(Contact contact);

        partial void OnContactCreating(Contact contact);
        partial void OnContactCreated(Contact contact);

        partial void OnContactUpdating(Contact contact);
        partial void OnContactUpdated(Contact contact);

        partial void OnContactSaved(Contact contact);

        partial void OnContactDeleting(Contact contact);
        partial void OnContactDeleted(Contact contact);


        #endregion

        #region Get Methods

        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Select, true)]
        public Contact GetContactByContactId(int contactId)
        {
            //Validate Input
            if (contactId.IsInvalidKey())
                BusinessLayerHelper.ThrowErrorForInvalidDataKey("contactId");
            return (_DatabaseContext.Contacts.FirstOrDefault(contact => contact.ContactId == contactId));
        }
			
				
        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Select, false)]
        public List<Contact> GetAllContacts()
        {
            return _DatabaseContext.Contacts.ToList();
        }

        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Select, false)]
        public List<Contact> GetAllContactsPaged(string orderBy = default(string), int startRowIndex = default(int), int maximumRows = default(int))
        {
            if (string.IsNullOrEmpty(orderBy))
                orderBy = "ContactId";
				
			if (startRowIndex < 0) 
				throw (new ArgumentOutOfRangeException("startRowIndex"));
				
			if (maximumRows < 0) 
				throw (new ArgumentOutOfRangeException("maximumRows"));
			
            return (
                    from contact in 
                        _DatabaseContext.Contacts
                        .DynamicOrderBy(orderBy)
                    select contact
                    )
                    .Skip(startRowIndex)
                    .Take(maximumRows)
                    .ToList();
        }

        public int GetTotalCountForAllContacts(string orderBy = default(string), int startRowIndex = default(int), int maximumRows = default(int))
        {
            return _DatabaseContext.Contacts.Count();
        }

        #endregion

        #region Persistence (Create, Update, Delete) Methods

        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Insert, true)]
        public virtual int CreateNewContact(Contact newContact)
        {
            // Validate Parameters 
            if (newContact == null)
                throw (new ArgumentNullException("newContact"));

	        // Apply business rules
            OnContactSaving(newContact);
            OnContactCreating(newContact);

            _DatabaseContext.Contacts.AddObject(newContact);
            int numberOfAffectedRows = _DatabaseContext.SaveChanges();
            if (numberOfAffectedRows == 0) 
                throw new DataNotUpdatedException("No contact created!");

            // Apply business workflow
            OnContactCreated(newContact);
            OnContactSaved(newContact);

            return newContact.ContactId;
        }

        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Update, true)]
        public void UpdateContact(Contact updatedContact)
        {
            // Validate Parameters
            if (updatedContact == null)
                throw (new ArgumentNullException("updatedContact"));

            // Validate Primary key value
            if (updatedContact.ContactId.IsInvalidKey())
                BusinessLayerHelper.ThrowErrorForInvalidDataKey("ContactId");

            // Apply business rules
            OnContactSaving(updatedContact);
            OnContactUpdating(updatedContact);

            //attaching and making ready for parsistance
            if (updatedContact.EntityState == EntityState.Detached)
                _DatabaseContext.Contacts.Attach(updatedContact);
			_DatabaseContext.ObjectStateManager.ChangeObjectState(updatedContact, System.Data.EntityState.Modified);//this line makes the code un-testable!
            int numberOfAffectedRows = _DatabaseContext.SaveChanges();
            if (numberOfAffectedRows == 0) 
                throw new DataNotUpdatedException("No contact updated!");

            //Apply business workflow
            OnContactUpdated(updatedContact);
            OnContactSaved(updatedContact);

        }

        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Delete, true)]
        public void DeleteContact(Contact contactToBeDeleted)
        {
            //Validate Input
            if (contactToBeDeleted == null)
                throw (new ArgumentNullException("contactToBeDeleted"));

            // Validate Primary key value
            if (contactToBeDeleted.ContactId.IsInvalidKey())
                BusinessLayerHelper.ThrowErrorForInvalidDataKey("ContactId");

            OnContactSaving(contactToBeDeleted);
            OnContactDeleting(contactToBeDeleted);

            if (contactToBeDeleted.EntityState == EntityState.Detached)
             _DatabaseContext.Contacts.Attach(contactToBeDeleted);
			_DatabaseContext.Contacts.DeleteObject(contactToBeDeleted);
            int numberOfAffectedRows = _DatabaseContext.SaveChanges();
            if (numberOfAffectedRows == 0) 
                throw new DataNotUpdatedException("No Contact deleted!");
            
            OnContactDeleted(contactToBeDeleted);
            OnContactSaved(contactToBeDeleted);

        }

        public void DeleteContacts(List<int> contactIdsToDelete)
        {
            //Validate Input
            foreach (int contactId in contactIdsToDelete)
                if (contactId.IsInvalidKey())
                    BusinessLayerHelper.ThrowErrorForInvalidDataKey("ContactId");

            List<Contact> contactsToBeDeleted = new List<Contact>();

            foreach (int contactId in contactIdsToDelete)
            {
                Contact contact = new Contact { ContactId = contactId };
                _DatabaseContext.Contacts.Attach(contact);
				_DatabaseContext.Contacts.DeleteObject(contact);
                contactsToBeDeleted.Add(contact);
                OnContactDeleting(contact);
            }

            int numberOfAffectedRows = _DatabaseContext.SaveChanges();
            if (numberOfAffectedRows != contactIdsToDelete.Count) 
                throw new DataNotUpdatedException("One or more contact records have not been deleted.");
            foreach (Contact contactToBeDeleted in contactsToBeDeleted)
                OnContactDeleted(contactToBeDeleted);
        }

        #endregion
	
	}
}
