<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="billinginquiries.aspx.cs" Inherits="YPortal.Web.footer.billing_inquiries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">

                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="/App_Style/images/banner/footer/BillingInquiries.jpg">
                        <div class="carousel-caption">
                            <p>
                                We're here to help
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
                   
                        <div class="tab-pane active" id="billinginquiries" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">

                                    <li class="active"><a href="#home" class="" data-toggle="tab">BILLING INQUIRIES</a></li>
                                    <li><a href="#profile" class="" data-toggle="tab">MAKE A PAYMENT  </a></li>
                                    <li><a href="#settings" class="" data-toggle="tab">PAYMENT HISTORY REQUESTS  </a></li>

                                </ul>
                                <div class="tab-content">

                                    <div class="tab-pane active" id="home">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class ">BILLING INQUIRIES </a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                                <div class="panel-body">
                                                    <div class="">

                                                        <YContAPI:YGenericControl
                                                            runat="server"
                                                            ID="BillingInq1"
                                                            EntryId="Billing Inquiries"
                                                            ElementTypeID="Page"
                                                            FieldID="Description"
                                                            isCached="true"
                                                            Debug="true" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class=" tab-pane" id="profile">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-features" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Make a Payment</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-features">
                                                <div class="panel-body">
                                                    <div class="">


                                                        <div class="col-md-8">
                                                            <div class="main-body">



                                                                <h3 class="title-03">Y Preschool and Before & After School Enrichment Payments</h3>
								<p>You can now access your account, make payments online and download/print receipts for our Y Preschool, Before & After School Enrichment and Camp programs! Just click the purple 'make a payment' button and follow the instructions to access or set up your account.</p>

                                                                <p>If you have any questions or have trouble making your online payment, please contact the Y Customer Service Office at <a href="">443-322-8000</a> or <a href="mailTo:customerservice@ymaryland.org">customerservice@ymaryland.org</a></p>

                                                                <p>
                                                                    <strong>PLEASE NOTE: </strong>This online payment system cannot be used to secure your space in a Y Preschool, Before & After School Enrichment or Camp program; it may only be used to pay an existing balance due.</p>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">

                                                            <div class="side-bar">
                                                                <a href='/myaccount' class="common-btn btn-velvet"><span class="btn-velvet-border">Make A Payment</span></a>
                                                                <img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane" id="settings">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-sources" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Payment History Requests</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-sources">
                                                <div class="panel-body">
                                                    <div class="">

                                                        <YContAPI:YGenericControl
                                                            runat="server"
                                                            ID="PaymentHist11"
                                                            EntryId="Payment History Requests"
                                                            ElementTypeID="Page"
                                                            FieldID="Description"
                                                            isCached="true"
                                                            Debug="true" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                 
                </div>
            </div>
        </div>
    </div>

</asp:Content>
