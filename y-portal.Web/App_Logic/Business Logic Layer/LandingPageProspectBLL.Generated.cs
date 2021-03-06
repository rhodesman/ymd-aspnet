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
	public partial class LandingPageProspectBLL:IDisposable
	{
		#region Constructors, Dependency and Partial Method Declaration

        public LandingPageProspectBLL() : this(new DatabaseContext()) { }

        public LandingPageProspectBLL(DatabaseContext DatabaseContext)
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

        partial void OnLandingPageProspectSaving(LandingPageProspect landingPageProspect);

        partial void OnLandingPageProspectCreating(LandingPageProspect landingPageProspect);
        partial void OnLandingPageProspectCreated(LandingPageProspect landingPageProspect);

        partial void OnLandingPageProspectUpdating(LandingPageProspect landingPageProspect);
        partial void OnLandingPageProspectUpdated(LandingPageProspect landingPageProspect);

        partial void OnLandingPageProspectSaved(LandingPageProspect landingPageProspect);

        partial void OnLandingPageProspectDeleting(LandingPageProspect landingPageProspect);
        partial void OnLandingPageProspectDeleted(LandingPageProspect landingPageProspect);


        #endregion

        #region Get Methods

        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Select, true)]
        public LandingPageProspect GetLandingPageProspectByProspectId(int prospectId)
        {
            //Validate Input
            if (prospectId.IsInvalidKey())
                BusinessLayerHelper.ThrowErrorForInvalidDataKey("prospectId");
            return (_DatabaseContext.LandingPageProspects.FirstOrDefault(landingPageProspect => landingPageProspect.ProspectId == prospectId));
        }
			
				
        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Select, false)]
        public List<LandingPageProspect> GetAllLandingPageProspects()
        {
            return _DatabaseContext.LandingPageProspects.ToList();
        }

        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Select, false)]
        public List<LandingPageProspect> GetAllLandingPageProspectsPaged(string orderBy = default(string), int startRowIndex = default(int), int maximumRows = default(int))
        {
            if (string.IsNullOrEmpty(orderBy))
                orderBy = "ProspectId";
				
			if (startRowIndex < 0) 
				throw (new ArgumentOutOfRangeException("startRowIndex"));
				
			if (maximumRows < 0) 
				throw (new ArgumentOutOfRangeException("maximumRows"));
			
            return (
                    from landingPageProspect in 
                        _DatabaseContext.LandingPageProspects
                        .DynamicOrderBy(orderBy)
                    select landingPageProspect
                    )
                    .Skip(startRowIndex)
                    .Take(maximumRows)
                    .ToList();
        }

        public int GetTotalCountForAllLandingPageProspects(string orderBy = default(string), int startRowIndex = default(int), int maximumRows = default(int))
        {
            return _DatabaseContext.LandingPageProspects.Count();
        }

        #endregion

        #region Persistence (Create, Update, Delete) Methods

        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Insert, true)]
        public virtual int CreateNewLandingPageProspect(LandingPageProspect newLandingPageProspect)
        {
            // Validate Parameters 
            if (newLandingPageProspect == null)
                throw (new ArgumentNullException("newLandingPageProspect"));

	        // Apply business rules
            OnLandingPageProspectSaving(newLandingPageProspect);
            OnLandingPageProspectCreating(newLandingPageProspect);

            _DatabaseContext.LandingPageProspects.AddObject(newLandingPageProspect);
            int numberOfAffectedRows = _DatabaseContext.SaveChanges();
            if (numberOfAffectedRows == 0) 
                throw new DataNotUpdatedException("No landingPageProspect created!");

            // Apply business workflow
            OnLandingPageProspectCreated(newLandingPageProspect);
            OnLandingPageProspectSaved(newLandingPageProspect);

            return newLandingPageProspect.ProspectId;
        }

        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Update, true)]
        public void UpdateLandingPageProspect(LandingPageProspect updatedLandingPageProspect)
        {
            // Validate Parameters
            if (updatedLandingPageProspect == null)
                throw (new ArgumentNullException("updatedLandingPageProspect"));

            // Validate Primary key value
            if (updatedLandingPageProspect.ProspectId.IsInvalidKey())
                BusinessLayerHelper.ThrowErrorForInvalidDataKey("ProspectId");

            // Apply business rules
            OnLandingPageProspectSaving(updatedLandingPageProspect);
            OnLandingPageProspectUpdating(updatedLandingPageProspect);

            //attaching and making ready for parsistance
            if (updatedLandingPageProspect.EntityState == EntityState.Detached)
                _DatabaseContext.LandingPageProspects.Attach(updatedLandingPageProspect);
			_DatabaseContext.ObjectStateManager.ChangeObjectState(updatedLandingPageProspect, System.Data.EntityState.Modified);//this line makes the code un-testable!
            int numberOfAffectedRows = _DatabaseContext.SaveChanges();
            if (numberOfAffectedRows == 0) 
                throw new DataNotUpdatedException("No landingPageProspect updated!");

            //Apply business workflow
            OnLandingPageProspectUpdated(updatedLandingPageProspect);
            OnLandingPageProspectSaved(updatedLandingPageProspect);

        }

        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Delete, true)]
        public void DeleteLandingPageProspect(LandingPageProspect landingPageProspectToBeDeleted)
        {
            //Validate Input
            if (landingPageProspectToBeDeleted == null)
                throw (new ArgumentNullException("landingPageProspectToBeDeleted"));

            // Validate Primary key value
            if (landingPageProspectToBeDeleted.ProspectId.IsInvalidKey())
                BusinessLayerHelper.ThrowErrorForInvalidDataKey("ProspectId");

            OnLandingPageProspectSaving(landingPageProspectToBeDeleted);
            OnLandingPageProspectDeleting(landingPageProspectToBeDeleted);

            if (landingPageProspectToBeDeleted.EntityState == EntityState.Detached)
             _DatabaseContext.LandingPageProspects.Attach(landingPageProspectToBeDeleted);
			_DatabaseContext.LandingPageProspects.DeleteObject(landingPageProspectToBeDeleted);
            int numberOfAffectedRows = _DatabaseContext.SaveChanges();
            if (numberOfAffectedRows == 0) 
                throw new DataNotUpdatedException("No LandingPageProspect deleted!");
            
            OnLandingPageProspectDeleted(landingPageProspectToBeDeleted);
            OnLandingPageProspectSaved(landingPageProspectToBeDeleted);

        }

        public void DeleteLandingPageProspects(List<int> prospectIdsToDelete)
        {
            //Validate Input
            foreach (int prospectId in prospectIdsToDelete)
                if (prospectId.IsInvalidKey())
                    BusinessLayerHelper.ThrowErrorForInvalidDataKey("ProspectId");

            List<LandingPageProspect> landingPageProspectsToBeDeleted = new List<LandingPageProspect>();

            foreach (int prospectId in prospectIdsToDelete)
            {
                LandingPageProspect landingPageProspect = new LandingPageProspect { ProspectId = prospectId };
                _DatabaseContext.LandingPageProspects.Attach(landingPageProspect);
				_DatabaseContext.LandingPageProspects.DeleteObject(landingPageProspect);
                landingPageProspectsToBeDeleted.Add(landingPageProspect);
                OnLandingPageProspectDeleting(landingPageProspect);
            }

            int numberOfAffectedRows = _DatabaseContext.SaveChanges();
            if (numberOfAffectedRows != prospectIdsToDelete.Count) 
                throw new DataNotUpdatedException("One or more landingPageProspect records have not been deleted.");
            foreach (LandingPageProspect landingPageProspectToBeDeleted in landingPageProspectsToBeDeleted)
                OnLandingPageProspectDeleted(landingPageProspectToBeDeleted);
        }

        #endregion
	
	}
}
