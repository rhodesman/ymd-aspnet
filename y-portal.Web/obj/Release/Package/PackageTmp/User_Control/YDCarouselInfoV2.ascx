<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="YDCarouselInfoV2.ascx.cs" Inherits="YPortal.Web.User_Control.YDCarouselInfoV2" %>

<div class="custom-container mobile-view-fix">
    <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example">

        <ol class="carousel-indicators mobile-margin-fix" id="ThumbsContainer" runat="server">
            <asp:Repeater ID="rptCarouselThumbs" runat="server" OnItemDataBound="OnItemDataBound_rptCarouselThumbs">
                <ItemTemplate>
                    <li data-target="#carousel-example" id="ThubmListItem" runat="server">
                        <asp:HyperLink ID="ancThumb" runat="server" data-toggle="tab">
                            <asp:Image ID="imgThumb" runat="server" />
                            <span>
                                <asp:Literal ID="ltlTumbLabel" runat="server" />
                            </span>
                        </asp:HyperLink>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ol>

        <div class="carousel-title" id="Title_Panel" runat="server">
            <asp:Literal ID="ltlCarouselLabel" runat="server" />
        </div>

        <div class="carousel-inner">
            <asp:Repeater ID="rptCarouselCover" runat="server" OnItemDataBound="OnItemDataBound_rptCarouselCover">
                <ItemTemplate>
                    <div id="coverPanel" runat="server">
                        <asp:Image ID="imgCover" runat="server" data-src="holder.js/900x500/auto/#777:#777" />
                        <div class="carousel-caption" runat="server" ID="divCarouselCaption" ClientIDMode="Static">
                            <p>
                                <asp:Literal ID="ltlLgLabel" runat="server" />
                            </p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

    </div>
</div>
