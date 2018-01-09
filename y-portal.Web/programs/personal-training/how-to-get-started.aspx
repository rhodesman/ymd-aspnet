<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="how-to-get-started.aspx.cs" Inherits="YPortal.Web.programs.personal_training.how_to_get_started" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators">
                    <li class="active" data-slide-to="0" data-target="#carousel-example-captions"><a href="#membershipbecomeamember" onclick='SpecialRedirectPartTwo("membershipbecomeamember")' data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/personal-training/how-to-get-started.png" />
                        <span>HOW TO GET STARTED 
                        </span></a></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/personal-training/how-to-get-started.png">
                        <div class="carousel-caption">
                            <p>
                                How to 
                                    <br>
                                get started
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
                        <div class="tab-pane active" id="membershipbecomeamember">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#home" data-toggle="tab">ONE-ON-ONE TRAINING </a></li>
                                    <li><a href="#profiles" data-toggle="tab">SMALL GROUP TRAINING </a></li>
                                    <li><a href="#messages" data-toggle="tab">FitLinxx Training System </a></li>
                                    <li><a href="#settings" data-toggle="tab">Cancer Exercise Program </a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">ONE-ON-ONE TRAINING </a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>To get started with one-on-one personal training, you will need to either:</p>
                                                                <ul>
                                                                    <li>Come into a Y center and tell the front desk staff you’re interested in setting up a personal training session.  They will assist you in selecting the number of sessions (1, 3, 6, 12, 18, 25), the length of each session (30 minutes or 60 minutes), and choosing a personal trainer best suited for your individual needs. Each trainer has full personal trainer bios in the center for your convenience.</li>
                                                                </ul>
                                                                <p>OR</p>
                                                                <ul>
                                                                    <li>Using the online personal trainer bios, identify a trainer you’d be interested in working with and schedule an appointment or simply ask for more information. You will receive a response to your inquiry within 24-48 business hours. Click on the appropriate link below to Meet Our Trainers at the Y center nearest you!
                                                                        <ul>
                                                                            <li><a href="../../locations/family-center-ys/catonsville-baltimore-county.aspx">Catonsville Family Center Y </a></li>
                                                                            <li><a href="../../locations/family-center-ys/dancel-howard-county.aspx">Dancel Family Center Y </a></li>
                                                                            <li><a href="../../locations/family-center-ys/druid-hills-baltimore-city.aspx">Druid Hill Family Center Y </a></li>
                                                                            <li><a href="../../locations/family-center-ys/greater-annapolis-anne-arundel-co.aspx">Greater Annapolis Family Center Y </a></li>
                                                                            <li><a href="../../locations/family-center-ys/hill-caroll-county.aspx">Hill Family Center Y </a></li>
                                                                            <li><a href="../../locations/family-center-ys/parkville-baltimore-county.aspx">Parkville Family Center Y </a></li>
                                                                            <li><a href="../../locations/family-center-ys/pery-hall-baltimore-county.aspx">Perry Hall Family Center Y </a></li>
                                                                            <li><a href="../../locations/family-center-ys/orokawa-baltimore-county.aspx">The Orokawa Family Center Y in Towson (formerly Towson Family Center Y) </a></li>
                                                                            <li><a href="../../locations/family-center-ys/ward-harford-county.aspx">Ward Family Center Y </a></li>
                                                                            <li><a href="../../locations/family-center-ys/weinberg-baltimore-city.aspx">Weinberg Family Center Y  </a></li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                                <p>If you have any questions about one-on-one personal training, please call your nearest Family Center Y. </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="personal-training.aspx" onclick='SpecialRedirect("ptoneonone")' class="common-btn btn-velvet"><span class="btn-velvet-border">Learn more about One-on-One Personal Training</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="profiles">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to21" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">SMALL GROUP TRAINING </a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to21">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>Small Group Training classes are available as part of the Y’s regular program sessions. You can sign up online or in person at any Family Center Y during our session registration periods. Y members have priority registration and may sign up for classes up to two-three weeks prior to the start of the session. The general public may register for classes up to one week prior (also called “open registration”).</p>
                                                                <p>2014 SESSION & REGISTRATION DATES</p>
                                                                <table class="table table-striped">
                                                                    <tr>
                                                                        <th>Session</th>
                                                                        <th>Member Registration Begins…</th>
                                                                        <th>Open Registration Begins…</th>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Winter 1/6 – 3/2</td>
                                                                        <td>12/9/13 at 6:00am</td>
                                                                        <td>12/16/13 at 6:00am</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Spring I 3/3 – 4/27</td>
                                                                        <td>2/17/14 at 6:00am</td>
                                                                        <td>2/24/14 at 6:00am</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Spring II 4/28 – 6/22</td>
                                                                        <td>4/14/14 at 6:00am</td>
                                                                        <td>4/21/14 at 6:00am</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Summer 6/23 – 8/17</td>
                                                                        <td>6/9/14 at 6:00am</td>
                                                                        <td>6/16/14 at 6:00am</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Fall I 9/2 – 10/26</td>
                                                                        <td>8/11/14 at 6:00am</td>
                                                                        <td>8/18/14 at 6:00am</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Fall II 10/27 – 12/21</td>
                                                                        <td>10/13/14 at 6:00am</td>
                                                                        <td>10/20/14 at 6:00am</td>
                                                                    </tr>
                                                                </table>
                                                                <p>Note: Dancel Family Center Y members must sign up using an <a href="pdf/Dancel-adusted-reg-schedule.pdf" target="_blank">adjusted registration schedule</a></p>
                                                                <h3 class="title-03">Online Registration</h3>
                                                                <p>If you are a first-time user of online registration, you will need to submit a request to have an online account set-up. This request must be submitted at least 48 business hours prior to the registration begin date. </p>
                                                                <p>To submit your request:</p>
                                                                <ul>
                                                                    <li>STEP 1	   Click the purple REGISTER NOW button</li>
                                                                    <li>STEP 2     Click the green LOGIN button under the Easy to Enroll logo and click the appropriate link under First Time Users</li>
                                                                    <li>STEP 3     Fill in the requested information and click the SUBMIT button. If you have a membership card, you will be asked to type in the access code from the back of your membership. The access number and date of birth must be that of the primary member.</li>
                                                                    <li>STEP 4     Once your request has been processed, you will receive an email.  At that point, you’re free to register online for any available Y program!</li>
                                                                </ul>
                                                                <p>Note: You may search for small group training classes without setting up an online account.</p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="" class="common-btn btn-velvet" data-toggle="modal" data-target=".bs-example-modal-lg"><span class="btn-velvet-border">Register Now</span></a>
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
                                            <div class="panel-title"><a href="#collapse-how-to33" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">FitLinxx Training System </a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to33">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">FitLinxx® Orientation</h3>
                                                                <p>FitLinxx® is the Y’s FREE digital training system that greatly increases your ability to reach your fitness goals. </p>
                                                                <p>FitLinxx® takes the “work” out of working out!</p>
                                                                <ul>
                                                                    <li>Monitors your workouts and tracks your progress</li>
                                                                    <li>Helps you exercise properly and pushes you to reach your fitness goals</li>
                                                                    <li>Provides instant training feedback </li>
                                                                    <li>Tracks activity on strength and cardio machines, group exercise classes, swimming and activities outside of the Y</li>
                                                                    <li>Reminds you of your seat settings, how many repetitions to do, how much weight to use, correct range of motion and more </li>
                                                                </ul>
                                                                <p>To get started with FitLinxx®, you must first set up a FitLinxx® orientation with a trained Y fitness staff member. During your orientation, you will be given a 6-digit FitLinxx® login number and taken through the FitLinxx® machines to set up your exercise plan. FitLinxx® machines include strength and cardio equipment and you have the ability to include group exercise classes, swimming and activities outside of the Y. </p>
                                                                <p>You will be shown how to use the equipment and details such as how much weight to use, number of repetitions, cardio levels and seat settings will be determined and logged into Fitlinxx®. From that point on, you will be reminded of all of this every time you login!</p>
                                                                <%--<p>In order to use Fitlinxx®, you must be a Y member and you must set up a FitLinxx® orientation at a Family Center Y.</p>--%>
                                                                <p><strong>In order to use Fitlinxx®, you must be a Y member and you must call or visit your Family Center Y to schedule a FitLinxx® orientation.</strong></p>
                                                                <h3 class="title-03">FitLinxx® Login</h3>
                                                                <p>One of the many unique features of Fitlinxx® is your ability to login from home to track virtually any activity outside of the Y! </p>
                                                                <a target="_blank" href="https://flxpro.fitlinxx.com/">LOGIN NOW</a>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="../../membership/membership.aspx" onclick="SpecialRedirectPartThree('membershiptypes','tabFamilyCenterYLocations')" class="common-btn btn-velvet"><span class="btn-velvet-border">Set Up a FitLinxx® Orientation at Your Y</span></a>
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
                                            <div class="panel-title"><a href="#collapse-how-to44" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Cancer Exercise Program </a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to44">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Who Can Participate</h3>
                                                                <p>The Y’s Cancer Exercise Program is for patients with all types of cancer at any level of treatment (pre, current, post).</p>
                                                                <h3 class="title-03">How to Get Started</h3>
                                                                <p>Participants must have consent to begin the cancer exercise program and must be referred by their oncologist, physician or physical therapist.</p>
                                                                <p>With clearance from a medical professional, participants will meet with their Y Cancer Exercise Specialist (CES) for a pre-fitness assessment, to review current fitness level, fatigue scale, a quality of life questionnaire and to determine lymphedema risk. </p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="personal-training.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Learn more about the Cancer Exercise Program</span></a>
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

    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                    <h2 id="myLargeModalLabel" class="title-02">Easy to Enroll</h2>
                </div>
                <iframe class="frame" width="880" height="500" src="https://easytoenroll.ymaryland.org"></iframe>
            </div>
        </div>
    </div>
</asp:Content>
