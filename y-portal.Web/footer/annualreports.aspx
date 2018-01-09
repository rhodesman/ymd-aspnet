<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="annualreports.aspx.cs" Inherits="YPortal.Web.our_mission.annual_reports" %>
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
                        <YContAPI:YDTabControl
                            runat="server"
                            ID ="annualreports1"
                            isCached="true"
                            GroupEntryId ="Annual Reports"
						    EntryId ="Annual Reports"
                            MenuBased="false"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
