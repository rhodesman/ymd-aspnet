<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="register-now.aspx.cs" Inherits="YPortal.Web.programs.swim.register_now" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators">
                    <li class="active" data-slide-to="0" data-target="#carousel-example-captions"><a href="#swimregistration" onclick='SpecialRedirectPartTwo("swimregistration")' data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/swim/register-now.png" />
                        <span>Register Now                             
                        </span></a></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/swim/register-now.png">
                        <div class="carousel-caption">
                            <p>
                                How to  
                                    <br>
                                register
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
                        <div class="tab-pane active" id="swimregistration">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#home" data-toggle="tab">SWIM LESSONS & WATER EXERCISE </a></li>
                                    <li><a href="#profiles" data-toggle="tab">SWIM CLINICS </a></li>
                                    <li><a href="#messages" data-toggle="tab">SWIM TEAMS </a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">SWIM LESSONS & WATER EXERCISE </a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Things to Know Before Registering</h3>
                                                                <p>(If you already know, click the REGISTER NOW button to get started.)</p>
                                                                <h3 class="title-03">Sessions</h3>
                                                                <p>Registration for swim lessons and water exercise classes are available online or in person at any Family Center Y. </p>
                                                                <p>Programs are offered in six, seven-week sessions throughout the year. An eighth week is available for make-up classes only. Classes that are cancelled due to inclement weather are not made up. </p>
                                                                <p>As a member benefit, Y members have priority registration and may sign up for classes up to two-three weeks prior to the start of the session. The general public may register for classes up to one week prior (also called “open registration”).</p>
                                                                <p><strong>2014 SESSION & REGISTRATION DATES</strong></p>
                                                                <table class="table table-striped">
                                                                    <tr>
                                                                        <th>Session
                                                                        </th>
                                                                        <th>Member Registration Begins…
                                                                        </th>
                                                                        <th>Open Registration Begins…
                                                                        </th>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Winter 1/6 – 3/2
                                                                        </td>
                                                                        <td>12/9/13 at 6:00am
                                                                        </td>
                                                                        <td>12/16/13 at 6:00am
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Spring I 3/3 – 4/27
                                                                        </td>
                                                                        <td>2/17/14 at 6:00am
                                                                        </td>
                                                                        <td>2/24/14 at 6:00am
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Spring II 4/28 – 6/22
                                                                        </td>
                                                                        <td>4/14/14 at 6:00am
                                                                        </td>
                                                                        <td>4/21/14 at 6:00am
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Summer 6/23 – 8/17
                                                                        </td>
                                                                        <td>6/9/14 at 6:00am
                                                                        </td>
                                                                        <td>6/16/14 at 6:00am
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Fall I 9/2 – 10/26
                                                                        </td>
                                                                        <td>8/11/14 at 6:00am
                                                                        </td>
                                                                        <td>8/18/14 at 6:00am
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Fall II 10/27 – 12/21
                                                                        </td>
                                                                        <td>10/13/14 at 6:00am
                                                                        </td>
                                                                        <td>10/20/14 at 6:00am
                                                                        </td>
                                                                    </tr>
                                                                </table>

                                                                <p>Note: Dancel Family Center Y members must sign up using an <a target="_blank" href="pdf/Dancel-adusted-reg-schedule.pdf">adjusted registration schedule. </a></p>

                                                                <h3 class="title-03">Online Registration</h3>
                                                                <p>If you are a first-time user of online registration, you will need to submit a request to have an online account set-up. This request must be submitted at least 48 business hours prior to the registration begin date. </p>
                                                                <p>To submit your request:</p>
                                                                <ul>
                                                                    <li>STEP 1	   Click the purple REGISTER NOW button</li>
                                                                    <li>STEP 2     Click the green LOGIN button under the Easy to Enroll logo and click the appropriate link under First Time Users</li>
                                                                    <li>STEP 3     Fill in the requested information and click the SUBMIT button. If you have a membership card, you will be asked to type in the access code from the back of your membership. The access number and date of birth must be that of the primary member.</li>
                                                                    <li>STEP 4     Once your request has been processed, you will receive an email.  At that point, you’re free to register online for any available Y program!</li>
                                                                </ul>
                                                                <p>Note: You may search for Y classes without setting up an online account.</p>

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
                                    <div class="tab-pane " id="profiles">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to1" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">SWIM CLINICS</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to1">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Things to Know Before Registering</h3>
                                                                <p>(If you already know, click the REGISTER NOW button to get started.)</p>
                                                                <p><b>Please read before registering to ensure the smoothest online registration experience!</b></p>
                                                                <p>Registration for summer swim clinics is ONLY AVAILABLE ONLINE. Discounts are now available online as well. Sign up early as space is limited and enrollment is on a first-come, first-served basis. All registrations must be accompanied by applicable deposits and forms. If you need assistance with your online registration, please contact your nearest Y center. Y front desk staff is available to answer any questions. Anyone with special financial considerations must contact Y Customer Billing at <a href="mailTo:billing@ymaryland.orgor">billing@ymaryland.orgor </a>call 443-322-8000 for help.</p>
                                                                <p><b>BEFORE LOGGING ON TO REGISTER</b></p>
                                                                <ul>
                                                                    <li>Confirm your account by clicking the link within the confirmation email sent from "Billing" to the address provided (check your Spam folder if you do not see the email right away).</li>
                                                                    <li>Have all emergency contact and medical/allergy information ready, including the date of your child's last tetanus shot (use 1st of the month if the day is not known). </li>
                                                                    <li>If you are a Y member, have your membership keytag handy to enter the access number. Only a parent or legal guardian of the child can register for camp and must have an active family membership to qualify for the family rates.</li>
                                                                </ul>
                                                                <p><b>DURING REGISTRATION</b></p>
                                                                <ul>
                                                                    <li>Register and pay for ONE WEEK FIRST per child to save your child's medical information and prevent having to enter it for each week separately. </li>
                                                                    <li>To take advantage of our sibling discount, complete the registration process for all children at one time for each week separately. The sibling discount will automatically be deducted and show up on your receipt. </li>
                                                                    <li>To take advantage of our payment plan and only pay a $25 (half-day clinics) or $50 (full-day clinics) deposit at time of registration, be sure to click "Payment Plan" BEFORE proceeding to the Shopping Cart.</li>
                                                                </ul>
                                                                <p>
                                                                    <i>In order to qualify for member rates, the child you are registering must be a member at the time of registration and remain a member throughout all clinic sessions. For family membership holders, the membership must be in the name of the parent/guardian registering the child. If a membership is purchased after registration, the member rate cannot be applied. 
                                                                    </i>

                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="https://apm.activecommunities.com/ymaryland" target="_blank" class="common-btn btn-velvet"><span class="btn-velvet-border">Register Now</span></a>
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
                                            <div class="panel-title"><a href="#collapse-how-to2" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">SWIM TEAMS</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to2">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>Most of our swim teams maintain a wait list of youth interested in joining. When openings on the team are available, coaches pull from the wait list to evaluate swimmers and/or hold tryouts. This is done during the summer months. </p>
                                                                <p>To find out if a participating Y center is holding evaluations or tryouts, call or email using the information below.</p>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <td>Catonsville Family Center  Y</td>
                                                                        <td>410-747-9622, <a href="mailTo:catyswimteam@ymaryland.org">catyswimteam@ymaryland.org</a></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Dancel Family Center Y</td>
                                                                        <td>410-465-4334, <a href="mailTo:adamrutz@ymaryland.org">adamrutz@ymaryland.org </a></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Hill Family Center Y</td>
                                                                        <td>410-848-3660, <a href="mailTo:ccyswimteam@gmail.com">ccyswimteam@gmail.com </a></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>The Orokawa Family Center Y in Towson (formerly Towson Family Center Y)</td>
                                                                        <td>410-823-8870, <a href="mailTo:towsonyswimteam@gmail.com">towsonyswimteam@gmail.com </a></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Ward Family Center Y</td>
                                                                        <td>410-679-9622, <a href="mailTo:philipsconzert@ymaryland.org">philipsconzert@ymaryland.org </a></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Y Swim Center in Randallstown</td>
                                                                        <td>410-496-4272, <a href="mailTo:samuelburrell@ymaryland.org">samuelburrell@ymaryland.org</a></td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="swim.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">View Swim Lessons</span></a>
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




    <%--<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                    <h2 id="myLargeModalLabel" class="title-02">Easy to Enroll</h2>
                </div>
                <iframe class="frame" width="880" height="500" src="https://easytoenroll.ymaryland.org"></iframe>
            </div>
        </div>
    </div>--%>
</asp:Content>
