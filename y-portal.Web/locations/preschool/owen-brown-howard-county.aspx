<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="owen-brown-howard-county.aspx.cs" Inherits="YPortal.Web.locations.preschool.owen_brown_howard_county" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">
                <!--<ol class="carousel-indicators">
        <li class="" data-slide-to="0" data-target="#carousel-example-captions"> <a href="#homes" data-toggle="tab"> <img src="App_Style/images/banner/inner-page-banner/indicator-01.png"> <span> Youth Sports </span> </a> </li>
        <li data-slide-to="1" data-target="#carousel-example-captions" class=""> <a href="#profiles" data-toggle="tab"><img src="App_Style/images/banner/inner-page-banner/indicator-02.png"> <span> Youth Sports </span> </a> </li>
        <li data-slide-to="2" data-target="#carousel-example-captions" class=""> <a href="#messagess" data-toggle="tab"><img src="App_Style/images/banner/inner-page-banner/indicator-01.png"> <span> Youth Sports </span></a> </li>
      </ol>-->
                <div class="carousel-inner">

                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#666:#666" src="../../App_Style/images/banner/location/preschools/owen-brown.png">
                        <div class="carousel-caption">
                            <p>
                                Y Preschool in Owen Brown
                            </p>

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
                        <div class="tab-pane active" id="preschoolowen">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#home" class="" data-toggle="tab">Center Overview </a></li>
                                    <li><a href="#profile" class="" data-toggle="tab">Program</a></li>
                                    <li><a href="#messages" class="" data-toggle="tab">Curriculum</a></li>
                                    <li class="big-tab"><a href="#Accreditations" class="" data-toggle="tab">Accreditations & Proven Results</a></li>
                                    <li><a href="#settings" class="" data-toggle="tab">How to Enroll</a></li>
                                    <li><a href="#Give-Back" class="" data-toggle="tab">Inclement Weather Policy</a></li>
                                    <li><a href="#Schedules" data-toggle="tab">TESTIMONIALS</a></li>

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
                                                                <h2 class="title-02">Y Preschool in Owen Brown</h2>
                                                                <address>
                                                                    9270 Homespun Drive
                                                                    <br />
                                                                    Columbia, MD 21045
                                                                    <br />
                                                                    410-290-6505.
                                                                </address>

                                                                <br class="clear">
                                                                <h3 class="title-03">Caroline Barringer</h3>
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <a class="img-thumbnail-box" href="">
                                                                            <img src="../../App_Style/images/directors/caroline.png" class="img-thumbnail">
                                                                        </a>
                                                                    </div>
                                                                </div>

                                                                <a href="mailto:carolinebarringer@ymaryland.org">carolinebarringer@ymaryland.org</a>

                                                                <br>
                                                                <br>
                                                                <p>
                                                                    Hello and welcome to the Y Preschool in Owen Brown! My name is Caroline Barringer and I am the Center Director. I have a masters degree in Early Childhood 
                                                                   Education along with more than 20 years of experience as a teacher and administrator.
                                                                </p>

                                                                <p>
                                                                    Whether it's providing loving care for infants, participating in fun, curriculum-based activities in our preschool programs, or interacting with our school-age children in our safe, 
    fun-filled before & after school classroom and camp program, I personally love the opportunity to make a difference in a child's life and value the relationships we develop with our children, families and communities.
                                                                </p>

                                                                <p>
                                                                    Our teachers are what make the Y Preschool in Owen Brown great. Almost half of our teachers have been here for five or more years.  Our team is dedicated to helping your child and 
    family reach their fullest potential.  We also host a variety of fun and educational activities at the preschool designed to engage parents and children alike!                                     
                                                                </p>

                                                                <p>
                                                                    I know when you visit our center you will find a place that is warm, friendly and caring - a positive learning environment that will provide your child with fun, 
    structure and an education that will prepare him/her for the future.                                                                                                                                                                                                                                                                                                          
                                                                </p>


                                                                <p>
                                                                    Call or email to set up a tour today!
                                                                </p>

                                                                <br>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">

                                                                <a href="mailto:carolinebarringer@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Request a Tour Today</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner-01.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" tab-pane " id="profile">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-features" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Program</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-features">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Program Options </h3>
                                                                <ul>

                                                                    <li><strong>Full-day</strong> full-time (4-5 days/week) preschool for ages 2-5  </li>

                                                                    <li><strong>Full-day</strong> full-time Infant and Toddler care for ages 6 weeks to 24 months</li>
                                                                    <li>Wrap-around care for local Head Start programs for ages 3 - 5</li>
                                                                    <li>Before & After School Enrichment for ages 5 - 12. Serving students in the Church Creek Elementary school district. </li>
                                                                    <li>Y Preschool is a trusted program that has provided educational and developmental support to children and families for over 160 years. Our preschool program combines a 
                                                                safe and happy educational environment with a curriculum designed to stimulate intellectual, emotional, and physical growth. Each day you will be provided with
                                                                 detailed information to guide you through your child’s day with us. You’ll receive daily reports from your child’s teacher outlining your child’s activities, routines, 
                                                                and care including information on new skills learned, classroom activities, and special accomplishments. Our experienced teachers will provide the caring support and 
                                                                teach the critical skills needed for your child to succeed in kindergarten and beyond.</li>
                                                                </ul>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="mailto:carolinebarringer@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Request a Tour Today</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="messages">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-source" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Curriculum</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-source">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    The most important goal of our curriculum is to help children become enthusiastic learners. This means encouraging children to be active and creative explorers who are not afraid to try out their ideas and to think their own 
                                                                    thoughts. We’re teaching them how to learn and allowing them to learn at their own pace and in the ways that are best for them. We’re instilling good habits and attitudes, 
                                                                    character development, and a positive sense of themselves, which will benefit them throughout their lives.


                                                                </p>

                                                                <p>
                                                                    Our curriculum choices are based on developmentally appropriate practices; social, emotional, cognitive, language, and physical development domains; 
                                                                    individual needs of students; and health and safety. With this in mind, the Y of Central Maryland has chosen to use the Creative Curriculum and Core 
                                                                    Knowledge Preschool Curriculum at all of our Y Preschool programs. 
                                                                    Both demonstrate best practices and are comprised of skills and activities that provide children with solid, coherent foundations for later learning.
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="mailto:carolinebarringer@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Request a Tour Today</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="Accreditations">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-souurces-011" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Accreditations & Proven Results</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-souurces-011">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>Maryland State Public Schools currently use the Maryland Model for School Readiness (MMSR) Assessment to measure the school readiness level of upcoming kindergartners.  </p>
                                                                <p>The Maryland State average for children fully ready to enter kindergarten is 82%.                          </p>
                                                                <p>The percentage of our Y preschool children fully ready for kindergarten (based on the May 2013 MMSR assessment) is 91%.                                                                                                </p>
                                                                <p>2012 – Healthy Howard Award </p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="mailto:carolinebarringer@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Request a Tour Today</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="settings">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-sources" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class" onclick='SpecialRedirect("preenroll")'>How to Enroll</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-sources">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">

                                                                <p>
                                                                    The Y believes strongly that parent participation is a key ingredient in a quality preschool program. 
                                                                    As such, <b>the first step in the enrollment process is setting up a tour and meeting directly with the Preschool 
                                                                    Director.</b> During the tour, the director will provide you with the critical information you need to determine if 
                                                                    we're the right fit for your child. You will visit the classrooms, meet the teachers, and learn about our daily routines, 
                                                                    our curriculum, and our goals and expectations. It's the first step in establishing a strong partnership aimed at ensuring your child's success.
                                                                </p>
                                                                <p>Tours can be scheduled by contacting the Preschool Director via phone or email.  </p>

                                                                <h3 class="title-03">Registration Packets</h3>
                                                                <p>
                                                                    For your convenience, registration packets are conveniently available online for download, however you must schedule a tour with the Preschool Director in order for your registration to be accepted. 
                                                                </p>
                                                                <a href="pdf/Owen Brown PS packet 14-15.pdf">2014/2015 Y Preschool in Owen Brown Registration Packet</a>
                                                                <br />
                                                                <br />

                                                                <h3 class="title-03">Financial Assistance</h3>
                                                                <p>
                                                                    As a charitable organization, the Y is committed to providing programs and services to all. We raise 
                                                                    funds to provide financial assistance for eligible children and families who otherwise can not afford a 
                                                                    Y experience. Financial assistance applications are available online, from the Preschool Director or the 
                                                                    Y Business Office. The Y also accepts Department of Social Services (DSS) and Purchase of Care (POC) vouchers.
                                                                </p>
                                                                <a target="_blank" href="../../footer/pdf/FIN-APP-2014.pdf">FINANCIAL ASSISTANCE FORM </a>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="mailto:carolinebarringer@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Request a Tour Today</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
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

                                                                <ul>
                                                                    <li>If the local school district is either delayed or closed, then the Preschool Center will open at 8:00 am, unless the Y 
                                                                        association office determines the weather and road conditions are such that either a later opening or a closing would 
                                                                        be necessary to ensure the safety of our families and staff.  If the association office decides to open after 8:00 am or 
                                                                        close the Preschool Center for the day, then an announcement will be made on our website and via email prior to 7:30 am.</li>

                                                                    <li>If the local school district announces an early closing, then the Preschool Center will remain open for normal business hours, 
                                                                        unless the association office decides otherwise. You will be notified via email if it is determined that we would need to close early.</li>

                                                                    <li>On those days when the local school district is already scheduled to be closed due to a professional day, holiday, etc., 
                                                                        then an announcement will be made on our website and via email prior to 7:30am. Parents should check for updates regarding weather-related closings on their 
                                                                        email, on the ymaryland.org homepage, or on the Y's Facebook page.</li>

                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="mailto:carolinebarringer@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Request a Tour Today</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="Schedules">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-souurces-09" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">TESTIMONIALS</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-souurces-09">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Don’t just take our word for it...</h3>
                                                                <p>
                                                                    We know we offer a great preschool program that exceeds all expectations, but don’t just take 
                                                                our word for it...here are a few comments from real parents about Y Preschool!
                                                                </p>

                                                                <p>"Everyone is welcoming, nurturing." - Jason, October 2013</p>

                                                                <p>"Friendly, safe, nurturing environment. This is my second child that I have had at the Y." - Owen Brown parent, October 2013</p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="mailto:carolinebarringer@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Request a Tour Today</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
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
