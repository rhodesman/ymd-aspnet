<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="YPortal.Web.monarchglobal._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <YContAPI:YDCarouselInfoV2 ID="YDCarouselInfoV21"
            runat="server"
            DataSource="[[:d=at(document.type,'PageContainer')][:d=fulltext(my.PageContainer.ContentGroup,'Monarch Global')]]"
            Order="[my.PageContainer.DisplayOrder]" />
    </div>
    <div class="dux-content-area dux-content-area-margin-02">
        <div class="location-specific container">
            <div class="row">
                <div class="col-md-12">
                    <div class="tab-content">

                        <YContAPI:YDTabControl
                            runat="server"
                            ID="monarchglobal1"
                            ClientControlId="monarchglobal"
                            isCached="true"
                            GroupEntryId="Monarch Global"
                            EntryId="Monarch Global"
                            MenuBased="false" />

                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script type="text/javascript">
        $(function () {
            $('#carousel-example ol').css('display', 'none');
        });
    </script>

</asp:Content>
