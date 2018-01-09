using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using YPortal.Web.App_Code.Types;

namespace YPortal.Web.App_Code.Types.Util
{
    public static class ContentfulExtensions
    {
        /// <summary>
        /// Get Asset based on System ID
        /// </summary>
        /// <param name="MenuInfo"></param>
        /// <param name="EntryId"></param>
        /// <returns></returns>
        public static  YMenuItemsIncludesAsset GetAsset(this YMenu MenuInfo, string EntryId)
        {
            YMenuItemsIncludesAsset asset = null;
            if (string.IsNullOrEmpty(EntryId))
            {
                return asset;
            }

            YMenuItemsIncludesEntry entry = MenuInfo.items.includes.Entries.First(elem => elem.EntrySys.id == EntryId);
         
            if (entry != null)
            {
                asset = MenuInfo.items.includes.Assets.First(asset_elem => asset_elem.AssetSys.id == entry.EntryFields.image.sys.id);
            }
            return asset;
        }

    }
}