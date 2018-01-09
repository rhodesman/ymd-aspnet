<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="sponsors.aspx.cs" Inherits="YPortal.Web.footer.sponsors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <YContAPI:YDCarouselInfoV2 ID="YDCarouselInfoV21"
            runat="server"
            DataSource="[[:d=at(document.type,'PageContainer')][:d=fulltext(my.PageContainer.ContentGroup,'Sponsors')]]" />
        <!--
        <div class="custom-container">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">

                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../App_Style/images/banner/inner-page-banner/sponsor.jpg">
                        <div class="carousel-caption">
                            <p>
                                Your support is
                                    <br>
                                critical to our cause
                            </p>

                        </div>
                    </div>

                </div>

            </div>
        </div>

        -->
    </div>
    <div class="dux-content-area dux-content-area-margin-02">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="tab-content">


                           <YContAPI:YDTabControl
                            runat="server"
                            ID="sponsors1"
                            ClientControlId="sponsors1"
                            isCached="true"
                            GroupEntryId="Sponsors"
                            EntryId="Sponsors"
                            MenuBased="false" />
                        <!--
                        <div class="tab-pane active" id="sponsors1">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#home" class="" data-toggle="tab">We Thank You    </a></li>

                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class ">We Thank You </a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">We Salute Our Generous and Caring Partners for Supporting the Y!</h3>
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/abell-foundation.jpg">
                                                                        </a>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/abm.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/bultimore-life.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/bge.jpg">
                                                                        </a>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/carefirst.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/Chesapeake-Vending.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/The-Columbia-Bank.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/Creig-Northrop.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/cybex.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/dex-imaging.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/evergreen].jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/France-Merrick-Foundation.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/Golfers-Charitable.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/HarryTCampbell-Foundation.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/Harry-and-Jeanette-Weinberg-Foundation.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/Henry-Ruth-Blaustein-foundation.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/Johns-Hopkins-University.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/Keith-Campbell-Foundation.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/Meyerhoff.jpg">
                                                                        </a>
                                                                    </div>

                                                                     <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/Kirk-Family-Foundation.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/Legg-Mason-Inc.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/Marks-Thomas.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/McCormick.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/M-T-Bank.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/myofficeproducts.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/carlouzzi-foundation.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/NorthropGruman.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/oriolesreach.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/The-Orokawa-Foundation.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/Penguin-Random-House.jpg">
                                                                        </a>
                                                                    </div>
                                                                    
                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/PNCGrow.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/Sylvan-Laureate.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/Thomas-W-Bradley-Foundation.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/TransAmerica.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/TRowePriceFoundation.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/UpperChesapeakeHealth.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/Venable.jpg">
                                                                        </a>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/WhitingTurner.jpg">
                                                                        </a>
                                                                    </div>
                                                                    
                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../App_Style/images/sponsor-logos/Windsor-Healthcare-Equities.jpg">
                                                                        </a>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                
                                                                <img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>



                                </div>
                            </div>
                        </div>

                        -->
                        <%-- 
                        <YContAPI:YDTabControl 
                              runat="server"
                              ID ="sponsors1"
                              isCached="true"
                              GroupEntryId ="Sponsors"
						      EntryId ="Sponsors"                                                              
                              Debug="true" 
                              MenuBased="false"/> 
                        --%>                                            
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
