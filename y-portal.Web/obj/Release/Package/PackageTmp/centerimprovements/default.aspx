<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="YPortal.Web.centerimprovements._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderTitle" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .dux-content-area-margin-02 .nav-tabs li a {
            padding-left: 7px;
        }
        .dux-content-area .location-specific .tab-content .nav-tabs li {
    width: 17.8%;
}

        .carousel-inner {
    overflow:hidden !important;
}

        .dux-content-area .side-bar img {
    margin-top: 15px !important;
}
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix ">
        <YContAPI:YDCarouselInfoV2 ID="YDCarouselInfoV21"
            runat="server"
            DataSource="[[:d=at(document.type,'PageContainer')][:d=fulltext(my.PageContainer.ContentGroup,'Center Improvements')]]"
            Order="[my.PageContainer.Title]" />
    </div>

    <div class="dux-content-area dux-content-area-margin-02">
        <div class="location-specific container">
            <div class="row">
                <div class="col-md-12">
                    <div id="ContentPlaceHolder1_tabcontent" class="tab-content">
                        
                        <YContAPI:YDTabControl
                            runat="server"
                            ID="YDTabControl6"
                            ClientControlId="annearundelharfordcounty"
                            isCached="true"
                            ParentGroup="Center Improvements"
                            GroupEntryId="Anne Arundel & Harford County"
                            EntryId="Anne Arundel & Harford County"
                            MenuBased="false" />

                        <YContAPI:YDTabControl
                            runat="server"
                            ID="YDTabControl1"
                            ClientControlId="baltimorecity"
                            isCached="true"
                            ParentGroup="Center Improvements"
                            GroupEntryId="Baltimore City"
                            EntryId="Baltimore City"
                            MenuBased="false" />
                        
                        <YContAPI:YDTabControl
                            runat="server"
                            ID="YDTabControl2"
                            ClientControlId="carrollcounty"
                            isCached="true"
                            ParentGroup="Center Improvements"
                            GroupEntryId="Carroll County"
                            EntryId="Carroll County"
                            MenuBased="false" />
                        
                        <YContAPI:YDTabControl
                            runat="server"
                            ID="YDTabControl3"
                            ClientControlId="northbaltimorecounty"
                            isCached="true"
                            ParentGroup="Center Improvements"
                            GroupEntryId="North Baltimore County"
                            EntryId="North Baltimore County"
                            MenuBased="false" />
                        
                        <YContAPI:YDTabControl
                            runat="server"
                            ID="YDTabControl4"
                            ClientControlId="southbaltimorehowardcounty"
                            isCached="true"
                            ParentGroup="Center Improvements"
                            GroupEntryId="South Baltimore & Howard County"
                            EntryId="South Baltimore & Howard County"
                            MenuBased="false" />
                        
                        <YContAPI:YDTabControl
                            runat="server"
                            ID="YDTabControl5"
                            ClientControlId="yswimcenters"
                            isCached="true"
                            ParentGroup="Center Improvements"
                            GroupEntryId="Y Swim Centers"
                            EntryId="Y Swim Centers"
                            MenuBased="false" />
                        

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
