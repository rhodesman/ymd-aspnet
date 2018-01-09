<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="how-to-enroll.aspx.cs" Inherits="YPortal.Web.programs.preschool.how_to_enroll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators">
                    <li class="active" data-slide-to="0" data-target="#carousel-example-captions"><a href="#preenroll" data-toggle="tab" onclick='SpecialRedirectPartTwo("preenroll")'>
                        <img src="../../App_Style/images/banner/thumbnails/programs/preschool/how-to-enroll.png" />
                        <span>How to Enroll                             
                        </span></a></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/preschool/how-to-enroll.png">
                        <div class="carousel-caption">
                            <p>
                                How to 
                                <br>
                                enroll
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


                        <YContAPI:YDTabControl 
                            runat="server"
                            ID ="preenroll"
                            isCached="true"
                            GroupEntryId ="1WjdAOIT52EkU0KWUGYE2c"
						    EntryId ="1WjdAOIT52EkU0KWUGYE2c"                       
                            Transformation="~/ContentTemplates/XSL/LevelGenericStyle.xslt" 
                            Debug="true" 
                            isActive="true"
                            MenuBased="false" />

                        <!--
                        <div class="tab-pane active" id="preenroll">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#home" data-toggle="tab">Preschool  </a></li>
                                    <li><a href="#profiles" data-toggle="tab">Head Start </a></li>                                                            
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Preschool</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>The first step in the Y Preschool enrollment process is to set up a tour and meet directly with the Preschool Director. </p>
                                                                <p>During the tour, the director will provide you with the critical information you need to determine if Y Preschool is the right fit for your child. You will visit the classrooms, meet the teachers and learn about our daily routines, our curriculum, and our goals and expectations.</p>
                                                                <p>Tours can be scheduled by contacting the Preschool Director via phone or email or submitting an online tour request form.   </p>
                                                                <%--<a href="../../locations/preschool/catonsville-baltimore-county.aspx">Find a Y Preschool Location </a>--%>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                          
                                                                <div class="side-bar">
                                                                <a href="preschools.aspx" class="common-btn btn-velvet" onclick="SpecialRedirectPartThree('prehomes','tabPreschool')"><span class="btn-velvet-border" >Find a Y Preschool and Request a Tour</span></a>
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
                                            <div class="panel-title"><a href="#collapse-how-to1" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Head Start</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to1">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                               <p>To enroll in a Y Baltimore County or Baltimore City Head Start program, contact the Head Start center closest to your home.  Our Family Service Workers will explain the processand arrange a time to meet with you to complete an application. Please be prepared to supply the following documents:</p>
                                                                <ul>
                                                                    <li>an original birth certificate or legal document showing your child’s name and date of birth</li>
                                                                    <li>a record of your child’s immunizations</li>
                                                                    <li>documentation of your child’s latest physical</li>
                                                                    <li>proof of residency (phone bill, BGE, etc.)</li>
                                                                    <li>proof of family household income</li>
                                                                    <li>IFSP or IEP if your child has one</li>
                                                                    <li>other documents a Family Service Worker may request</li>

                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                               <div class="side-bar">
                                                                <a href="preschools.aspx" class="common-btn btn-velvet" onclick="SpecialRedirectPartThree('prehead','tavOverview')"><span class="btn-velvet-border">Head Start Information and Locations</span></a>
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

                        -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
