<%@ Page Language="C#" MasterPageFile="~/App_Resources/default.Master"
    AutoEventWireup="true" CodeBehind="Y-Schedule.aspx.cs" Inherits="YPortal.Web.Y_Schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Please use as it feets-->
    <style type="text/css" media="screen">
        #EventDetail {
            position: absolute;
            z-index: 10001;
            display: none;
            background-color: white;
            border: 2px outset gray;
            padding: 20px;
            font-family: Tahoma;
            font-size: 12pt;
            -moz-box-shadow: 2px 2px 3px 5px #ccc;
            -webkit-box-shadow: 2px 2px 3px 5px #ccc;
            box-shadow: 2px 2px 3px 5px #ccc;
        }

        #scheduler1 {
            height: 537px; /* fixed height of scheduler container necessary for IE8 & IE9 support for DHTMLX */
        }

        div.icon_location {
            background-image: url("../DHTMLX/codebase/imgs/globe.png");
            background-size: 20px 20px;
            background-repeat: no-repeat;
            width: 20px;
            height: 20px;
            margin-left: -5px;
            margin-top: 0px;
            border: none;
            cursor: pointer;
        }
    </style>
    <meta name="description" data-bind="html: DesktopHeader().MDescription">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <input type="hidden" ID="apiEndpoint" value="" runat="server" ClientIDMode="Static"/>
    <div class="dux-show-case clearfix ">
        <div class="container">
            <div class="row">
                <div id="SchedLoading" class="col-md-12 top-space">
                    <div id="" class="col-md-10 col-md-offset-1">
                        <p class="text-02">
                            Thanks for your patience as we pull hundreds of fun activities into the schedule.<br />
                            It'll be well worth the wait - we promise!
                        </p>
                      <div class="col-md-2 col-md-offset-5  dhx_loading"></div>
                  </div>
                </div>

                <div id="ControlPanel" class="top-space">

                   
                    <div class="col-md-12 hide" id="ScheduleInfo">
                      <!-- ko if: DesktopHeader() && DesktopHeader().Section1 -->
					    <h1 class="title-04" data-bind="html: DesktopHeader().Section1"></h1>					
                      <!-- /ko -->  
                      <!-- ko if: DesktopHeader() &&  DesktopHeader().Section2 -->
                        <p class="text-02" data-bind="html: DesktopHeader().Section2"></p>
					  <!-- /ko -->  
                      <!-- ko if: DesktopHeader() &&  DesktopHeader().Section3 -->
						<p class="text-02" data-bind="html: DesktopHeader().Section3.toString()"></p>                        
                      <!-- /ko -->  
                     <!-- ko if: DesktopHeader() &&  DesktopHeader().AlertSection1 --> 
                        <p class="text-02 red-text" data-bind="html: DesktopHeader().AlertSection1"></p>
                     <!-- /ko -->  
                     
                     <!-- ko if: DesktopHeader() &&  DesktopHeader().AlertSection2 --> 
                        <p class="text-02 red-text" data-bind="html: DesktopHeader().AlertSection2"></p>
                     <!-- /ko -->  

                     <!-- ko if: DesktopHeader() &&  DesktopHeader().Section4 --> 
                        <p class="text-02" data-bind="html: DesktopHeader().Section4"></p>
                      <!-- /ko -->  
                    </div>
                
                    <div class="col-md-12 hide" id="ScheduleInfoMobile">
                        <!-- ko if: MobileHeader() &&  MobileHeader().Section1 --> 
                        <h1 class="title-04" data-bind="html: MobileHeader().Section1"></h1>
					    <!-- /ko -->  
                        <!-- ko if: MobileHeader() &&  MobileHeader().Section2 --> 	
						<p class="text-02" data-bind="html: MobileHeader().Section2"></p>
                        <!-- /ko -->  
						
                        <!-- ko if: MobileHeader() &&  MobileHeader().AlertSection1 --> 	
						<p class="text-02 red-text" data-bind="html: MobileHeader().AlertSection1"></p>
                        <!-- /ko -->  
                        <!-- ko if: MobileHeader() &&  MobileHeader().AlertSection2 --> 	
						<p class="text-02 red-text" data-bind="html: MobileHeader().AlertSection2"></p>
                        <!-- /ko -->  
                        <!-- ko if: MobileHeader() &&  MobileHeader().Section3 --> 
                        <p class="text-02 red-text" data-bind="html: MobileHeader().Section3"></p>
                        <!-- /ko -->  
                    </div>
                    
                    <div class="col-md-3">
                        <select id="locations" name="locations" class="form-control square-edge" data-bind="options: SchedulerLocations, optionsText: 'label', optionsValue: 'key', value: SelectedLocationID"></select>
                    </div>
                    <div class="col-md-3">
                        <select id="eventGroups" name="eventGroups" class="form-control square-edge" data-bind="options: SchedulerInterests, value: SelectedInterest"></select>
                    </div>
                    <div class="col-md-3">
                        <select id="classes" name="classes" class="form-control square-edge" data-bind="options: SchedulerClasses, value: SelectedClass, visible: HasClasses"></select>
                    </div>
                    <div class="col-md-3">
                        <select id="views" name="views" class="form-control square-edge" data-bind="options: SchedulerViews, value: SelectedView"></select>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="dux-show-case clearfix">
        <div id="scheduler1" class="dhx_cal_container">
            
            <div class="dhx_cal_navline ">  
                <asp:Button runat="server" ID="btnPrint" OnClientClick="SchedulerModel.OpenPrint(); return false;" CssClass="btn" Text="Printer Friendly" ClientIDMode="Static"/>
                <div class="dhx_cal_next_button">&nbsp;</div>              
                <div class="dhx_cal_today_button"></div> 
                <div class="dhx_cal_prev_button">&nbsp;</div>
                <div class="dhx_cal_date"></div>
             </div>

            <div class="dhx_cal_header"></div>
            <div class="dhx_cal_data"></div>
        </div>
    </div>

    <div id="EventDetail" class="col-md-4 bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div>
            <button type="button" class="close" data-bind="click: SchedulerDismissLightBox">x</button>
        </div>
        <div class="modal-header">
            <h1 class="modal-title">Information:</h1>
        </div>

        <div class="modal-body">
            <!-- ko if: SelectedEvent() -->
            <!-- ko if: SelectedEvent().Title -->
            <span class="label label-info">Title:</span>
            <span data-bind="text: SelectedEvent().Title"></span>
            <br />
            <!-- /ko -->
            <!-- ko if: SelectedEvent().text -->
            <span class="label label-info">Description:</span>
            <span data-bind="text: SelectedEvent().text"></span>
            <br />
            <!-- /ko -->
            <span class="label label-info">Interest:</span>
            <span data-bind="text: SelectedEvent().Interest"></span>
            <br />
            <!-- ko if: SelectedEvent().EventClass -->
            <span class="label label-info">Class Type:</span>
            <span data-bind="text: SelectedEvent().EventClass"></span>
            <br />
            <!-- /ko -->

            
            <hr />
            <span class="label label-info">Event Date(s):</span>
            <span data-bind="text: SelectedEvent().DateRangeDays"></span>
            <br />
            <span class="label label-info">Event Time(s):</span>
            <span data-bind="text: SelectedEvent().DateRangeTimes"></span>

                       
            <br />
            <hr />
            <!-- ko if: SelectedEvent().Location -->
            <span class="label label-info">Location:</span>
            <span data-bind="text: SelectedEvent().Location"></span>
            <br />
            <!-- /ko -->

            <!-- ko if: SelectedEvent().Room -->
            <span class="label label-info">Room:</span>
            <span data-bind="text: SelectedEvent().Room"></span>
            <br />
            <!-- /ko -->
            <!-- ko if: SelectedEvent().ContactInfo -->
            <span class="label label-info">Contact:</span>
            <span data-bind="text: SelectedEvent().ContactInfo"></span>
            <br />
            <hr />
            <!-- /ko -->
            <!-- ko if: SelectedEvent().Gender -->
            <span class="label label-info">Gender:</span>
            <span data-bind="text: SelectedEvent().Gender"></span>
            <br />
            <!-- /ko -->
            <!-- ko if: SelectedEvent().Age -->
            <span class="label label-info">Age:</span>
            <span data-bind="text: SelectedEvent().Age"></span>
            <br />
            <!-- /ko -->
            <!-- ko if: SelectedEvent().ActivityLevel -->
            <span class="label label-info">Activity Level:</span>
            <span data-bind="text: SelectedEvent().ActivityLevel"></span>
            <br />
            <!-- /ko -->
            <!-- ko if: SelectedEvent().Category -->
            <span class="label label-info">Category:</span>
            <span data-bind="text: SelectedEvent().Category"></span>
            <br />
            <hr />
            <!-- /ko -->
            <!-- ko if: SelectedEvent().DaysOffered -->
            <span class="label label-info">Days Offered:</span>
            <span data-bind="text: SelectedEvent().DaysOffered"></span>
            <br />
            <!-- /ko -->
            <!-- ko if: SelectedEvent().DatesAvailable -->
            <span class="label label-info">Dates Available:</span>
            <span data-bind="text: SelectedEvent().DatesAvailable"></span>
            <br />
            <hr />
            <!-- /ko -->
            <!-- ko if: SelectedEvent().Price -->
            <span class="label label-info">Price:</span>
            <span data-bind="text: SelectedEvent().Price"></span>            
            <!-- /ko -->

            <!-- ko if: SelectedEvent().InstructorName -->
            <br />
            <hr />
            <span class="label label-info">Instructor:</span>
            <span data-bind="text: SelectedEvent().InstructorName"></span> 
            <!-- /ko -->

            <!--
            <span class="label label-info">Start:</span>
            <span data-bind="text: moment(SelectedEvent().start_date).format('MM/DD/YYYY hh:mm A')"></span>
            <br />
            <span class="label label-info">End:</span>
            <span data-bind="text: moment(SelectedEvent().end_date).format('MM/DD/YYYY hh:mm A')"></span>
            <br />
            -->

            <!-- /ko -->

        </div>
    </div>

    <script src="/App_Resources/client-scripts/app/YScheduler.js?v=5"></script>
</asp:Content>
