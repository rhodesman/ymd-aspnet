<%@ Page Language="C#" MasterPageFile="~/App_Resources/default.Master"
     AutoEventWireup="true" CodeBehind="Y-Bio.aspx.cs" Inherits="YPortal.Web.Y_Bio" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <YContAPI:YDCarouselInfoV2 ID="YDCarouselInfoV21"
            runat="server"
            DataSource="[[:d=at(document.type,'PageContainer')][:d=fulltext(my.PageContainer.ContentGroup,'Bio Pages')]]" />
    </div>

    <div class="dux-content-area dux-content-area-margin-02">
        <div class="location-specific container ">
            <div class="row">
                <div class="col-md-12">
                    <div id="ContentPlaceHolder1_tabcontent" class="tab-content">

                        <YContAPI:YDTabControl
                            runat="server"
                            ID="bioTab1"
                            ClientControlId="bioTab1"
                            isCached="true"                                                        
                            MenuBased="false" />


                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
