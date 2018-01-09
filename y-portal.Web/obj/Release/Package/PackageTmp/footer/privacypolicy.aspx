﻿<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="privacypolicy.aspx.cs" Inherits="YPortal.Web.footer.privacy_policy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">
                
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../App_Style/images/banner/inner-page-banner/privacy-policy.jpg">
                        <div class="carousel-caption">
                            <p>
                                Safeguarding 
                                    <br>
                                your information
                            </p>
                           
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
    <div class="dux-content-area dux-content-area-margin-02">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="tab-content">
                        <YContAPI:YDTabControl 
                                        runat="server"
                                        ID ="privacypolicy1"
                                        isCached="true"
                                        GroupEntryId ="Privacy Policy"
						                EntryId ="Privacy Policy"                                                                                                       
                                        MenuBased="false"/>                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
