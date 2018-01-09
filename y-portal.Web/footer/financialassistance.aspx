<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="financialassistance.aspx.cs" Inherits="YPortal.Web.footer.financial_assistance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">

            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators ">
                    <li class="active" data-slide-to="0" data-target="#carousel-example-captions"><a href="#tabAnneArundelCounty" data-toggle="tab" onclick='SpecialRedirectPartTwo("tabAnneArundelCounty")'>
                        <img src="/App_Style/images/banner/thumbnails/footer/financial-assistance.png" />
                        <span>Financial Assistance 
                        </span></a></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="/App_Style/images/banner/inner-page-banner/assistance.jpg">
                        <div class="carousel-caption">
                            <p>
                                Removing income 
                                    <br>
                                as a barrier
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

                    <YContAPI:YDTabControl
                        runat="server"
                        ID="YDTabControlFA"
                        isCached="true"
                        GroupEntryId="Programs.Camps"
                        EntryId="Financial Assistance"
                        MenuLinkText="Financial Assistance" />

                </div>
            </div>
        </div>
    </div>
</asp:Content>
