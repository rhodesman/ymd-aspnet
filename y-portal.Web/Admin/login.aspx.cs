using System;
using System.Web;
using YPortal.BusinessEntities;
using YPortal.BusinessLogicLayer;
using YPortal.Helpers;

namespace YPortal.Web.Admin
{
    public partial class login : System.Web.UI.Page
    {
        #region Private Methods

        private void ValidateAdmin()
        {
            if (!string.IsNullOrEmpty(txtUserName.Text) && !string.IsNullOrEmpty(txtPassword.Text))
            {
                string returnUrl = Request.RawUrl;

                AdminUser adminUser = new AdminUserBLL().GetAdminUserByUserNameAndPassword(txtUserName.Text.Trim(), txtPassword.Text.Trim());

                if (adminUser != null)
                {
                    try
                    {
                        string userName = txtUserName.Text;
                        HttpCookie cookie = System.Web.Security.FormsAuthentication.GetAuthCookie(userName, false);

                        System.Web.Security.FormsAuthenticationTicket ticket = System.Web.Security.FormsAuthentication.Decrypt(cookie.Value);

                        System.Web.Security.FormsIdentity identity = new System.Web.Security.FormsIdentity(ticket);
                        Context.User = new System.Security.Principal.GenericPrincipal(identity, new string[] { "admin" });
                        Context.Response.Cookies.Add(cookie);
                        System.Web.Security.FormsAuthentication.RedirectFromLoginPage(userName, false);

                        if (HttpContext.Current.Request.QueryString["returnUrl"] != null && !String.IsNullOrEmpty(HttpContext.Current.Request.QueryString["returnUrl"].ToLower()))
                        {
                            returnUrl = HttpContext.Current.Request.QueryString["returnUrl"];
                        }
                        else
                        {
                            returnUrl = "default.aspx";
                        }
                    }
                    catch (Exception ex)
                    {
                        MessageHelpers.ShowMessage(divMessage, ex.Message, "alert alert-danger");
                    }
                    finally
                    {
                        Response.Redirect(returnUrl);
                    }
                }
                else
                {
                    MessageHelpers.ShowMessage(divMessage, MessageHelpers.BusinessMessage.INVALID_USER_PASSWORD, "alert alert-danger");
                }
            }
            else
            {
                MessageHelpers.ShowMessage(divMessage, MessageHelpers.BusinessMessage.USERNAME_PASS_REQ, "alert alert-danger");
            }
        }

        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            ValidateAdmin();
        }
    }
}