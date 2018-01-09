<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="location-specific.aspx.cs" Inherits="YPortal.Web.location_specific" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators">
                    <li class="" data-slide-to="0" data-target="#carousel-example-captions"><a href="#homes" data-toggle="tab">
                        <img src="App_Style/images/banner/inner-page-banner/indicator-01.png">
                        <span>Youth Sports </span></a></li>
                    <li data-slide-to="1" data-target="#carousel-example-captions" class=""><a href="#profiles" data-toggle="tab">
                        <img src="App_Style/images/banner/inner-page-banner/indicator-02.png">
                        <span>Youth Sports </span></a></li>
                    <li data-slide-to="2" data-target="#carousel-example-captions" class=""><a href="#messagess" data-toggle="tab">
                        <img src="App_Style/images/banner/inner-page-banner/indicator-01.png">
                        <span>Youth Sports </span></a></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="App_Style/images/banner/inner-page-banner/home-banner-01.png">
                        <div class="carousel-caption">
                            <p>
                                More than a
                                <br>
                                membership
                            </p>
                            <div class="btn-group"><a href="" class="btn btn-velvet">Learn how to get started today</a> <a href="" class="btn btn-velvet dropdown-toggle" data-toggle="dropdown"><span class="fa fa-angle-double-right"></span></a></div>
                        </div>
                    </div>
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#666:#666" src="App_Style/images/banner/inner-page-banner/home-banner-01.png">
                        <div class="carousel-caption">
                            <p>
                                More than a
                                <br>
                                membership
                            </p>
                            <div class="btn-group"><a href="" class="btn btn-velvet">Learn how to get started today</a> <a href="" class="btn btn-velvet dropdown-toggle" data-toggle="dropdown"><span class="fa fa-angle-double-right"></span></a></div>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#555:#5555" src="App_Style/images/banner/inner-page-banner/home-banner-01.png">
                        <div class="carousel-caption">
                            <p>
                                More than a
                                <br>
                                membership
                            </p>
                            <div class="btn-group"><a href="" class="btn btn-velvet">Learn how to get started today</a> <a href="" class="btn btn-velvet dropdown-toggle" data-toggle="dropdown"><span class="fa fa-angle-double-right"></span></a></div>
                        </div>
                    </div>
                </div>
                <!--      <a data-slide="prev" href="#carousel-example-captions" class="left carousel-control"> <span class="glyphicon glyphicon-chevron-left"></span> </a> <a data-slide="next" href="#carousel-example-captions" class="right carousel-control"> <span class="glyphicon glyphicon-chevron-right"></span> </a>-->
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
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#home" data-toggle="tab">Y Sports Philosophy </a></li>
                                    <li><a href="#profile" data-toggle="tab">yOUTH SPORTS FOCUS</a></li>
                                    <li><a href="#messages" data-toggle="tab">YOUTH SPORTS PROGRAMS</a></li>
                                </ul>

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
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
                                                        <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for family membership holders)</li>
                                                        <li>Be a part of a community of people who care about the health and well-being of others</li>
                                                        <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-lg-5">
                                                <div class="side-bar">
                                                    <div class="btn-group">
                                                        <a href="" class="btn big-btn btn-velvet ">Get your child
                                                            <br>
                                                            involved TODAY!</a> <a href="" class="btn btn-velvet dropdown-toggle " data-toggle="dropdown"><span class="fa fa-angle-double-right icon-big"></span></a>
                                                    </div>
                                                    <img src="App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                    <p>Stay up to date with the Y of Central MD. Sign up for our Newsletter!</p>
                                                    <label>Email Address</label>
                                                    <br>
                                                    <input type="text" class="form-control" value="yourname@example.com">
                                                    <div class="btn-group btn-group-float"><a href="" class="btn  btn-velvet ">Sign Up</a> <a href="" class="btn btn-velvet dropdown-toggle " data-toggle="dropdown"><span class="fa fa-angle-double-right "></span></a></div>
                                                    <br class="clear">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="profile">
                                        <div class="row">
                                            <div class="col-md-7">
                                                <div class="main-body">
                                                    <h3 class="title-03">Affordable and flexible membership options</h3>
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
                                                        <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for family membership holders)</li>
                                                        <li>Be a part of a community of people who care about the health and well-being of others</li>
                                                        <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-lg-5">
                                                <div class="side-bar">
                                                    <div class="btn-group"><a href="" class="btn btn-velvet">Get 75% off the Joining Fee</a> <a href="" class="btn btn-velvet dropdown-toggle" data-toggle="dropdown"><span class="fa fa-angle-double-right"></span></a></div>
                                                    <img src="App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="messages">
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
                                                        <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for family membership holders)</li>
                                                        <li>Be a part of a community of people who care about the health and well-being of others</li>
                                                        <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-lg-5">
                                                <div class="side-bar">
                                                    <div class="btn-group"><a href="" class="btn btn-velvet">Get 75% off the Joining Fee</a> <a href="" class="btn btn-velvet dropdown-toggle" data-toggle="dropdown"><span class="fa fa-angle-double-right"></span></a></div>
                                                    <img src="App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="profiles">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs">
                                    <li><a href="#profile" data-toggle="tab">yOUTH SPORTS FOCUS</a></li>
                                    <li><a href="#messages" data-toggle="tab">YOUTH SPORTS PROGRAMS</a></li>
                                    <li class="active"><a href="#home" data-toggle="tab">Y Sports Philosophy </a></li>
                                </ul>

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div class="tab-pane active" id="Div1">
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
                                                        <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for family membership holders)</li>
                                                        <li>Be a part of a community of people who care about the health and well-being of others</li>
                                                        <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-lg-5">
                                                <div class="side-bar">
                                                    <div class="btn-group"><a href="" class="btn btn-velvet">Get 75% off the Joining Fee</a> <a href="" class="btn btn-velvet dropdown-toggle" data-toggle="dropdown"><span class="fa fa-angle-double-right"></span></a></div>
                                                    <img src="App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="Div2">
                                        <div class="row">
                                            <div class="col-md-7">
                                                <div class="main-body">
                                                    <h3 class="title-03">Affordable and flexible membership options</h3>
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
                                                        <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for family membership holders)</li>
                                                        <li>Be a part of a community of people who care about the health and well-being of others</li>
                                                        <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-lg-5">
                                                <div class="side-bar">
                                                    <div class="btn-group"><a href="" class="btn btn-velvet">Get 75% off the Joining Fee</a> <a href="" class="btn btn-velvet dropdown-toggle" data-toggle="dropdown"><span class="fa fa-angle-double-right"></span></a></div>
                                                    <img src="App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="Div3">
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
                                                        <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for family membership holders)</li>
                                                        <li>Be a part of a community of people who care about the health and well-being of others</li>
                                                        <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-lg-5">
                                                <div class="side-bar">
                                                    <div class="btn-group"><a href="" class="btn btn-velvet">Get 75% off the Joining Fee</a> <a href="" class="btn btn-velvet dropdown-toggle" data-toggle="dropdown"><span class="fa fa-angle-double-right"></span></a></div>
                                                    <img src="App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="messagess">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs">
                                    <li><a href="#messages" data-toggle="tab">YOUTH SPORTS PROGRAMS</a></li>
                                    <li><a href="#profile" data-toggle="tab">yOUTH SPORTS FOCUS</a></li>
                                    <li class="active"><a href="#home" data-toggle="tab">Y Sports Philosophy </a></li>
                                </ul>

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div class="tab-pane active" id="Div4">
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
                                                        <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for family membership holders)</li>
                                                        <li>Be a part of a community of people who care about the health and well-being of others</li>
                                                        <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-lg-5">
                                                <div class="side-bar">
                                                    <div class="btn-group"><a href="" class="btn btn-velvet">Get 75% off the Joining Fee</a> <a href="" class="btn btn-velvet dropdown-toggle" data-toggle="dropdown"><span class="fa fa-angle-double-right"></span></a></div>
                                                    <img src="App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="Div5">
                                        <div class="row">
                                            <div class="col-md-7">
                                                <div class="main-body">
                                                    <h3 class="title-03">Affordable and flexible membership options</h3>
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
                                                        <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for family membership holders)</li>
                                                        <li>Be a part of a community of people who care about the health and well-being of others</li>
                                                        <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-lg-5">
                                                <div class="side-bar">
                                                    <div class="btn-group"><a href="" class="btn btn-velvet">Get 75% off the Joining Fee</a> <a href="" class="btn btn-velvet dropdown-toggle" data-toggle="dropdown"><span class="fa fa-angle-double-right"></span></a></div>
                                                    <img src="App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="Div6">
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
                                                        <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for family membership holders)</li>
                                                        <li>Be a part of a community of people who care about the health and well-being of others</li>
                                                        <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-lg-5">
                                                <div class="side-bar">
                                                    <div class="btn-group"><a href="" class="btn btn-velvet">Get 75% off the Joining Fee</a> <a href="" class="btn btn-velvet dropdown-toggle" data-toggle="dropdown"><span class="fa fa-angle-double-right"></span></a></div>
                                                    <img src="App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
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
