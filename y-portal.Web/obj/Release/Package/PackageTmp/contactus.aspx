<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="YPortal.Web.contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type='text/javascript' src='<%# ResolveUrl("~/App_Resources/client-scripts/app/contact-us.js") %>'></script>
    <%--<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCY0wDGvS6i-50AB3l7iwtTlmFYq6MkJPg&sensor=false"></script>--%>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-content-area" ng-controller="ContactUsCtrl">
        <div class="contact-us container">
            <div class="row">
                <%--<div class="col-md-12">
                    <ul class="hidden-lg hidden-md pull-right" id="myTab">
                        <li class="active"><a href="#contactus" data-toggle="tab">Contact Us</a></li>
                        <li><a href="#profile" data-toggle="tab">View Map </a></li>
                    </ul>
                </div>
                <br class="clear" />--%>
                <div class="tab-content">
                    <div class="tab-pane active" id="contactus">
                        <div class="col-md-12">
                            <h2>Contact us</h2>
                            <p>If you are interested in learning more about Y programs and services or if you have questions, please fill out and submit the form below. Please complete the form in its entirety so that we may better serve you.</p>
                            <div id="divMessage" style="display: none;"></div>
                        </div>
                        <div class="col-md-12">
                            <div class="side-bar" ng-form="contactForm" ng-model="contactForm">
                                <div class="col-md-4">
                                    <div ng-class="{'form-group': true, 'has-error': formSubmitted && contactForm.firstname.$error.required}">
                                        <label class="control-label">First Name</label>
                                        <input type="text" class="form-control" placeholder="Required*" name="firstname" ng-model="contact.FirstName" maxlength="100" required />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div ng-class="{'form-group': true, 'has-error': formSubmitted && contactForm.lastname.$error.required}">
                                        <label class="control-label">Last Name</label>
                                        <input type="text" placeholder="Required*" class="form-control" name="lastname" ng-model="contact.LastName" maxlength="100" required>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div ng-class="{'form-group': true, 'has-error': formSubmitted && contactForm.email.$error.required || contactForm.email.$error.pattern}">
                                        <label class="control-label">Email</label>
                                        <span class="required-text required-element" ng-show="emailValidation && contactForm.email.$error.pattern">{{emailMsg}}</span>
                                        <input type="text" placeholder="Required*" class="form-control" name="email" ng-model="contact.Email" required ng-pattern="emailRegEx" maxlength="50" ng-init="emailValidation=false" ng-blur="emailValidation=true" ng-focus="emailValidation=false">
                                    </div>
                                </div>
                                <br class="clear">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">Phone</label>
                                        <input name="phone" type="text" placeholder="(000) 000-0000" class="form-control" ng-model="contact.Phone" maxlength="20">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div ng-class="{'form-group': true, 'has-error': formSubmitted && contactForm.location.$error.required}">
                                        <label class="control-label">Location</label>
                                        <span class="required-text required-element" ng-show="formSubmitted && contactForm.location.$error.required">Required</span>
                                        <select name="location" id="location" ng-model="location" ng-options="location as location.Name for location in locationList" class="form-control" required>
                                            <option value="">Select Location</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div ng-class="{'form-group': true, 'has-error': formSubmitted && contactForm.interest.$error.required}">
                                        <label class="control-label">In Regards To</label>
                                        <span class="required-text required-element" ng-show="formSubmitted && contactForm.interest.$error.required">Required</span>
                                        <select name="interest" ng-model="interest" ng-options="interest as interest.Name group by interest.GroupName  for interest in interestList" class="form-control">
                                        </select>
                                    </div>
                                </div>
                                <br class="clear">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label">Message</label>
                                        <textarea class="form-control" name="feedback" id="feedback" ng-model="contact.Feedback" maxlength="500"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="btn-group btn-contact-submit">
                                        <div class="loader" ng-show="SubmitProcessing" style="display: block;"></div>
                                        <a href="javascript:void(0);" class="btn btn-velvet" ng-click="Save(contactForm.$valid)" ng-show="!SubmitProcessing">Submit <span class=""></span></a>
                                    </div>
                                </div>
                                <br class="clear">
                            </div>
                        </div>

                    </div>
                    <%-- <div class="tab-pane active" id="profile">
                        <div class="col-md-8 ">
                            <div class="main-body">
                                <div id="googleMap" style="width: 100%; height: 260px;">
                                </div>--%>
                    <%--<iframe width="100%" height="260" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Customer+Billing+Office:+303+W.+Chesapeake+Avenue+Baltimore,+MD+21204+&amp;aq=&amp;sll=37.0625,-95.677068&amp;sspn=60.376022,135.263672&amp;t=m&amp;ie=UTF8&amp;hq=Customer+Billing+Office:&amp;hnear=303+W+Chesapeake+Ave,+Towson,+Maryland+21204&amp;ll=39.23816,-76.776136&amp;spn=0.812646,0.602784&amp;output=embed"></iframe>--%>

                    <%--<address>
                                    <strong>Association Office: </strong>
                                    <br>
                                    303 W. Chesapeake Avenue<br>
                                    Baltimore, MD 21204<br>
                                    (p)  443-322-9622<br>
                                    (f) 410-376-7494<br>
                                </address>
                                <address>
                                    <strong>Customer Billing Office:</strong><br>
                                    303 W. Chesapeake Avenue<br>
                                    Baltimore, MD 21204<br>
                                    (p)  443-322-8000<br>
                                    (f) 410-779-9426<br>
                                </address>
                                <br class="clear">
                                <p>For other location contact information, please find the center specific details under the Locations menu option.</p>
                            </div>
                        </div>

                    </div>--%>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
