<%@ page title="" language="C#" masterpagefile="~/App_Resources/admin.master" validaterequest="false" autoeventwireup="true" codebehind="default.aspx.cs" inherits="YPortal.Web.Admin._default" %>

<asp:content id="Content1" contentplaceholderid="head" runat="server">
    <title>Dashboard | Overview</title>


    <link href="../App_Resources/client-scripts/bootstrap/datepicker.css" rel="stylesheet" />
    <script src="../App_Resources/client-scripts/bootstrap/bootstrap-datepicker.js"></script>
    <script src="../App_Resources/client-scripts/date-format.js"></script>
    <script src="../App_Resources/client-scripts/moment.js"></script>


    <script src="default.js"></script>
    <script src="analytics.js"></script>
    <script src="analytics-geo-location.js"></script>
    <script src="analytics-mobile-overview.js"></script>
    <script src="analytics-all-trafic.js"></script>
    <script src="blast-overview.js"></script>
    <script src="blast-data-edit.js"></script>
    <script src="analytics-top-visited-pages.js"></script>
    <script src="membership-overview.js"></script>
    <script src="membership-analytics-pageview.js"></script>
    <link href="ng-animate.css" rel="stylesheet" />

    <style type="text/css">
        .data-loader {
            background-image: url(../App_Resources/images/loader-life.gif);
            background-repeat: no-repeat;
            width: 35px;
            height: 35px;
        }
    </style>

</asp:content>
<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <style ng-bind-html-unsafe="style"></style>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="view-animate-container">
                    <div ng-view class="view-animate"></div>


                </div>
            </div>
        </div>
    </div>
</asp:content>
