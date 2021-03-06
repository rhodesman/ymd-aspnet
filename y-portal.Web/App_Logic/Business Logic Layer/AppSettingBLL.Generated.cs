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
	public partial class AppSettingBLL:IDisposable
	{
		#region Constructors, Dependency and Partial Method Declaration

        public AppSettingBLL() : this(new DatabaseContext()) { }

        public AppSettingBLL(DatabaseContext DatabaseContext)
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

        partial void OnAppSettingSaving(AppSetting appSetting);

        partial void OnAppSettingCreating(AppSetting appSetting);
        partial void OnAppSettingCreated(AppSetting appSetting);

        partial void OnAppSettingUpdating(AppSetting appSetting);
        partial void OnAppSettingUpdated(AppSetting appSetting);

        partial void OnAppSettingSaved(AppSetting appSetting);

        partial void OnAppSettingDeleting(AppSetting appSetting);
        partial void OnAppSettingDeleted(AppSetting appSetting);


        #endregion

        #region Get Methods

        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Select, true)]
        public AppSetting GetAppSettingByAppSettingsId(int appSettingsId)
        {
            //Validate Input
            if (appSettingsId.IsInvalidKey())
                BusinessLayerHelper.ThrowErrorForInvalidDataKey("appSettingsId");
            return (_DatabaseContext.AppSettings.FirstOrDefault(appSetting => appSetting.AppSettingsId == appSettingsId));
        }
			
				
        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Select, false)]
        public List<AppSetting> GetAllAppSettings()
        {
            return _DatabaseContext.AppSettings.ToList();
        }

        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Select, false)]
        public List<AppSetting> GetAllAppSettingsPaged(string orderBy = default(string), int startRowIndex = default(int), int maximumRows = default(int))
        {
            if (string.IsNullOrEmpty(orderBy))
                orderBy = "AppSettingsId";
				
			if (startRowIndex < 0) 
				throw (new ArgumentOutOfRangeException("startRowIndex"));
				
			if (maximumRows < 0) 
				throw (new ArgumentOutOfRangeException("maximumRows"));
			
            return (
                    from appSetting in 
                        _DatabaseContext.AppSettings
                        .DynamicOrderBy(orderBy)
                    select appSetting
                    )
                    .Skip(startRowIndex)
                    .Take(maximumRows)
                    .ToList();
        }

        public int GetTotalCountForAllAppSettings(string orderBy = default(string), int startRowIndex = default(int), int maximumRows = default(int))
        {
            return _DatabaseContext.AppSettings.Count();
        }

        #endregion

        #region Persistence (Create, Update, Delete) Methods

        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Insert, true)]
        public virtual int CreateNewAppSetting(AppSetting newAppSetting)
        {
            // Validate Parameters 
            if (newAppSetting == null)
                throw (new ArgumentNullException("newAppSetting"));

	        // Apply business rules
            OnAppSettingSaving(newAppSetting);
            OnAppSettingCreating(newAppSetting);

            _DatabaseContext.AppSettings.AddObject(newAppSetting);
            int numberOfAffectedRows = _DatabaseContext.SaveChanges();
            if (numberOfAffectedRows == 0) 
                throw new DataNotUpdatedException("No appSetting created!");

            // Apply business workflow
            OnAppSettingCreated(newAppSetting);
            OnAppSettingSaved(newAppSetting);

            return newAppSetting.AppSettingsId;
        }

        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Update, true)]
        public void UpdateAppSetting(AppSetting updatedAppSetting)
        {
            // Validate Parameters
            if (updatedAppSetting == null)
                throw (new ArgumentNullException("updatedAppSetting"));

            // Validate Primary key value
            if (updatedAppSetting.AppSettingsId.IsInvalidKey())
                BusinessLayerHelper.ThrowErrorForInvalidDataKey("AppSettingsId");

            // Apply business rules
            OnAppSettingSaving(updatedAppSetting);
            OnAppSettingUpdating(updatedAppSetting);

            //attaching and making ready for parsistance
            if (updatedAppSetting.EntityState == EntityState.Detached)
                _DatabaseContext.AppSettings.Attach(updatedAppSetting);
			_DatabaseContext.ObjectStateManager.ChangeObjectState(updatedAppSetting, System.Data.EntityState.Modified);//this line makes the code un-testable!
            int numberOfAffectedRows = _DatabaseContext.SaveChanges();
            if (numberOfAffectedRows == 0) 
                throw new DataNotUpdatedException("No appSetting updated!");

            //Apply business workflow
            OnAppSettingUpdated(updatedAppSetting);
            OnAppSettingSaved(updatedAppSetting);

        }

        [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Delete, true)]
        public void DeleteAppSetting(AppSetting appSettingToBeDeleted)
        {
            //Validate Input
            if (appSettingToBeDeleted == null)
                throw (new ArgumentNullException("appSettingToBeDeleted"));

            // Validate Primary key value
            if (appSettingToBeDeleted.AppSettingsId.IsInvalidKey())
                BusinessLayerHelper.ThrowErrorForInvalidDataKey("AppSettingsId");

            OnAppSettingSaving(appSettingToBeDeleted);
            OnAppSettingDeleting(appSettingToBeDeleted);

            if (appSettingToBeDeleted.EntityState == EntityState.Detached)
             _DatabaseContext.AppSettings.Attach(appSettingToBeDeleted);
			_DatabaseContext.AppSettings.DeleteObject(appSettingToBeDeleted);
            int numberOfAffectedRows = _DatabaseContext.SaveChanges();
            if (numberOfAffectedRows == 0) 
                throw new DataNotUpdatedException("No AppSetting deleted!");
            
            OnAppSettingDeleted(appSettingToBeDeleted);
            OnAppSettingSaved(appSettingToBeDeleted);

        }

        public void DeleteAppSettings(List<int> appSettingsIdsToDelete)
        {
            //Validate Input
            foreach (int appSettingsId in appSettingsIdsToDelete)
                if (appSettingsId.IsInvalidKey())
                    BusinessLayerHelper.ThrowErrorForInvalidDataKey("AppSettingsId");

            List<AppSetting> appSettingsToBeDeleted = new List<AppSetting>();

            foreach (int appSettingsId in appSettingsIdsToDelete)
            {
                AppSetting appSetting = new AppSetting { AppSettingsId = appSettingsId };
                _DatabaseContext.AppSettings.Attach(appSetting);
				_DatabaseContext.AppSettings.DeleteObject(appSetting);
                appSettingsToBeDeleted.Add(appSetting);
                OnAppSettingDeleting(appSetting);
            }

            int numberOfAffectedRows = _DatabaseContext.SaveChanges();
            if (numberOfAffectedRows != appSettingsIdsToDelete.Count) 
                throw new DataNotUpdatedException("One or more appSetting records have not been deleted.");
            foreach (AppSetting appSettingToBeDeleted in appSettingsToBeDeleted)
                OnAppSettingDeleted(appSettingToBeDeleted);
        }

        #endregion
	
	}
}
