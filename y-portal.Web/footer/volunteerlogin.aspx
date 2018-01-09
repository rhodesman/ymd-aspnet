<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true"
    CodeBehind="volunteerlogin.aspx.cs" Inherits="YPortal.Web.footer.volunteer_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container mobile-view-fix">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="/App_Style/images/banner/footer/volunteer-login.jpg">
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="dux-content-area dux-content-area-margin-02">
        <div class="container">
            <div class="row">
                <div class="col-md-12 white-bg">
                    <h1 class="title">Volunteer Login</h1>
                    <h2 class="centered">Please enter your password to log in. </h2>

                    <div class="login-box">

                        <div id="divMessage" runat="server" style="display: none;"></div>

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
                        <asp:Button ID="btnSubmit" runat="server" class="login-btn pull-right" Text="Log In"
                            OnClick="btnSubmit_Click" ValidationGroup="vgrp" CausesValidation="true" />
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
