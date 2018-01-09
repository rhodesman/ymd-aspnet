<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="leadership.aspx.cs" Inherits="YPortal.Web.footer.leadership" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <YContAPI:YDCarouselInfoV2 ID="YDCarouselInfoV21"
            runat="server"
            DataSource="[[:d=at(document.type,'PageContainer')][:d=fulltext(my.PageContainer.ContentGroup,'Leadership')]]"
            Order="[my.PageContainer.DisplayOrder]" />
    </div>

    <div class="dux-content-area dux-content-area-margin-02">
        <div class="location-specific container ">
            <div class="row">
                <div class="col-md-12">
                    <div id="ContentPlaceHolder1_tabcontent" class="tab-content">

                        <YContAPI:YDTabControl
                            runat="server"
                            ID="boardofdirectors1"
                            ClientControlId="boardofdirectors"
                            isCached="true"
                            GroupEntryId="Board of Directors"
                            EntryId="Board of Directors"
                            MenuBased="false" />


                        <YContAPI:YDTabControl
                            runat="server"
                            ID="leadership1"
                            ClientControlId="communityleadershipboards"
                            isCached="true"
                            GroupEntryId="Community Leadership Boards"
                            EntryId="Community Leadership Boards"
                            MenuBased="true" />

                        <YContAPI:YDTabControl
                            runat="server"
                            ID="leadership_board1"
                            ClientControlId="executiveoperatingteam"
                            isCached="true"
                            GroupEntryId="Executive Operating Team"
                            EntryId="Executive Operating Team"
                            MenuBased="false" />

                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="/footer/leadership.js"></script>
</asp:Content>
