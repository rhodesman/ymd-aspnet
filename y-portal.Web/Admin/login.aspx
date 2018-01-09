<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="YPortal.Web.Admin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Y of Central MD.</title>
    <link id="page_favicon" href="../App_Style/images/favicon.ico" rel="icon" type="image/x-icon" />
    <link href="../App_Style/css/text.css" rel="stylesheet" />
    <link href="../App_Style/css/default.css" rel="stylesheet" />
    <link href="../App_Style/css/admin.css" rel="stylesheet" />


</head>
<body>
    <form id="form1" runat="server">
        <a class="admin-logo" href="<%= YPortal.Helpers.SiteSettings.BaseUrl %>default.aspx">
                            <img alt="Y of Central MD"  src='<%= ResolveUrl("~/App_Style/images/branding/branding-big-01.png") %>' />
                        </a>
    <div class="login-box">
        
        <div id="divMessage" runat="server" style="display:none;">
        </div>
        <label class="label-02">
            User Name
            <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName"
                ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" CssClass="validator"
                EnableClientScript="true" ValidationGroup="vgrp"></asp:RequiredFieldValidator></label>
        <br />
        <asp:TextBox ID="txtUserName" placeholder="User Name" runat="server" CssClass="form-control login-icon">
        </asp:TextBox>
        <br />
        <label class="label-02">
            Password
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" CssClass="validator"
                EnableClientScript="true" ValidationGroup="vgrp"></asp:RequiredFieldValidator></label>
        <br />
        <asp:TextBox ID="txtPassword" TextMode="Password" placeholder="Password" runat="server"
            CssClass="form-control password-icon">
        </asp:TextBox>
        <br class="clear" />
        <br />
        <asp:Button ID="btnSubmit" runat="server" class="login-submit login-btn" Text="LogIn"
            OnClick="btnSubmit_Click" ValidationGroup="vgrp" CausesValidation="true" />
    </div>
    </form>

</body>
</html>
