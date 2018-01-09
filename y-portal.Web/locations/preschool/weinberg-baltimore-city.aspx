﻿<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="weinberg-baltimore-city.aspx.cs" Inherits="YPortal.Web.locations.preschool.weinberg_baltimore_city" %>
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
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#666:#666" src="../../App_Style/images/banner/location/preschools/weinberg.png">
                        <div class="carousel-caption">
                            <p>
                                Y Preschool at Weinberg
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
                        <div class="tab-pane active" id="preschoolweinberg">
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
                                                                <h2 class="title-02">Y Preschool at Weinberg</h2>
                                                                <address>
                                                                    900 E. 33rd Street                         
                                                                    <br>
                                                                    Baltimore, MD 21218<br>
                                                                    (p) 410-889-9622 x2135<br>
                                                                    <br>
                                                                    Mon - Fri: 6:30am - 6:30pm
                                                                </address>

                                                                <br class="clear">
                                                                <h3 class="title-03">Jennifer Woodard</h3>
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <a class="img-thumbnail-box" href="">
                                                                            <img src="../../App_Style/images/directors/jennifer.png" class="img-thumbnail">
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <a href="mailto:jenniferwoodard@ymaryland.org">jenniferwoodard@ymaryland.org</a>
                                                         
                                                                <br>
                                                                <br>
                                                                <p>Hello! My name is Jennifer Woodard and I am the Center Director of our wonderful preschool. I have a degree in Early Childhood Education and 10+ years in the child care field, with four of those years in management.</p>
                                                                <p>The Weinberg Y Preschool staff are dedicated and passionate about their profession as educators. They are positive, nurturing, and committed to early childhood education. Our preschool services children ages 2-5. We offer a nutritious morning breakfast as well as a healthy afternoon snack. Parents are responsible for providing lunch for their child daily. As an extracurricular activity, our preschoolers receive weekly swim lessons included in the program. </p>
                                                                <p>Our school is a wonderful place for children to learn and grow. We pride ourselves on providing high quality care in Baltimore City, which is why we have a high demand for our program. </p>
                                                                <p>
                                                                    We would love for you to visit our wonderful preschool. Feel free to contact us to set up your tour. We hope to see you soon.
                                                                </p>
                                                                <br>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">

                                                                <a href="mailto:jenniferwoodard@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Request a Tour Today</span></a>
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
                                                                    <li><strong>Full-day</strong>, full-time (4-5 days/week) preschool for ages 2-5</li>
                                                                </ul>

                                                                <p>
                                                                    Y Preschool is a trusted program that has provided educational and developmental support to children and families for over 160 years. Our preschool 
                                                                    program combines a safe and happy educational environment with a curriculum designed to stimulate intellectual, emotional, and physical growth. 
                                                                    Each day you will be provided with detailed information to guide you through your child’s day with us. You’ll receive daily reports from your 
                                                                    child’s teacher outlining your child’s activities, routines, and care including information on new skills learned, classroom activities, 
                                                                    and special accomplishments. Our experienced teachers will provide the caring support and teach the critical skills needed for your child to succeed in kindergarten and beyond.
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="mailto:jenniferwoodard@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Request a Tour Today</span></a>
                                                                <%--s--%>
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
                                                                <p>The most important goal of our curriculum is to help children become enthusiastic learners. This means encouraging children to be active and creative explorers who are not afraid to try out their ideas and to think their own thoughts. We’re teaching them how to learn and allowing them to learn at their own pace and in the ways that are best for them. We’re instilling good habits and attitudes, character development, and a positive sense of themselves, which will benefit them throughout their lives.</p>

                                                                <p>
                                                                    Our curriculum choices are based on developmentally appropriate practices; social, emotional, cognitive, language, and physical development domains; individual needs of students; and health and safety. With this in mind, the Y of Central Maryland has chosen to use the Creative Curriculum and Core Knowledge Preschool Curriculum at all of our Y Preschool programs. Both demonstrate best practices and are comprised of skills and activities that provide children with solid, coherent foundations for later learning.
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="mailto:jenniferwoodard@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Request a Tour Today</span></a>
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
                                                                <p>Maryland State Public Schools currently use the Maryland Model for School Readiness (MMSR) Assessment to measure the school readiness level of upcoming kindergartners.                                      </p>
                                                                <p>The Maryland State average for children fully ready to enter kindergarten is 82%.                          </p>
                                                                <p>The percentage of our Y preschool children fully ready for kindergarten (based on the May 2013 MMSR assessment) is 89%.                                    </p>
                                                                <p>2013   - MSDE Maryland Excels</p>
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <a class="img-thumbnail-box" href="">
                                                                            <img src="../../App_Style/images/sponsor-logos/maryland.png" class="img-thumbnail">
                                                                        </a>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="mailto:jenniferwoodard@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Request a Tour Today</span></a>
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
                                                                <p>Tours can be scheduled by contacting the Preschool Director via phone or email.</p>
                                                                <br />
                                                                
                                                                <h3 class="title-03">Registration Packets</h3>
                                                                <p>For your convenience, registration packets are conveniently available online for 
                                                                download, however you must schedule a tour with the Preschool Director in order for 
                                                                your registration to be accepted. </p>
                                                                
                                                                <a href="pdf/Weinberg PS packet 14-15.pdf">2014/2015 Y Preschool at Weinberg Registration Packet</a>

                                                                <br />
                                                                <h3 class="title-03">Financial Assistance</h3>
                                                                <p>
                                                                    As a charitable organization, the Y is committed to providing programs and services to all. We raise 
                                                                    funds to provide financial assistance for eligible children and families who otherwise can not afford a 
                                                                    Y experience. Financial assistance applications are available online, from the Preschool Director or the 
                                                                    Y Business Office. The Y also accepts Department of Social Services (DSS) and Purchase of Care (POC) vouchers.
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="mailto:jenniferwoodard@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Request a Tour Today</span></a>
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
                                                                <a href="mailto:jenniferwoodard@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Request a Tour Today</span></a>
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
                                                                    We know we offer a great preschool program that exceeds all expectations, but don’t just take our 
                                                                    word for it...here are a few comments from real parents about Y Preschool!
                                                                </p>
                                                                
                                                                <p>"They educate and allow fun at the same time. Children are happy. The staff are always friendly." - Clarence, October 2013</p>
                                                                
                                                                <p>"The Y Preschool has a lot to offer for 2-5 year olds. Staff is friendly. I have visited other centers . . . this is by far one of the BEST. My child is learning, growing, and interacting 
                                                                    at a pace that suits her needs and prepares her for school . . . awesome!" - Weinberg parent, October 2013</p>
                                                               
                                                                <p>"I am pleased with my child's progress and development during her experience at the Y Preschool." - Stephanie, October 2013</p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="mailto:jenniferwoodard@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Request a Tour Today</span></a>
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
