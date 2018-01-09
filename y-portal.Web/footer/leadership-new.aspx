<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="leadership-new.aspx.cs" Inherits="YPortal.Web.footer.leadership_new" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators mobile-margin-fix">
                    <li class="" data-slide-to="0" data-target="#carousel-example-captions"><a href="#homes" data-toggle="tab">
                        <img src="../App_Style/images/banner/inner-page-banner/indicator-01.png">
                        <span>Executive Operating Team  </span></a></li>
                    <li data-slide-to="1" data-target="#carousel-example-captions" class=""><a href="#profiles" data-toggle="tab">
                        <img src="../App_Style/images/banner/inner-page-banner/indicator-02.png">
                        <span>Board of Directors  </span></a></li>
                    <li data-slide-to="2" data-target="#carousel-example-captions" class=""><a href="#messagess" data-toggle="tab">
                        <img src="../App_Style/images/banner/inner-page-banner/indicator-01.png">
                        <span>Community Leadership Boards  </span></a></li>


                </ol>
                <div class="carousel-inner">
                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../App_Style/images/banner/home-banner/home-banner.png">
                        <div class="carousel-caption">
                            <p>
                                Actualizing the Y’s 
                                <br />
                                Charitable Mission
                            </p>
                            
                        </div>
                    </div>
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#666:#666" src="../App_Style/images/banner/home-banner/home-banner.png">
                        <div class="carousel-caption">
                            <p>
                                Actualizing the Y’s 
                                <br />
                                Charitable Mission
                            </p>
                            
                        </div>
                    </div>
                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#555:#5555" src="../App_Style/images/banner/home-banner/home-banner.png">
                        <div class="carousel-caption">
                            <p>
                                Actualizing the Y’s 
                                <br />
                                Charitable Mission
                            </p>
                            
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
    <div class="dux-content-area dux-content-area-margin-02">
        <div class="location-specific container ">
            <div class="row">
                <div class="col-md-12">
                    <div class="tab-content">
                        <div class="tab-pane active" id="homes">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#home" data-toggle="tab">Executive Operating Team </a></li>

                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class ">Executive Operating Team</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h2 class="title-02">Catonsville Personal Trainers</h2>
                                                                <p>The Executive Operating Team of the Y of Central Maryland is made up of a diverse group of individuals representing key service areas and operating functions across the organization. This team is responsible for the overall management of the organization and actualization of the Y's charitable mission. Ultimate oversight responsibility rests with the CEO and Board of Directors.</p>

                                                                <div class="row">


                                                                    <div class="col-md-6">
                                                                        <div class="media">
                                                                            <div class="media-body">
                                                                                <h4 class="media-heading">John K. Hoey</h4>
                                                                                <p>President & CEO</p>
                                                                                <a href="mailTo:johnhoey@ymaryland.org">johnhoey@ymaryland.org</a>
                                                                            </div>
                                                                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                                                                        </div>
                                                                    </div>

                                                                </div>


                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <%--<a href="" class="common-btn btn-velvet"><span class="btn-velvet-border">Get 75% off the Joining Fee</span></a>--%>
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
                        

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
