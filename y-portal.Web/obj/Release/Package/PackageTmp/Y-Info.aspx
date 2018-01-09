<%@ Page Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="Y-Info.aspx.cs" Inherits="YPortal.Web.Y_Info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix ">             
        <YContAPI:YDCarouselInfoV2 ID ="YCarouselV21" runat="server" />
    </div>
    
    <div class="dux-content-area  dux-content-area-margin-02">
        <div class="location-specific container">
            <div class="row">
                <div class="col-md-12">
                    <div id="tabcontent" class="tab-content" runat="server"/>                       
                </div>
            </div>
        </div>
    </div>
</asp:Content>
