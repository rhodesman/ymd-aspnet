<%@ Page Language="C#" MasterPageFile="~/App_Resources/default.Master"
    AutoEventWireup="true" CodeBehind="Y-Schedule-Print-Friendly.aspx.cs" Inherits="YPortal.Web.YSchedulePrintFriendly" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <input type="hidden" ID="targetDate" runat="server" clientidmode="Static"/>
    <input type="hidden" ID="mode" runat="server" clientidmode="Static"/>
    <input type="hidden" ID="selInterest" runat="server" clientidmode="Static"/>
    <input type="hidden" ID="selClass" runat="server" clientidmode="Static"/>
    <input type="hidden" ID="selLocation" runat="server" clientidmode="Static"/>
    <div class="container-fluid">
        <div class="col-sm-offset-1 col-sm-10">
            <div id="printHeader" class="col-sm-12">
                <img id="headerLogo" src="/App_Style/images/branding/y-of-central-md.png" 
                    alt="Y of Maryland logo" class=""/>
                <div id="headerBlurb">
                    <h3>The Y's Activity Schedule</h3>
                    <p>Please note that all activities are subject to change due to weather and other extenuating circumstances.</p>
                    <div id="filters">
                        <span id="dateFilter"><asp:Literal ID="dateVal" runat="server"/></span> | <span id="locationFilter"><asp:Literal ID="locationVal" runat="server"/></span> | <span id="interestFilter"><asp:Literal ID="interestVal" runat="server"/></span> | <span id="classFilter"><asp:Literal runat="server" ID="classVal"></asp:Literal></span>
                    </div>
                </div>
            </div>
        </div>
        <asp:Panel ID="schedView" runat="server" CssClass="col-sm-offset-1 col-sm-10" ClientIDMode="Static">
            <asp:Repeater ID="locationsRepeater" runat="server" OnItemDataBound="locationRepeater_ItemDataBound">
                <ItemTemplate>
                    <h3 id="locationHeader" class="col-sm-12"><asp:Literal ID="locationName" runat="server"/></h3>
                    <asp:Repeater ID="daysRepeater" runat="server" OnItemDataBound="daysRepeater_ItemDataBound">
                        <ItemTemplate>
                            <h4 ID="dayNameWrapper" runat="server" class="col-sm-12"><asp:Literal ID="dayName" runat="server"/></h4>
                            <table>
                                <thead>
                                    <tr>
                                        <th>activity title</th>
                                        <th>event time(s)</th>
                                        <th>room</th>
                                        <th>activity level</th>
                                        <th>instructor</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="eventsRepeater" runat="server" OnItemDataBound="eventsRepeater_ItemDataBound">
                                        <ItemTemplate>
                                            <tr>
                                                <td runat="server" ID="titleTd"><%# Eval("Title") %></td>
                                                <td><%# Eval("Times") %></td>
                                                <td><%# Eval("Room") %></td>
                                                <td><%# Eval("ActivityLevel") %></td>
                                                <td><%# Eval("Instructor") %></td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table>
                        </ItemTemplate>
                    </asp:Repeater>
                </ItemTemplate>
            </asp:Repeater>
        </asp:Panel>
    </div>
</asp:Content>
