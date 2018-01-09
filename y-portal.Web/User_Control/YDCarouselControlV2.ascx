<%@ Control Language="C#"
    AutoEventWireup="true"
    CodeBehind="YDCarouselControlV2.ascx.cs"
    Inherits="YPortal.Web.User_Control.YDCarouselControlV2" %>

<div data-ride="carousel" data-interval="4000" class="carousel slide main-slider" id="carousel-example-captions">
    <div class="carousel-inner">
        <asp:Repeater ID="rptCarouselContent" runat="server" OnItemDataBound="OnItemDataBound_rptCarouselContent">
            <ItemTemplate>
                <div id="TemplatePanel" runat="server">
                    <asp:Image ID="imgCover" runat="server" data-src="holder.js/900x500/auto/#777:#777" />
                    <div class="carousel-caption">
                        <p>
                            <asp:Literal ID="ltlCarouselLabel" runat="server" />
                        </p>
                        <div class="btn-group">
                            <asp:HyperLink ID="ancActionBtn" runat="server"  CssClass="common-btn btn-velvet">
                                <span class="btn-velvet-border">
                                    <asp:Literal ID="ltlActionBtnText" runat="server" /></span>
                            </asp:HyperLink>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
