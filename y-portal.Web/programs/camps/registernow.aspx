<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="registernow.aspx.cs" Inherits="YPortal.Web.programs.camps.registernow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators">
                    <li class="active" data-slide-to="0" data-target="#carousel-example-captions"><a href="#campsregistration" data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/camps/register-now.png" />
                        <span>Register Now 
                        </span></a></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/camps/register-now.png">
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
                        <div class="tab-pane active" id="campsregistration">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#home" data-toggle="tab">ONLINE REGISTRATION TIPS </a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">ONLINE REGISTRATION TIPS</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Things to Know Before Registering</h3>
                                                                <p>(If you already know, click the REGISTER NOW button to get started.)</p>
                                                                <p><b>Please read before registering to ensure the smoothest online registration experience!</b></p>
                                                                <p>Registration for Y Camp is ONLY AVAILABLE ONLINE. Discounts and sibling discounts are now available online as well. Sign up early as space is limited and enrollment is on a first-come, first-served basis. All registrations must be accompanied by applicable deposits and forms. If you need assistance with your online registration, please contact your nearest Y center. Y front desk staff is available to answer any questions. Anyone with special financial considerations must contact Y Customer Billing at <a href="mailTo:billing@ymaryland.org">billing@ymaryland.org</a> or call 443-322-8000 for help.</p>
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
                                                                    <p><i>In order to qualify for member rates, the child you are registering must be a member at the time of registration and remain a member throughout all clinic sessions. For family membership holders, the membership must be in the name of the parent/guardian registering the child. If a membership is purchased after registration, the member rate cannot be applied. </i></p>

                                                                </ul>
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
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
