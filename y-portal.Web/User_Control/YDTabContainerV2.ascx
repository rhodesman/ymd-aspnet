<%@ Control Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="YDTabContainerV2.ascx.cs" 
    Inherits="YPortal.Web.User_Control.YDTabContainerV2" %>

<%@ Register Src="YDTabControlV2.ascx" TagName="YDTabControlV2" TagPrefix="uc1" %>

<div class="short container">
    <div class="row">
        <div class="col-md-12">
            <div class="tab-content">
                <!-- BEGIN TAB CONTROL -->
                <asp:Repeater ID="rptTabControls" runat="server" OnItemDataBound="OnItemDataBound_rptTabControls">
                    <ItemTemplate>
                        <uc1:YDTabControlV2 ID="foo" runat="server" />

                    </ItemTemplate>
                </asp:Repeater>



                <!-- END TAB CONTROL -->
                </div>
        </div>
    </div>
</div>
