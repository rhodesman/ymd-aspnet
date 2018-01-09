<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="how-to-become-a-member.aspx.cs" Inherits="YPortal.Web.membership.how_to_become_a_member" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators">
                    <li class="active" data-slide-to="0" data-target="#carousel-example-captions"><a href="#membershiphowtobecomeamember" onclick='SpecialRedirectPartTwo("membershiphowtobecomeamember")' data-toggle="tab">
                        <img src="../App_Style/images/banner/thumbnails/membership/how-to-become-a-member.png" />
                        <span>HOW TO BECOME A MEMBER                       
                        </span></a></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../App_Style/images/banner/membership/how-to-become-a-member.png">
                        <div class="carousel-caption">
                            <p>
                                How to become
                                    <br>
                                a member
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
                        <div class="tab-pane active" id="membershiphowtobecomeamember">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#home" data-toggle="tab">FOUR EASY STEPS </a></li>
                                    <%--<li><a href="#profiles" data-toggle="tab">Calculate Costs </a></li>--%>
                                    <li><a href="#camps" data-toggle="tab">New Member Handbook </a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">FOUR EASY STEPS </a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>To become a Y member, you must sign-up in person at a Family Center Y location.</p>
                                                                <p>STEP 1	Choose your <a href="membership.aspx" onclick='SpecialRedirectPartTwo("membershiptypes")'>membership type</a></p>
                                                                <p>STEP 2	Choose your membership plan </p>
                                                                <ul>
                                                                    <li>CONTINUOUS Preferred among Y Members
                                                                        <br />
                                                                        Monthly payments are automatically drafted from your credit card <i>(recommended for faster processing),</i> checking or savingsaccount on the 1st or 15th of every month – you choose the date. Pay for your membership month-by-month!</li>
                                                                    <li>ANNUAL 
                                                                    <br />
                                                                        Payment for a one-year Y membership is made up front at the time you join. Memberships are renewed on an annual basis.
                                                                    </li>
                                                                </ul>
                                                                <p>
                                                                    STEP 3	Complete a <a target="_blank" href="pdf/MEMBERSHIP-How-to-Become-a-Member-Registration-Form.pdf">Membership Registration Form</a>. Feel free to print and complete it now and bring it with you when you come in to join. 

                                                                </p>
                                                                <p>
                                                                    STEP 4 	Go to your nearest Family Center Y and join today!  Be sure to bring a valid Driver’s license/ID and one of the following:
                                                                </p>
                                                                <ul>
                                                                    <li>A valid credit card to set up an automaticbank draft from your credit card account</li>
                                                                    <li>A voided or cancelled check to set up an automatic bank draft from your checking account</li>
                                                                    <li>A bank deposit slip to set up an automatic bank draft from you savings account</li>
                                                                </ul>

                                                            </div>

                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="../membership/membership.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Sign up at any Family Center Y</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%--<div class="tab-pane " id="profiles">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to1" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Calculate Costs</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to1">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            
                                                            <div class="main-body">
                                                                <p>When you join the Y and choose to pay for your membership on a monthly basis through an automatic bank draft, you have the option of choosing which day your draft takes place; either the 1st or 15th of the month.  </p>
                                                                <p>At the time of sign up, you’ll pay the cost that covers your membership from the date you join to the date of your first bank draft. This cost varies daily depending on your join date, bank draft date, membership typeand automatic bank draft method of payment (credit card, checking or savings account). </p>
                                                                <h3 class="title-03">Calculate your approximate cost now!</h3>
                                                                <p>This tool is intended to give you an idea of what your approximate cost will be. It is in no way a quote or estimate for your membership. The final cost will always be determined at a Family Center Y. Monthly dues still apply as does the $99 one-time joining fee (not valid on youth or young adult memberships).  During promotions, the joining fee may be fully or partially waived. </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            

                                                             <div class="side-bar">
                                                                <a href="" class="common-btn btn-velvet"><span class="btn-velvet-border">Sign up at any Family Center Y</span></a>
                                                                <img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>--%>
                                    <div class="tab-pane " id="camps">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to2" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">New Member Handbook </a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to2">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>The <a target="_blank" href="pdf/MEMBERSHIP-How-to-Become-a-Member-New-Member-Handbook.pdf">New Member Handbook</a> provides important information you need to know as a Y member. By becoming a Y member, you agree to read this handbook in its entirety and comply with all policies and procedures stated within.</p>
                                                                <%--<a target="_blank" href="pdf/MEMBERSHIP-How-to-Become-a-Member-New-Member-Handbook.pdf">Download It Now </a>--%>
                                                                <p>If at any time during your membership, you wish to add or remove family members, changer your membership type, change your banking information, etc. you will need to submit a <a href="pdf/MEMBERSHIP-How-to-Become-a-Member-Change-in-Membership-Form.pdf">Membership Change Form</a>.</p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="../membership/membership.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Sign up at any Family Center Y</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
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
