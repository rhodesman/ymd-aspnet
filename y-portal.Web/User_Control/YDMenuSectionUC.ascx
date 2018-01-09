<%@ Control Language="C#"
    AutoEventWireup="true"
    CodeBehind="YDMenuSectionUC.ascx.cs"
    Inherits="YPortal.Web.User_Control.YDMenuSectionUC" %>


<asp:Repeater ID="rptMenuList" runat="server" OnItemDataBound="OnItemDataBound_rptMenuList">
    <ItemTemplate>
        <li id="ListItem" runat="server">
            <a id="ancMenuHref" runat="server" href="" target="_self">
                <asp:Literal ID="ltlMenuText" runat="server" />
            </a>
        </li>
    </ItemTemplate>
</asp:Repeater>
