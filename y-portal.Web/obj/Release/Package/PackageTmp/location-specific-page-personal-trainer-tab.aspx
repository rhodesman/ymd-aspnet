<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="location-specific-page-personal-trainer-tab.aspx.cs" Inherits="YPortal.Web.location_specific_page_personal_trainer_tab" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" class="carousel slide" id="carousel-example-captions">
                <!--<ol class="carousel-indicators">
        <li class="" data-slide-to="0" data-target="#carousel-example-captions"> <a href="#homes" data-toggle="tab"> <img src="App_Style/images/banner/inner-page-banner/indicator-01.png"> <span> Youth Sports </span> </a> </li>
        <li data-slide-to="1" data-target="#carousel-example-captions" class=""> <a href="#profiles" data-toggle="tab"><img src="App_Style/images/banner/inner-page-banner/indicator-02.png"> <span> Youth Sports </span> </a> </li>
        <li data-slide-to="2" data-target="#carousel-example-captions" class=""> <a href="#messagess" data-toggle="tab"><img src="App_Style/images/banner/inner-page-banner/indicator-01.png"> <span> Youth Sports </span></a> </li>
      </ol>-->
                <div class="carousel-inner">
                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="App_Style/images/banner/inner-page-banner/home-banner-01.png">
                        <div class="carousel-caption">
                            <p>
                                More than a
                                <br>
                                membership
                            </p>
                            <div class="btn-group">
                                <a href="" class="common-btn btn-velvet"><span class="btn-velvet-border">Learn how to get started today</span></a>
                            </div>
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
                            <div class="btn-group">
                                <a href="" class="common-btn btn-velvet"><span class="btn-velvet-border">Learn how to get started today</span></a>
                            </div>
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
                            <div class="btn-group">
                                <a href="" class="common-btn btn-velvet"><span class="btn-velvet-border">Learn how to get started today</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--      <a data-slide="prev" href="#carousel-example-captions" class="left carousel-control"> <span class="glyphicon glyphicon-chevron-left"></span> </a> <a data-slide="next" href="#carousel-example-captions" class="right carousel-control"> <span class="glyphicon glyphicon-chevron-right"></span> </a>-->
            </div>
        </div>
    </div>
    <div class="dux-content-area dux-content-area-margin-02">
        <div class="location-specific container">
            <div class="row">
                <div class="col-md-12">
                    <div class="tab-content">
                        <div class="tab-pane active" id="Div7">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#home" class="" data-toggle="tab">Center Overview </a></li>
                                    <li><a href="#profile" class="" data-toggle="tab">Amenities</a></li>
                                    <li><a href="#messages" class="" data-toggle="tab">Programs</a></li>
                                    <li><a href="#settings" class="" data-toggle="tab">Policies</a></li>
                                    <li><a href="#BEFORE-AFTER" class="" data-toggle="tab">Personal Training</a></li>
                                    <li><a href="#Give-Back" data-toggle="tab">Give Back</a></li>
                                    <li><a href="#Schedules" data-toggle="tab">Schedules</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Center Overview</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h2 class="title-02">Catonsville Family Center Y</h2>
                                                                <address>
                                                                    850 S. Rolling Road
                                                                    <br>
                                                                    Catonsville, MD 21228<br>
                                                                    (p) 410-747-9622<br>
                                                                </address>
                                                                <address>
                                                                    HOURS OF OPERATION<br>
                                                                    Center Hours<br>
                                                                    Monday-Friday 5:30am - 10pm<br>
                                                                    Saturday 7am - 7pm<br>
                                                                    Sunday 9am - 7pm<br>
                                                                </address>
                                                                <br class="clear">
                                                                <h3 class="title-03">Center Leadership Team</h3>
                                                                <img src="App_Style/images/banner/content/content-img-01.png" alt="Center Leadership Team">
                                                                <br>
                                                                <br>
                                                                <strong>Vice President, District Operations: </strong>
                                                                <br>
                                                                Suzanne Green (suzannegreen@ymaryland.org),
                                                                <br>
                                                                <strong>Associate Center Director/Director of Membership & Program Development:</strong>
                                                                <br>
                                                                Nicol Clark (nicolclark@ymaryland.org)
                                                                <br>
                                                                <strong>Director of Member Services: </strong>
                                                                <br>
                                                                Meaghan Henry (meaghanhenry@ymaryland.org)
                                                                <br>
                                                                <strong>Program Director: </strong>
                                                                <br>
                                                                Kristen Miller (kristenmiller@ymaryland.org)
                                                                <br>
                                                                <strong>Swim Director: </strong>
                                                                <br>
                                                                Linda Fabian (lindafabian@ymaryland.org)
                                                                <br>
                                                                <strong>Fitness Director: </strong>
                                                                <br>
                                                                Stacey Baca (staceybaca@ymaryland.org)
                                                                <br>
                                                                <strong>Group Fitness Director: </strong>
                                                                <br>
                                                                Kelly Wojtowicz (kellywojtowicz@ymaryland.org)
                                                                <br>
                                                                <br>
                                                                <a href="">Checkout the Annual 2014 Turkey Trot <i class="fa fa-angle-double-right"></i></a>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                               
                                                                <a href="" class="common-btn btn-velvet"><span class="btn-velvet-border">Explore your<br>
                                                                        membership options
                                                                        <br>
                                                                        TODAY</span></a>
                                                                <img src="App_Style/images/banner/side-bar/sidebar-banner-01.png" alt="sidebar banner">
                                                                <p>Stay up to date with the Y of Central MD. Sign up for our Newsletter!</p>
                                                                <label>Email Address</label>
                                                                <br>
                                                                <input type="text" class="form-control" value="yourname@example.com">
                                                                 <a href="" class="common-btn btn-velvet"><span class="btn-velvet-border">Sign Up</span></a>
                                                               
                                                                <br class="clear">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" tab-pane " id="profile">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-features" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Amenities</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-features">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">No long-term contract necessary, pay month-to-month if you like</h3>
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
                                                                <a href="" class="common-btn btn-velvet"><span class="btn-velvet-border">Get 75% off the Joining Fee</span></a>
                                                                <img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="messages">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-source" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Programs</a></div>
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
                                                                    <li>Free Stay-n-Play supervised activity room for little ones while you exercise (for family membership holders)</li>
                                                                    <li>Be a part of a community of people who care about the health and well-being of others</li>
                                                                    <li>Use of the A.W.A.Y. program (privileges at hundreds of Y's across the country)</li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                              <div class="side-bar">
                                                                <a href="" class="common-btn btn-velvet"><span class="btn-velvet-border">Get 75% off the Joining Fee</span></a>
                                                                <img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="settings">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-sources" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Policies</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-sources">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Reduced fees on Y preschool and before & after school programs</h3>
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
                                                                <a href="" class="common-btn btn-velvet"><span class="btn-velvet-border">Get 75% off the Joining Fee</span></a>
                                                                <img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="BEFORE-AFTER">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-souurces" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Personal Training</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-souurces">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h2 class="title-02">Catonsville Personal Trainers</h2>
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="media">
                                                                            <a class="pull-left" href="">
                                                                                <img class="media-object" src="App_Style/images/banner/content/user-01.png" alt="user">
                                                                            </a>
                                                                            <div class="media-body">
                                                                                <h4 class="media-heading">Tom Smith</h4>
                                                                                <a href="">tom@webbmason.com</a>
                                                                            </div>
                                                                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <div class="media">
                                                                            <a class="pull-left" href="">
                                                                                <img class="media-object" src="App_Style/images/banner/content/user--02.png" alt="user">
                                                                            </a>
                                                                            <div class="media-body">
                                                                                <h4 class="media-heading">Sara Williams</h4>
                                                                                <a href="">sara@aol.com</a>
                                                                            </div>
                                                                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                                                                        </div>
                                                                    </div>


                                                                    <div class="col-md-6">
                                                                        <div class="media">
                                                                            <a class="pull-left" href="">
                                                                                <img class="media-object" src="App_Style/images/banner/content/user--03.png" alt="user">
                                                                            </a>
                                                                            <div class="media-body">
                                                                                <h4 class="media-heading">Elezabeth Dexter</h4>
                                                                                <a href="">edexter@gmail.com</a>
                                                                            </div>
                                                                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                                                                        </div>
                                                                    </div>


                                                                    <div class="col-md-6">
                                                                        <div class="media">
                                                                            <a class="pull-left" href="">
                                                                                <img class="media-object" src="App_Style/images/banner/content/user--04.png" alt="user">
                                                                            </a>
                                                                            <div class="media-body">
                                                                                <h4 class="media-heading">Mike Oranner</h4>
                                                                                <a href="">mike@webbmason.com</a>
                                                                            </div>
                                                                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                                                                        </div>
                                                                    </div>



                                                                    <div class="col-md-6">
                                                                        <div class="media">
                                                                            <a class="pull-left" href="">
                                                                                <img class="media-object" src="App_Style/images/banner/content/user--05.png" alt="user">
                                                                            </a>
                                                                            <div class="media-body">
                                                                                <h4 class="media-heading">Brian Simpsons</h4>
                                                                                <a href="">brian@gmail.com</a>
                                                                            </div>
                                                                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                                                                        </div>
                                                                    </div>




                                                                    <div class="col-md-6">
                                                                        <div class="media">
                                                                            <a class="pull-left" href="">
                                                                                <img class="media-object" src="App_Style/images/banner/content/user--06.png" alt="user">
                                                                            </a>
                                                                            <div class="media-body">
                                                                                <h4 class="media-heading">Pike Roberts</h4>
                                                                                <a href="">proberts@webbmason.com</a>
                                                                            </div>
                                                                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                                                                        </div>
                                                                    </div>

                                                                </div>


                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                               <a href="" class="common-btn btn-velvet"><span class="btn-velvet-border">Explore your<br>
                                                                        membership options
                                                                        <br>
                                                                        TODAY</span></a>
                                                                <img src="App_Style/images/banner/side-bar/sidebar-banner-01.png" alt="sidebar banner">
                                                                <br class="clear">
                                                                <address>
                                                                    850 S. Rolling Road
                                                        <br>
                                                                    Catonsville,<br>
                                                                    MD 21228<br>
                                                                    (p) 410-747-9622<br>
                                                                </address>
                                                                <address>
                                                                    <strong>HOURS OF OPERATION </strong>
                                                                    <br>
                                                                    Center Hours
                                                        <br>
                                                                    Monday-Friday
                                                        <br>
                                                                    5:30am - 10pm
                                                        <br>
                                                                    Saturday 7am - 7pm
                                                        <br>
                                                                    Sunday 9am - 7pm
                                                        <br>
                                                                </address>
                                                                <br class="clear">
                                                                <p>Stay up to date with the Y of Central MD. Sign up for our Newsletter!</p>
                                                                <label>Email Address</label>
                                                                <br>
                                                                <input type="text" class="form-control" value="yourname@example.com">
                                                               <a href="" class="common-btn btn-velvet"><span class="btn-velvet-border">Sign Up</span></a>
                                                                <br class="clear">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane " id="Give-Back">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-sources-05" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Give Back</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-sources-05">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Reduced fees on Y preschool and before & after school programs</h3>
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
                                                                <a href="" class="common-btn btn-velvet"><span class="btn-velvet-border">Get 75% off the Joining Fee</span></a>
                                                                <img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="Schedules">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-souurces-09" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Personal Training</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-souurces-09">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Be a part of a community of people who care about the health and well-being of others</h3>
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
                                                                <a href="" class="common-btn btn-velvet"><span class="btn-velvet-border">Get 75% off the Joining Fee</span></a>
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
