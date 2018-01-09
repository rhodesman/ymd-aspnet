<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="benefits-and-features.aspx.cs" Inherits="YPortal.Web.membership.benefits_and_features" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators">
                    <li class="" data-slide-to="0" data-target="#carousel-example-captions"><a href="#homes" data-toggle="tab">
                        <img src="../App_Style/images/banner/inner-page-banner/indicator-01.png" />
                        <span>BENEFITS & FEATURES 
                            </span></a></li>


                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../App_Style/images/banner/membership/benefits-and-feature.png">
                        <div class="carousel-caption">
                            <p>
                                Be a member of 
                                    <br>
                                something bigger
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
                                    <li class="active"><a href="#home" data-toggle="tab">Value of a Y Membership </a></li>

                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Value of a Y Membership</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">When you join the Y, you…</h3>
                                                                <ul>
                                                                    <li>become a part of a <strong>cause-driven, charitable organization </strong>dedicated to developing the full potential of every individual through programs that promote healthy living and encourage positive growth and development in youth.</li>
                                                                    <li>join a place where you can bring your family closer together through our many <strong>family-centered activities. </strong></li>
                                                                    <li>join a place where the <strong> practice of inclusion is valued </strong> and financial assistance dollars are raised so that income is no longer a barrier to those who otherwise couldn’t afford a Y experience.</li>
                                                                    <li>become a part of mission-focused organization that <strong> advocates for community involvement and social responsibility </strong> because we know it takes a village. </li>
                                                                </ul>
                                                                <h3 class="title-03">Oh… and the icing on the cake:</h3>
                                                                <ul>
                                                                    <li>One membership for 12 Family Center Ys, giving you access to:
                                                                        <ul>
                                                                            <li>spacious lobbies for relaxing</li>
                                                                            <li>family rooms with foosball tables, air hockey, board games and more</li>
                                                                            <li>large fitness centers housing state-of-the-art equipment with personal TV monitors</li>
                                                                            <li>FitLinxx®, our free digital training system that greatly increases your ability to reach your fitness goals</li>
                                                                        </ul>
                                                                    </li>
                                                                    <li>refreshing indoor poolsincluding lap pools and family fun pools with a slide and tipping buckets</li>
                                                                    <li>center amenities like cycle studios, gymnasiums, rock climbing walls and more
                                                                        <ul>
                                                                            <li>free Stay & Play activity rooms for little ones while you exercise (family membership holders)</li>
                                                                            <li>free group exercise classes</li>
                                                                            <li>free monthly family events</li>
                                                                        </ul>
                                                                    </li>
                                                                    <li>No long-term contract necessary</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Special member rates on personal training</li>
                                                                    <li>Reduced fees on camp, preschool and before & after school enrichment</li>
                                                                </ul>
                                                                
                                                                
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                           
                                                            <div class="side-bar">
                                                                <a href="how-to-become-a-member.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Become a Y Member</span></a>
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
