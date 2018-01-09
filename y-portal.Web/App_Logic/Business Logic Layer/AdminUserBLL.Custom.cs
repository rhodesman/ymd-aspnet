using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using YPortal.BusinessEntities;

namespace YPortal.BusinessLogicLayer
{
    public partial class AdminUserBLL
    {
        public AdminUser GetAdminUserByUserNameAndPassword(string userName, string password)
        {
            return (
                from
                    adminUser
                in
                    _DatabaseContext.AdminUsers
                where
                    adminUser.UserName.Equals(userName) &&
                    adminUser.Password.Equals(password)
                select
                    adminUser).FirstOrDefault(); 
          
        }
    }
}