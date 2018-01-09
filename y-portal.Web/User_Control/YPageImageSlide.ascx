<%@ Control Language="C#" AutoEventWireup="true"
    CodeBehind="YPageImageSlide.ascx.cs"
    Inherits="YPortal.Web.Controls.YPageImageSlide" %>

    <div data-ride="carousel" data-interval="4000" class="carousel slide main-slider" id="carousel-example-captions">
        <div class="carousel-inner">            
             <asp:Repeater ID="rptImageList" runat="server" OnItemDataBound="OnItemDataBound_rptImageList">
                 <ItemTemplate>
                     <div id="ImagePanel" runat="server">
                         <asp:Image ID="imgCover" runat="server" data-src="holder.js/900x500/auto/#777:#777" />
                     </div>
                 </ItemTemplate>
             </asp:Repeater>
        </div>
    </div>