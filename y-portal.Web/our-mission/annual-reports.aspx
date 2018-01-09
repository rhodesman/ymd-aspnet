<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="annual-reports.aspx.cs" Inherits="YPortal.Web.our_mission.annual_reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators mobile-margin-fix">
                    <li class="active" data-slide-to="0" data-target="#carousel-example-captions"><a href="#ourmissionannualreport" onclick='SpecialRedirectPartTwo("ourmissionannualreport")' data-toggle="tab">
                        <img src="../App_Style/images/banner/thumbnails/our-mission/cause.png" />
                        <span>Annual Reports
                        </span></a></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../App_Style/images/banner/our-mission/cause.png">
                        <div class="carousel-caption">
                            <p>
                             

                                Youth development. Healthy living. Social responsibility.
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
                        <div class="tab-pane active" id="ourmissionannualreport">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#home" data-toggle="tab">A Year in Review </a></li>
                                    <li><a href="#profiles" data-toggle="tab">Past Years</a></li>
                                   
                                    
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">A Year in Review </a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>Our Annual Reports strive to take 365 days of hard work and neatly condense them into a 10 - 12 page document. While our Annual Reports can never give the full picture of our efforts, they are a true depiction of our focus on families and communities. We invite you to see what we’ve been up to lately!</p>
                                                                <a target="_blank" href="https://flipflashpages.uniflip.com/3/26095/331046/pub/">Annual Report 2013</a>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                           
                                                              <div class="side-bar">
                                                                <a href="our-mission.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("ourmissioncause")'><span class="btn-velvet-border">Learn More About the Y's Mission</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="profiles">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to1" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class ">Past Years</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to1">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                               <ul>
                                                                   <%--<li><a target="_blank" href="https://flipflashpages.uniflip.com/3/26095/331046/pub/">Annual Report 2013</a></li>--%>
                                                                   <li><a target="_blank" href="pdf/OUR-MISSION-Cause-Annual-Report-2012.pdf">Annual Report 2012</a></li>
                                                                   <li><a target="_blank" href="pdf/OUR-MISSION-Cause-Annual-Report-2011.pdf">Annual Report 2011</a></li>
                                                                   <li><a target="_blank" href="pdf/OUR-MISSION-Cause-Annual-Report-2010.pdf">Annual Report 2010</a></li>
                                                                   <li><a target="_blank" href="pdf/OUR-MISSION-Cause-Annual Report-2009.pdf">Annual Report 2009</a></li>
                                                                   <li><a target="_blank" href="pdf/OUR-MISSION-Cause-Annual-Report-2008.pdf">Annual Report 2008</a></li>
                                                                   <li><a target="_blank" href="pdf/OUR-MISSION-Cause-Annual-Report-2007.pdf">Annual Report 2007</a></li>
                                                                   <li><a target="_blank" href="pdf/OUR-MISSION-Cause-Annual-Report-2006.pdf">Annual Report 2006</a></li>
                                                                   <li><a target="_blank" href="pdf/OUR-MISSION-Cause-Annual-Report-2005.pdf">Annual Report 2005</a></li>
                                                                   <li><a target="_blank" href="pdf/OUR-MISSION-Cause-Annual-Report-2004.pdf">Annual Report 2004</a></li>
                                                                   <li><a target="_blank" href="pdf/OUR-MISSION-Cause-Annual-Report-2003.pdf">Annual Report 2003</a></li>
                                                               </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                              <div class="side-bar">
                                                                <a href="our-mission.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("ourmissioncause")'><span class="btn-velvet-border">Learn More About the Y's Mission</span></a>
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
