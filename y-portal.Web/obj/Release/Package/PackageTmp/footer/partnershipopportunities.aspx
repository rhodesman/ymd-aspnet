<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="partnershipopportunities.aspx.cs" Inherits="YPortal.Web.footer.partnership_opportunities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">
                
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../App_Style/images/banner/inner-page-banner/y-partnerships.jpg">
                        <div class="carousel-caption">
                            <p>
                                Your support is 
                                    <br>
                                critical to our mission
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
                                        ID ="partnershipopportunities1"
                                        isCached="true"
                                        GroupEntryId ="Partnership opportunities"
						                EntryId ="Partnership opportunities"                                                                                                       
                                        MenuBased="false"/>
                      
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
