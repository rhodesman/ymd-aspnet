<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="volunteer.aspx.cs" Inherits="YPortal.Web.our_mission.volunteer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators mobile-margin-fix">
                    <li class="" data-slide-to="0" data-target="#carousel-example-captions"><a href="#homes" data-toggle="tab">
                        <img src="../App_Style/images/banner/inner-page-banner/indicator-01.png" />
                        <span>VOLUNTEER                             
                        </span></a></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../App_Style/images/banner/our-mission/volunteering.png">
                        <div class="carousel-caption">
                            <p>
                                Be a member of 
                                    <br>
                                something bigger
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
                        <div class="tab-pane active" id="homes">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#home" data-toggle="tab">Volunteer with Us </a></li>                                    
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Volunteer with Us</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>The Y is a charitable mission-driven organization dedicated to social responsibility and community building. Volunteers are critical to our mission and central to all we do. There are many ways to get involved with the Y. </p>
                                                                <h3 class="title-03">Community Leadership Board</h3>
                                                                <p>The community we serve is supported by a volunteer board known as a Community Leadership Board (CLB). CLB members' primary responsibility is to raise funds to support the Y's Annual Giving campaign which provides financial assistance to children and families in need so they may benefit from quality Y experiences they otherwise could not afford such as Y camp, preschool, before & afterschool enrichment and membership. </p>
                                                                <h3 class="title-03">Mentoring</h3>
                                                                <p>The Y's Reach and Rise mentoring program is in need of positive, responsible adults who want to volunteer their time to make a difference in a young person's life. Just two hours a week is all it takes. Learn more <a href="mentoring.aspx"> here</a>.</p>
                                                                <h3 class="title-03">Special Event Volunteer</h3>
                                                                <p>Our premier fundraising event is the Y's Annual Turkey Trot Charity 5K. Held on Thanksgiving morning, this fundraising event depends on volunteers to help make it a success. Learn more <a href="http://yturkeytrots.blogspot.com/p/our-cause.html"> here </a> </p>
                                                                <h3 class="title-03">Program Volunteer</h3>
                                                                <p>You have special talents; why not share them! Volunteer to coach a sports team. Help us run our drop-in workshops. Volunteer at our Y Healthy Kids Day or in a variety of other ways, depending on your time and interests.</p>
                                                                <h3 class="title-03">Corporate Volunteer </h3>
                                                                <p>Corporate volunteer activities are also available and can be tailored to meet the interests of the group. Please contact Jeff Sprinkle at 443-322-8014 or jeffsprinkle@ymaryland.org.</p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                             <div class="side-bar">
                                                                <a href="" class="common-btn btn-velvet"><span class="btn-velvet-border">Get Started Today</span></a>
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
