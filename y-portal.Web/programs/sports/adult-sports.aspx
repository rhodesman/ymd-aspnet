<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="adult-sports.aspx.cs" Inherits="YPortal.Web.programs.sports.adult_sports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators mobile-margin-fix">
                    <li class="active" data-slide-to="0" data-target="#carousel-example-captions"><a href="#homes" data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/sports/adult-sports.png" />
                        <span>YOUR DONATIONS AT WORK                             
                        </span></a></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/sports/adult-sports.png">
                        <div class="carousel-caption">
                            <p>
                                Be a kid 
                                    <br>
                                a heart
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
                                    <li class="active"><a href="#home" data-toggle="tab">Adult Sports Leagues</a></li>
                                    <li><a href="#profiles" data-toggle="tab">Drop-in Sports </a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Adult Sports Leagues</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>Age 16 and up. League availability and rules vary by location. </p>
                                                                <p>Our adult leagues are fun and competitive, but always in a respectful, non-aggressive manner. All abilities and skill levels welcome! </p>
                                                                <h3 class="title-03">Coed Volleyball League
                                                                </h3>
                                                                <p>Register as a “free agent” and we’ll place you on a teamwith other individuals! Get friends together and register as ateam! Session includes games plus playoffs. All games are played at the Y.Individual or team rates apply. Referee fees are included.</p>
                                                                <h3 class="title-03">Men’s Futsal League</h3>
                                                                <p>Futsal is a modified form of indoor soccer played with five players per side. Session includes games plus playoffs. Shin guards are required. Teams must havematching uniforms. Referee fees are included. All games areplayed at the Y.</p>
                                                                <h3 class="title-03">Coming Soon…</h3>
                                                                <p>Coed Outdoor Soccer</p>
                                                            </div>

                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Register for Adult Sports</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="profiles">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to1" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Drop-in Sports</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to1">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>Age 16 and up. Drop-in availability and rules vary by location.</p>
                                                                <p>For those sports fans who want to stay active, but can’t commit to league play; we offer you drop-in sports!  No need to form a team; just drop-in at the Y and get in on a game. All abilities and skill levels welcome! </p>
                                                                <ul>
                                                                    <li>Dodgeball</li>
                                                                    <li>Basketball</li>
                                                                </ul>
                                                            </div>

                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="" class="common-btn btn-velvet"><span class="btn-velvet-border">Search for Drop-in Sports</span></a>
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
