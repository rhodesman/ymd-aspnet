<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="overview.aspx.cs" Inherits="YPortal.Web.programs.camps.overview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators ">
                    <li class="" data-slide-to="0" data-target="#carousel-example-captions"><a href="#homes" data-toggle="tab">
                        <img src="../../App_Style/images/banner/inner-page-banner/indicator-01.png" />
                        <span>Overview
                        </span></a></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/camps/overview.png">
                        <div class="carousel-caption">
                            <p>
                                More Variety.More Value.
                                    <br>
                                Still Affordable.
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
                        <div class="tab-pane active" id="homes">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#home" class="" data-toggle="tab">AFFORDABLE SUMMER FUN </a></li>                                    
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Why We Offer Assistance</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p><strong>APRIL PROMO</strong></p>
                                                                <p>Register online for Y camp by April 15th and save up to $50. Just use code APRIL50.</p>
                                                                <p>The Y is the leader in summer fun because we literally invented summer camp! We understand that a quality camp experience is much more than ripping and running and going home tired – it’s a chance to learn life lesson, make new friends, and discover new things about yourself. Summer at the Y is also a clever disguise for combating summer learning loss!</p>
                                                                <p>That’s why we offer endless camp options to suit all types; the outdoorsy type, the air-conditioning type, the nature lover type, the sporty type, the traveler type, the science type, the "I just want to get away from home!" type, and everyone in between!Plus, our camps provide quality summer experiences at an affordable price. Built-in features like FREE extended camp hours and sibling discounts help make Y camp one of the lowest-costcamps around!</p>
                                                                <p><strong>Y Membership + Camp = Advantages</strong></p>
                                                                <p>Advantage #1	Members always pay the lowest rates for camp, on average as low as $50 less than the general public each week. </p>  
                                                                <p>Advantage #2  Members enjoy many benefits throughout the year including full access to 12 Family Center Ys, priority program registration, free fitness and water exercise classes, free fun for kids while you exercise, free family events, reduced fees on Y programs and more! Plus, enjoy opportunities to volunteer and engage with our special Y community of caring people.</p>                                                              
                                                         </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
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
