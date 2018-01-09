<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="volunteer-content.aspx.cs" Inherits="YPortal.Web.footer.volunteer_content" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderTitle" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="dux-show-case clearfix">
        <YContAPI:YDCarouselInfoV2 ID="YDCarouselInfoV21"
            runat="server"
            DataSource="[[:d=at(document.type,'PageContainer')][:d=fulltext(my.PageContainer.ContentGroup,'Volunteer Log-In')]]"
            Order="[my.PageContainer.DisplayOrder]" />
    </div>

    <div class="dux-content-area dux-content-area-margin-02">
        <div class="location-specific container ">
            <div class="row">
                <div class="col-md-12">
                    <div id="ContentPlaceHolder1_tabcontent" class="tab-content">

                        <YContAPI:YDTabControl
                            runat="server"
                            ID="YDTabControl1"
                            isCached="false"
                            ClientControlId="generalinformation"
                            ParentGroup="Volunteer Log-In"
                            GroupEntryId="General Information"
                            EntryId="General Information"
                            MenuBased="false" />

                        <YContAPI:YDTabControl
                            runat="server"
                            ID="YDTabControl2"
                            isCached="false"
                            ClientControlId="yheadstart"
                            ParentGroup="Volunteer Log-In"
                            GroupEntryId="Y Head Start"
                            EntryId="Y Head Start"
                            MenuBased="false" />

                        <YContAPI:YDTabControl
                            runat="server"
                            ID="YDTabControl3"
                            isCached="false"
                            ClientControlId="communityleadershipboards"
                            ParentGroup="Volunteer Log-In"
                            GroupEntryId="Community Leadership Boards"
                            EntryId="Community Leadership Boards"
                            MenuBased="false" />

                        <YContAPI:YDTabControl
                            runat="server"
                            ID="YDTabControl4"
                            isCached="false"
                            ClientControlId="associationboardcommittees"
                            ParentGroup="Volunteer Log-In"
                            GroupEntryId="Association Board & Committees"
                            EntryId="Association Board & Committees"
                            MenuBased="false" />

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
