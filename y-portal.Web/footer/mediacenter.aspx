<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="mediacenter.aspx.cs" Inherits="YPortal.Web.footer.media_center" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">

                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="/App_Style/images/banner/footer/MediaCenter.png">
                        <div class="carousel-caption">
                            <p>
                                Making headlines
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
                            GroupEntryId="Media Center"
                            EntryId="Media Center"
                            MenuBased="false" />

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
