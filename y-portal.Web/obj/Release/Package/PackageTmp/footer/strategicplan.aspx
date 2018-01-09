<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="strategicplan.aspx.cs" Inherits="YPortal.Web.our_mission.strategic_plan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators mobile-margin-fix">
                    <li class="active" data-slide-to="0" data-target="#carousel-example-captions"><a href="#ourmissionstrategicplan" onclick='SpecialRedirectPartTwo("ourmissionstrategicplan")' data-toggle="tab">
                        <img src="../App_Style/images/banner/thumbnails/our-mission/cause.png" />
                        <span>STRATEGIC PLAN
                        </span></a></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../App_Style/images/banner/our-mission/cause.png">
                        <div class="carousel-caption">
                            <p>
                                Our vision 
                                    <br>
                                for the future
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
                            ID="mediacenter1"
                            isCached="true"
                            GroupEntryId="Strategic Plan"
                            EntryId="Strategic Plan"
                            MenuBased="false" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
