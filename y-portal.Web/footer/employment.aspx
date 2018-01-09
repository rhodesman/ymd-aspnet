<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="employment.aspx.cs" Inherits="YPortal.Web.footer.employment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .careerFont {
            font-size: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
       <ycontapi:ydpagecontainerimage runat="server" id="YDPageContainerEmployment" datasource="[[:d=at(document.type,'PageContainer')][:d=fulltext(my.PageContainer.Title,'Employment')]]" />
    </div>
    <div class="dux-content-area dux-content-area-margin-02">
        <div class="container">
            <div class="row">
                <div class="col-md-12">                    
                    <YContAPI:YDTabControl 
                        runat="server"
                        ID ="YDTabControlEmployment"
                        isCached="true"
                        GroupEntryId ="Employment" EntryId ="Employment"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
