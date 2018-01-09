<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="chipmunks-caroll-county.aspx.cs" Inherits="YPortal.Web.locations.preschool.chipmunks_caroll_county" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(function () {
            //$( "div[id]" ).hide();
        });
    </script>

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
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#666:#666" src="../../App_Style/images/banner/location/preschools/chipmunk.png">
                        <div class="carousel-caption">
                            <p>
                                Y Chipmunks Preschool
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
                        <div class="tab-pane active" id="preschoolchipmunks">
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
                                                                <h2 class="title-02">Y Chipmunks Preschool</h2>
                                                                <address>
                                                                    Sandy Mount United Methodist Church<br />
                                                                    2101 Old Westminster Pike<br />
                                                                    Finksburg, MD 21048<br />
                                                                    (p)  410-848-2772
                                                                    <br>
                                                                    <br>
                                                                    Mon - Fri: 9:15am - 2:30pm depending on the program
                                                                </address>

                                                                <br class="clear">
                                                                <h3 class="title-03">Cheryl Rosendahl</h3>
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <a class="img-thumbnail-box" href="">
                                                                            <img src="../../App_Style/images/directors/cheryl.png" class="img-thumbnail">
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <a href="mailto:cherylrosendahl@ymaryland.org">cherylrosendahl@ymaryland.org</a>
                                                                <br>
                                                                <br>

                                                                <p>Welcome to the Y Chipmunks Preschool!</p>
                                                                <p>
                                                                    Hi . . .my name is Cheryl Rosendahl and I am the Director of the Y Chipmunks Preschool. I have a Bachelor of Science degree in Early Childhood Education and have been 
                                                                    in preschool education for 17 years.<p>
                                                                <p>
                                                                    At the Y Chipmunks Preschool our philosophy is children learn through play in a warm, nurturing environment. The teachers and I work closely with families 
                                                                    and other community resources to build relationships which create a strong foundation for school readiness.
                                                                <p>
                                                                <p>
                                                                    Chipmunks has been educating preschool children in Carroll County for over 45 years. In fact, we are now teaching the children and the grandchildren
                                                                     of our wonderful alumni.  The teachers have an average of eight plus years experience and are all certified in CPR and First Aid. They continue their 
                                                                    education on a yearly basis, going far beyond licensing training requirements. 
                                                                <p>
                                                                <p>
                                                                    We offer a wide variety of experiences which include science, math, literature, fine arts, health, music, social/emotional growth, and field trips. 
                                                                    We find that children learn best through hands-on, engaging activities. The teachers and I invite you to come visit us at our beautiful Carroll County location. Come be a part of our village!<p>
                                                                        <%--<small>(online form submitted to preschool directors via email)</small>--%>
                                                                        <br />
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">

                                                                <a href="mailto:cherylrosendahl@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Request a Tour Today</span></a>
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

                                                                    <li><strong>Part-day</strong> part-time care as follows:
                                                                        <ul>
                                                                            <li>Age 2 - M/W (9:15 am -11:45 am)</li>
                                                                            <li>Age 2 - T/Th (9:30 am - 12:00 pm)</li>
                                                                            <li>Age 2 - Friday (9:15 am - 11:45 am)</li>
                                                                            <li>Age 3 - T/Th (9:15 am - 11:45 am)</li>
                                                                            <li>Age 3 - M/W/F (9:30 am - 12:00 pm)</li>
                                                                            <li>Age 4 - M/W/F (12:45 pm - 3:15 pm)</li>
                                                                            <li>Age 4 - M-F (9:15 am - 11:45 am)</li>
                                                                            <li>Age 4 - M/W/F (9:30 am - 2:30 pm)</li>
                                                                        </ul>
                                                                    </li>
                                                                    <li>Y Preschool is a trusted program that has provided educational and developmental support to children and families for over 160 years. 
                                                                        Our preschool program combines a safe and happy educational environment with a curriculum designed to stimulate intellectual, emotional, and physical growth. 
                                                                       Our experienced teachers will provide the caring support and teach the critical skills needed for your child to succeed in kindergarten and beyond.</li>
                                                                   <%-- <li>Y Preschool is a trusted program that has provided educational and developmental support to children and families for over 160 years. Our preschool 
                                                                program combines a safe and happy educational environment with a curriculum designed to 
                                                                stimulate intellectual, emotional, and physical growth. Each day you will be provided with 
                                                                detailed information to guide you through your child’s day with us. You’ll receive daily 
                                                                reports from your child’s teacher outlining your child’s activities, routines, and care 
                                                                including information on new skills learned, classroom activities, and special accomplishments.
                                                                 Our experienced teachers will provide the caring support and teach the critical skills needed for your child to succeed in kindergarten and beyond.</li>--%>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="mailto:cherylrosendahl@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Request a Tour Today</span></a>
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
                                                                    The most important goal of our curriculum is to help children become enthusiastic learners. This means encouraging children to be active and creative explorers who are not 
                                                                    afraid to try out their ideas and to think their own thoughts. We’re teaching them how to learn and allowing them to learn at their own pace and in the ways that are best for 
                                                                    them. We’re instilling good habits and attitudes, character development, and a positive sense of themselves, which will benefit them throughout their lives.
                                                                </p>

                                                                <p>
                                                                    Our curriculum choices are based on developmentally appropriate practices; social, emotional, cognitive, language, and physical development domains; 
                                                                    individual needs of students; and health and safety. With this in mind, the Y of Central Maryland has chosen to use the Creative Curriculum and Core Knowledge
                                                                     Preschool Curriculum at all of our Y Preschool programs. Both demonstrate best practices and are comprised of skills and activities that provide children with 
                                                                    solid, coherent foundations for later learning.
                                                                </p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="mailto:cherylrosendahl@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Request a Tour Today</span></a>
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
                                                                <p>Maryland State Public Schools currently use the Maryland Model for School Readiness (MMSR) Assessment to measure the school readiness level of upcoming kindergartners.</p>
                                                                <p>The Maryland State average for children fully ready to enter kindergarten is 82%.</p>
                                                                <p>The percentage of our Y preschool children fully ready for kindergarten (based on the May 2013 MMSR assessment) is 95%.</p>
                                                                <p>2011 to Present - MSDE Accredited</p>
                                                                <%--<div class="row">
                                                                    <div class="col-md-6">
                                                                        <a class="img-thumbnail-box" href="">
                                                                            <img src="../../App_Style/images/sponsor-logos/maryland.png" class="img-thumbnail">
                                                                        </a>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <a class="img-thumbnail-box" href="">
                                                                            <img src="../../App_Style/images/sponsor-logos/necpa.png" class="img-thumbnail">
                                                                        </a>
                                                                    </div>
                                                                </div>--%>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="mailto:cherylrosendahl@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Request a Tour Today</span></a>
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
                                                                    As such, <strong>the first step in the enrollment process is setting up a tour and meeting directly with the Preschool 
                                                                    Director</strong>. During the tour, the director will provide you with the critical information you need to determine if 
                                                                    we're the right fit for your child. You will visit the classrooms, meet the teachers, and learn about our daily routines, 
                                                                    our curriculum, and our goals and expectations. It's the first step in establishing a strong partnership aimed at ensuring your child's success.
                                                                </p>
                                                                <p>Tours can be scheduled by contacting the Preschool Director via phone or email.</p>
                                                                <%--<a href="">REQUEST A TOUR</a>--%><%--<small> (online form submitted to preschool directors via email)</small>--%>
                                                                <br />
                                                                <h3 class="title-03">Registration Packets</h3>
                                                                <p>For your convenience, registration packets are conveniently available online for download, however you must schedule a tour with the Preschool Director in order for your registration to be accepted.</p>
                                                                <a target="_blank" href="pdf/Chipmunks_PS_packet_14-15.pdf">2014/2015 Y Chipmunks Preschool Registration Packet</a>
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
                                                                <a href="mailto:cherylrosendahl@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Request a Tour Today</span></a>
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
                                                                    <li>If Carroll County schools are closed, then Chipmunks will be closed for the day.</li>

                                                                    <li>If Carroll County schools announce a delayed opening, then Chipmunks classes start at 10:00 am that day.</li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="mailto:cherylrosendahl@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Request a Tour Today</span></a>
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
                                                                <p>
                                                                    <strong>Don’t just take our word for it...</strong><br />
                                                                    We know we offer a great preschool program that exceeds all expectations, but don’t just take our word for it...here are a few comments from real parents about Y Preschool!

                                                                </p>
                                                                <p><strong><i>"Staff is wonderful. I feel like they truly care about my girls and my girls are excited to come to school. They are learning new things and making friends."</i></strong> - Nancy, October 2013</p>

                                                                <p>
                                                                    <strong><i>"We love Chipmunks! The teachers are awesome!"</i></strong> - Katie, October 2013
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="mailto:cherylrosendahl@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Request a Tour Today</span></a>
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
