<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true"
    CodeBehind="common-page-layout.aspx.cs" Inherits="YPortal.Web.common_page_layout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators mobile-margin-fix">
                    <li class="" data-slide-to="0" data-target="#carousel-example-captions"><a href="#homes"
                        data-toggle="tab">
                        <img src="App_Style/images/banner/inner-page-banner/indicator-01.png">
                        <span>Overview </span></a></li>
                    <li data-slide-to="1" data-target="#carousel-example-captions" class=""><a href="#profiles"
                        data-toggle="tab">
                        <img src="App_Style/images/banner/inner-page-banner/indicator-02.png">
                        <span>Locations </span></a></li>
                    <li data-slide-to="2" data-target="#carousel-example-captions" class=""><a href="#messagess"
                        data-toggle="tab">
                        <img src="App_Style/images/banner/inner-page-banner/indicator-01.png">
                        <span>Options & Fees </span></a></li>
                    <li class="" data-slide-to="3" data-target="#carousel-example-captions"><a href="#sports"
                        data-toggle="tab">
                        <img src="App_Style/images/banner/inner-page-banner/indicator-01.png">
                        <span>Themes, Trips & Events </span></a></li>
                    <li data-slide-to="4" data-target="#carousel-example-captions" class=""><a href="#youth"
                        data-toggle="tab">
                        <img src="App_Style/images/banner/inner-page-banner/indicator-02.png">
                        <span>General Info & Forms</span></a></li>
                    <li data-slide-to="5" data-target="#carousel-example-captions" class=""><a href="#other"
                        data-toggle="tab">
                        <img src="App_Style/images/banner/inner-page-banner/indicator-01.png">
                        <span>Financial Assistance</span></a></li>
              

                </ol>
                <div class="carousel-inner">
                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/camps/overview.png">
                        <div class="carousel-caption">
                            <p>
                                More Variety.More Value.
                                    <br>
                                Still Affordable.
                            </p>

                        </div>
                    </div>
                    <div class=" item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/camps/locations.png">
                        <div class="carousel-caption">
                            <p>
                                Over 20 Camp 
                                    <br>
                                Locations
                            </p>

                        </div>
                    </div>
                    <div class=" item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/camps/option-and-fees.png">
                        <div class="carousel-caption">
                            <p>
                                Discover what you 
                                    <br>
                                love this summer
                            </p>

                        </div>
                    </div>
                    <div class=" item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/camps/themes-trips-and-events.png">
                        <div class="carousel-caption">
                            <p>
                                Around the world 
                                    <br>
                                in 49 days
                            </p>

                        </div>
                    </div>
                    <div class=" item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/camps/general-information.png">

                        <div class="carousel-caption">
                            <p>
                                Carefree summer fun 
                                    <br>
                                and learning
                            </p>

                        </div>
                    </div>
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/camps/register-now.png">
                        <div class="carousel-caption">
                            <p>
                                How to 
                                    <br>
                                Register
                            </p>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="dux-content-area dux-content-area-margin-01 dux-content-area-margin-02">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="tab-content">
                        <div class="tab-pane active" id="homes">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#home" data-toggle="tab">AT THE Y NOW <span>Explore offers
                                        and opportunities</span> </a></li>
                                    <li><a href="#profile" data-toggle="tab">Membership <span>Become a Y member today</span></a>
                                    </li>
                                    <li><a href="#messages" data-toggle="tab">Camps <span>Check out our summer camp options</span></a>
                                    </li>
                                    <li><a href="#settings" data-toggle="tab">PRESCHOOL <span>Focus on confidence, character
                                        and fun</span></a></li>
                                    <li><a href="#BEFORE-AFTER" data-toggle="tab">BEFORE & AFTER SCHOOL PROGRAMS</a>
                                    </li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class at-the-y-now">
                                                AT THE Y NOW <span>Explore offers and opportunities</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Be sure to take full advantage of our member benefits!</h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" tab-pane " id="profile">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-features" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">Membership
                                                <span>Become a Y member today</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-features">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">No long-term contract necessary, pay month-to-month if you like
                                                                </h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="messages">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-source" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">Camps <span>Check
                                                    out our summer camp options</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-source">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Use of pools and fitness centers seven days a week</h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="settings">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-sources" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">PRESCHOOL <span>
                                                    Focus on confidence, character and fun</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-sources">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Reduced fees on Y preschool and before & after school programs
                                                                </h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <div class="btn-group"><a href="" class="btn btn-velvet">Get 75% off the Joining Fee</a>
                                                                    <a href="" class="btn btn-velvet dropdown-toggle" data-toggle="dropdown"><span class="fa fa-angle-double-right">
                                                                    </span></a></div>
                                                                <img src="App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="BEFORE-AFTER">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-souurces" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">BEFORE & AFTER
                                                SCHOOL PROGRAMS</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-souurces">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Be a part of a community of people who care about the health and
                                                                    well-being of others</h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
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
                        <div class="tab-pane " id="profiles">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab1">
                                    <li class="active"><a href="#home2" class="at-the-y-now" data-toggle="tab">AT THE Y
                                        NOW <span>Explore offers and opportunities</span> </a></li>
                                    <li><a href="#profile2" class="membership" data-toggle="tab">Membership <span>Become
                                        a Y member today</span></a></li>
                                    <li><a href="#messages2" class="camps" data-toggle="tab">Camps <span>Check out our summer
                                        camp options</span></a></li>
                                    <li><a href="#settings2" class="preschools" data-toggle="tab">PRESCHOOL <span>Focus
                                        on confidence, character and fun</span></a></li>
                                    <li><a href="#BEFORE-AFTER2" class="before-after" data-toggle="tab">BEFORE & AFTER SCHOOL
                                        PROGRAMS</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="profile2">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to-1" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class at-the-y-now">
                                                AT THE Y NOW <span>Explore offers and opportunities</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to-1">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Be sure to take full advantage of our member benefits!</h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" tab-pane " id="home2">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-features-1" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">Membership
                                                <span>Become a Y member today</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-features-1">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">No long-term contract necessary, pay month-to-month if you like
                                                                </h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="messages2">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-source-1" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">Camps <span>Check
                                                    out our summer camp options</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-source-1">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Use of pools and fitness centers seven days a week</h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="settings2">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-sourcess-1" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">PRESCHOOL <span>
                                                    Focus on confidence, character and fun</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-sourcess-1">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Reduced fees on Y preschool and before & after school programs
                                                                </h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="BEFORE-AFTER2">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-souurceses-1" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">BEFORE & AFTER
                                                SCHOOL PROGRAMS</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-souurceses-1">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Be a part of a community of people who care about the health and
                                                                    well-being of others</h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
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
                        <div class="tab-pane" id="messagess">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab2">
                                    <li class="active"><a href="#home3" class="at-the-y-now" data-toggle="tab">AT THE Y
                                        NOW <span>Explore offers and opportunities</span> </a></li>
                                    <li><a href="#profile3" class="membership" data-toggle="tab">Membership <span>Become
                                        a Y member today</span></a></li>
                                    <li><a href="#messages3" class="camps" data-toggle="tab">Camps <span>Check out our summer
                                        camp options</span></a></li>
                                    <li><a href="#settings3" class="preschools" data-toggle="tab">PRESCHOOL <span>Focus
                                        on confidence, character and fun</span></a></li>
                                    <li><a href="#BEFORE-AFTER3" class="before-after" data-toggle="tab">BEFORE & AFTER SCHOOL
                                        PROGRAMS</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home3">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to-2" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class at-the-y-now">
                                                AT THE Y NOW <span>Explore offers and opportunities</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to-2">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Be sure to take full advantage of our member benefits!</h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" tab-pane " id="profile3">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-features-02" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">Membership
                                                <span>Become a Y member today</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-features-02">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">No long-term contract necessary, pay month-to-month if you like
                                                                </h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="messages3">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-source-2" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">Camps <span>Check
                                                    out our summer camp options</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-source-2">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Use of pools and fitness centers seven days a week</h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="settings3">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-sourcess-2" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">PRESCHOOL <span>
                                                    Focus on confidence, character and fun</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-sourcess-2">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Reduced fees on Y preschool and before & after school programs
                                                                </h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="BEFORE-AFTER3">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-souurceses-01" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">BEFORE & AFTER
                                                SCHOOL PROGRAMS</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="Div1">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Be a part of a community of people who care about the health and
                                                                    well-being of others</h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
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
                        <div class="tab-pane" id="sports">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab3">
                                    <li class="active"><a href="#home4" class="at-the-y-now" data-toggle="tab">AT THE Y
                                        NOW <span>Explore offers and opportunities</span> </a></li>
                                    <li><a href="#profile4" class="membership" data-toggle="tab">Membership <span>Become
                                        a Y member today</span></a></li>
                                    <li><a href="#messages4" class="camps" data-toggle="tab">Camps <span>Check out our summer
                                        camp options</span></a></li>
                                    <li><a href="#settings4" class="preschools" data-toggle="tab">PRESCHOOL <span>Focus
                                        on confidence, character and fun</span></a></li>
                                    <li><a href="#BEFORE-AFTER4" class="before-after" data-toggle="tab">BEFORE & AFTER SCHOOL
                                        PROGRAMS</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home4">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to-3" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class at-the-y-now">
                                                AT THE Y NOW <span>Explore offers and opportunities</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to-3">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Be sure to take full advantage of our member benefits!</h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" tab-pane " id="profile4">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-features-3" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">Membership
                                                <span>Become a Y member today</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-features-3">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">No long-term contract necessary, pay month-to-month if you like
                                                                </h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="messages4">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-source-3" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">Camps <span>Check
                                                    out our summer camp options</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-source-3">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Use of pools and fitness centers seven days a week</h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="settings4">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-sourcess-3" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">PRESCHOOL <span>
                                                    Focus on confidence, character and fun</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-sourcess-3">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Reduced fees on Y preschool and before & after school programs
                                                                </h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="BEFORE-AFTER4">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-souurcess-3" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">BEFORE & AFTER
                                                SCHOOL PROGRAMS</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-souurcess-3">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Be a part of a community of people who care about the health and
                                                                    well-being of others</h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
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
                        <div class="tab-pane" id="youth">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab4">
                                    <li class="active"><a href="#home5" class="at-the-y-now" data-toggle="tab">AT THE Y
                                        NOW <span>Explore offers and opportunities</span> </a></li>
                                    <li><a href="#profile5" class="membership" data-toggle="tab">Membership <span>Become
                                        a Y member today</span></a></li>
                                    <li><a href="#messages5" class="camps" data-toggle="tab">Camps <span>Check out our summer
                                        camp options</span></a></li>
                                    <li><a href="#settings5" class="preschools" data-toggle="tab">PRESCHOOL <span>Focus
                                        on confidence, character and fun</span></a></li>
                                    <li><a href="#BEFORE-AFTER5" class="before-after" data-toggle="tab">BEFORE & AFTER SCHOOL
                                        PROGRAMS</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home5">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to-4" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class at-the-y-now">
                                                AT THE Y NOW <span>Explore offers and opportunities</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to-4">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Be sure to take full advantage of our member benefits!</h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" tab-pane " id="profile5">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-features-4" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">Membership
                                                <span>Become a Y member today</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-features-4">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">No long-term contract necessary, pay month-to-month if you like
                                                                </h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="messages5">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-source-4" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">Camps <span>Check
                                                    out our summer camp options</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-source-4">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Use of pools and fitness centers seven days a week</h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="settings5">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-sourcess-4" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">PRESCHOOL <span>
                                                    Focus on confidence, character and fun</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-sourcess-4">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Reduced fees on Y preschool and before & after school programs
                                                                </h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="BEFORE-AFTER5">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-souurcesse-4" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">BEFORE & AFTER
                                                SCHOOL PROGRAMS</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-souurcesse-4">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Be a part of a community of people who care about the health and
                                                                    well-being of others</h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
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
                        <div class="tab-pane" id="other">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab5">
                                    <li class="active"><a href="#home6" class="at-the-y-now" data-toggle="tab">AT THE Y
                                        NOW <span>Explore offers and opportunities</span> </a></li>
                                    <li><a href="#profile6" class="membership" data-toggle="tab">Membership <span>Become
                                        a Y member today</span></a></li>
                                    <li><a href="#messages6" class="camps" data-toggle="tab">Camps <span>Check out our summer
                                        camp options</span></a></li>
                                    <li><a href="#settings6" class="preschools" data-toggle="tab">PRESCHOOL <span>Focus
                                        on confidence, character and fun</span></a></li>
                                    <li><a href="#BEFORE-AFTER6" class="before-after" data-toggle="tab">BEFORE & AFTER SCHOOL
                                        PROGRAMS</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home6">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to-5" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class at-the-y-now">
                                                AT THE Y NOW <span>Explore offers and opportunities</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to-5">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Be sure to take full advantage of our member benefits!</h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" tab-pane " id="profile6">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-features-5" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">Membership
                                                <span>Become a Y member today</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-features-5">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">No long-term contract necessary, pay month-to-month if you like
                                                                </h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="messages6">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-source-5" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">Camps <span>Check
                                                    out our summer camp options</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-source-5">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Use of pools and fitness centers seven days a week</h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="settings6">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-sourcess-5" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">PRESCHOOL <span>
                                                    Focus on confidence, character and fun</span></a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-sourcess-5">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Reduced fees on Y preschool and before & after school programs
                                                                </h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="BEFORE-AFTER6">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-souurcesse-5" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">BEFORE & AFTER
                                                SCHOOL PROGRAMS</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-souurcesse-5">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Be a part of a community of people who care about the health and
                                                                    well-being of others</h3>
                                                                <ul>
                                                                    <li>Affordable and flexible membership options</li>
                                                                    <li>No long-term contract necessary, pay month-to-month if you like</li>
                                                                    <li>Access to all Y of Central Maryland Family Center Y's</li>
                                                                    <li>Use of pools and fitness centers seven days a week</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Free classes available</li>
                                                                    <li>Reduced fees on Y classes</li>
                                                                    <li>Reduced fees on Y camp</li>
                                                                    <li>Reduced fees on Y preschool and before & after school programs</li>
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for
                                                                        family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others
                                                                    </li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Registration is ONLY available online. Sign up now!</span></a>
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
