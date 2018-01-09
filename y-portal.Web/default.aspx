<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true"
    CodeBehind="default.aspx.cs" Inherits="YPortal.Web._default" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">            
            <YContAPI:YCarouselV2 
                ID="YCarouselV21" 
                runat="server" 
                DataSource="[[:d=at(document.type,'PageContainer')][:d=fulltext(my.PageContainer.Title,'Default Page')]]" />
        </div>
    </div>


    <div class="dux-content-area dux-content-area-margin-01">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="content-area-bg">
                        <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                            <li class="active"><a href="#home" class="at-the-y-now" data-toggle="tab">AT THE Y NOW
                                <span>Explore offers <font style="text-transform: lowercase;">and</font>&nbsp;opportunities</span>
                            </a></li>
                            <li><a href="#profile" class="membership" data-toggle="tab">Membership <span>Become
                                a Y member today</span></a></li>
                            <li><a href="#messages" class="camps" data-toggle="tab">Camps <span>Check out our summer
                                camp options</span></a></li>
                            <li><a href="#settings" class="preschools" data-toggle="tab">PRESCHOOL <span>Focus on
                                confidence, character <font style="text-transform: lowercase;">and</font>&nbsp;fun</span></a>
                            </li>
                            <li><a href="#before" class="before-after" data-toggle="tab">Before & After School Programs</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="home">
                                <div class="panel-heading visible-xs visible-sm">
                                    <div class="panel-title">
                                        <a href="#collapse-how-to" data-parent="#collapse-myTab"
                                            data-toggle="collapse" class="accordion-toggle deco-none misc-class at-the-y-now">AT THE Y NOW <span>Explore offers and opportunities</span></a>
                                    </div>
                                </div>





                                <div class="panel panel-default">
                                    <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                        <div class="panel-body">
                                                                                                                                           

                                               <YContAPI:YGenericControl
                                                    runat="server" 
                                                    ID="AtYNowPr1" 
                                                    EntryId ="Default-NowatY"
                                                    ElementTypeID ="Page"
                                                    FieldID ="Description" 
                                                    isCached="true" 
                                                    Debug="true"/>
                                                

                                            
                                        </div>
                                    </div>
                                </div>


                               
                                <!--
                                <div class="panel panel-default">
                                    <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-7">





                                                    <div class="main-body">

                                                        <div>
                                                            <h3 class="title-03">Just Extended! You Now Have Until June 23rd to Join the Y for Just $1!</h3>
                                                            <p>We’ve extended our “S’more Family Fun Days” special offer!  Join the Y by June 23rd for just $1 and save hundreds on all kinds of summertime fun! </p>
                                                            <ul>
                                                                <li>S'more fun for the kids this summer</li>
                                                                <li>S'more ways to get fit with FREE group exercise classes like Zumba</li>
                                                                <li>S’more ways to get everyone active with one low membership rate for the whole family</li>
                                                            </ul>

                                                            <p>Stop by your nearest Family Center Y and join today! </p>



                                                        </div>

                                                          



                                                    </div>
                                                </div>
                                                <div class="col-lg-5">
                                                    <div class="side-bar">
                                                        <a href="/membership/membership.aspx" class="common-btn btn-velvet">
                                                            <span class="btn-velvet-border">Explore Membership Options</span>
                                                        </a>
                                                        <img  src="App_Style/images/banner/side-bar/AtTheYNowTabImage.jpg" alt="sidebar banner" />
                                                   
                                                      
                                                    </div>

                                                </div>

                                                <br class="clear" />
                                                            <div class="col-md-7">
                                                    <div class="main-body">

                                                        

                                                          <div>
                                                        <h3 class="title-03">Send a Kid to Camp Campaign 2014</h3>
                                                        <p>
                                                            Please help us reach more children and families this summer who are in need by 
                                                                <a href="http://www.stayclassy.org/events/send-kid-to-camp-2014/e32490">making a donation</a>
                                                            to our Send a Kid to Camp Campaign.
                                                                <b>About $208 pays for a week of camp for one lucky child, but every dollar helps.</b>
                                                        </p>

                                                        <p>
                                                            Donations of $208 and higherby June 15<sup>th</sup> are automatically entered into a drawing for one of two sets of four 
                                                                lower-reserve tickets to an Orioles’ home game this season and a meet & greet with Adam Jones!
                                                        </p>
                                                        <p>
                                                            <i>To learn more about the opportunities and risks of summer please take two minutes to 
                                                                watch <a href="https://www.youtube.com/watch?v=ZolcNG3GVCs">this video</a> from Brian Williams of NBC News.</i>
                                                        </p>


                                                    </div>



                                                    </div>





                                                </div>
                                                <div class="col-lg-5">
                                                    <div class="side-bar">
                                                       
                                                         <a target="_blank" href="http://www.stayclassy.org/events/send-kid-to-camp-2014/e32490" class="common-btn btn-velvet btn-donate-home">
                                                            <span class="btn-velvet-border">Please Donate Today</span>
                                                        </a>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-7">
                                                  
                                                </div>
                                           <%--     <div class="col-lg-5">
                                                    <div class="side-bar">
                                                        <a href="http://www.stayclassy.org/events/send-kid-to-camp-2014/e32490" class="common-btn btn-velvet">
                                                            <span class="btn-velvet-border">Please Donate Today</span>
                                                        </a>
                                                        <img style="width: 277px; height: 228px;" src="App_Style/images/banner/side-bar/AtTheYNowTabImage.jpg" alt="sidebar banner" />
                                                    </div>
                                                </div>--%>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                                -->

                            </div>
                            <div class=" tab-pane " id="profile">
                                <div class="panel-heading visible-xs visible-sm">
                                    <div class="panel-title">
                                        <a href="#collapse-features" data-parent="#collapse-myTab"
                                            data-toggle="collapse" class="accordion-toggle deco-none misc-class">Membership
                                    <span>Become a Y member today</span></a>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div style="height: auto;" class="panel-collapse in" id="collapse-features">
                                        <div class="panel-body">
                                            <div class="row">

                                               <YContAPI:YGenericControl
                                                    runat="server" 
                                                    ID="yDefaultMembership" 
                                                    EntryId ="Default-Membership"
                                                    ElementTypeID ="Page"
                                                    FieldID ="Description" 
                                                    isCached="true" 
                                                    Debug="true"/>

                                                <!--
                                                <div class="col-md-7">
                                                    <div class="main-body">
                                                        <h3 class="title-03">Regardless of your membership type, you always get the best of
                                                            what we have to offer! </h3>
                                                        <p>Just extended - join the Y by June 23rd for just $1 and save hundreds on all kinds of summertime fun! </p>
                                                        <p>
                                                            Our atmosphere is comfortable and relaxing and our friendly staff is eager to welcome 
                                                            you by name! Here are just a few of our everyday benefits:
                                                        </p>

                                                        <ul>
                                                            <li>Always get our best rate; no contract necessary</li>
                                                            <li>One low membership rate for your whole family</li>
                                                            <li>One membership, 12 convenient locations</li>
                                                            <li>FREE group exercise classes included with your membership</li>
                                                            <li>FREEStay & Play activity room for little ones while you exercise</li>
                                                            <li>Family-friendly atmosphere and FREE monthly family events</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-lg-5">
                                                    <div class="side-bar">
                                                        <a href="membership/membership.aspx" class="common-btn btn-velvet" onclick="SpecialRedirect('membershiptypes')">
                                                            <span class="btn-velvet-border">Learn More and Join Today</span></a>
                                                        <img src="App_Style/images/banner/side-bar/Membership.jpg" alt="sidebar banner">
                                                    </div>
                                                </div>

                                                -->

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane " id="messages">
                                <div class="panel-heading visible-xs visible-sm">
                                    <div class="panel-title">
                                        <a href="#collapse-source" data-parent="#collapse-myTab"
                                            data-toggle="collapse" class="accordion-toggle deco-none misc-class">Camps <span>Check
                                        out our summer camp options</span></a>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div style="height: auto;" class="panel-collapse in" id="collapse-source">
                                        <div class="panel-body">
                                            <div class="row">

                                                <YContAPI:YGenericControl
                                                    runat="server" 
                                                    ID="UDefaultCamps" 
                                                    EntryId ="Default - Camps"
                                                    ElementTypeID ="Page"
                                                    FieldID ="Description" 
                                                    isCached="true" 
                                                    Debug="true"/>


                                                <!--
                                                <div class="col-md-7">
                                                    <div class="main-body">
                                                        <p>
                                                            <h3 class="title-03">Discover what you love this summer in Y Camp where we provide quality
                                                            summer experiences at an affordable price!</h3>
                                                            In fact, built-in features like FREE extended camp hours and sibling discounts help
                                                        make Y camp one of the lowest-cost, accredited camps around!
                                                        </p>
                                                        <p>
                                                            Campers enjoy week after week of fun-filled activities, new experiences, exciting
                                                        field trips, fun summer learning and more! There are several camp options to choose
                                                        from including youth camps, teen adventure camps, specialty camps like Drama and
                                                        Robotics,overnight camp and more!
                                                        </p>
                                                        <p>
                                                            There are over 20 Y Camp locations in Baltimore City and Anne Arundel, Baltimore,
                                                        Carroll, Harford and Howard Counties, including our newest locations at the Greater
                                                        Annapolis Family Center Y in Arnold, MD and Immanuel Baptist Church near White Marsh.
                                                        </p>
                                                        <p>Summer is right around the corner and spaces are filling fast! </p>
                                                        <a href="programs/camps/registernow.aspx"><strong>Sign up today!</strong></a>

                                                    </div>
                                                </div>
                                                <div class="col-lg-5">
                                                    <div class="side-bar">
                                                        <a href="programs/camps/camps.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Learn More and Register</span></a>
                                                        <img src="App_Style/images/banner/side-bar/CAMPS.jpg" alt="sidebar banner">
                                                    </div>
                                                </div>
                                                -->

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane " id="settings">
                                <div class="panel-heading visible-xs visible-sm">
                                    <div class="panel-title">
                                        <a href="#collapse-source-02" data-parent="#collapse-myTab"
                                            data-toggle="collapse" class="accordion-toggle deco-none misc-class">PRESCHOOL <span>Focus on confidence, character and fun</span></a>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div style="height: auto;" class="panel-collapse in" id="collapse-source-02">
                                        <div class="panel-body">
                                            <div class="row">


                                               <YContAPI:YGenericControl
                                                    runat="server" 
                                                    ID="YDefaultPreschool" 
                                                    EntryId ="Default - PreSchool"
                                                    ElementTypeID ="Page"
                                                    FieldID ="Description" 
                                                    isCached="true" 
                                                    Debug="true"/>


                                                <!--
                                                <div class="col-md-7">
                                                    <div class="main-body">
                                                        
                                                            <%--<h3 class="title-03">Open enrollment is underway for the 2014/2015 Y Preschool program.
                                                            </h3>--%>
                                                            <h3 class="title-03">Open enrollment is underway for the 2014/2015 Y Preschool program.
                                                            </h3>
                                                           <p> Set up a tour and enroll your child today!
                                                        </p>
                                                        <p>
                                                            Y Preschool is a trusted program that has provided educational and developmental
                                                        support to children and families for over 160 years. Our program combines a safe
                                                        and happy educational environment with a curriculum designed to stimulate intellectual,
                                                        emotional, and physical growth; all with the focus of preparing children for kindergarten
                                                        and beyond.
                                                        </p>
                                                        <p>
                                                            We teach skills related to school-readiness as measured by the Maryland State Department
                                                        of Education and as a result, <strong>children enrolled in our program perform above
                                                            state averages across all academic measures when entering kindergarten!</strong>
                                                        </p>
                                                        <%--<p>Select a location below to learn more about the Y Preschool program near you!</p>
                                                        <ul>
                                                            <li><a href="locations/preschool/chipmunks-caroll-county.aspx">Y Chipmunks Preschool (Carroll County)</a></li>
                                                            <li><a href="locations/preschool/catonsville-baltimore-county.aspx">Y Preschool in Catonsville (Baltimore County)</a></li>
                                                            <li><a href="locations/preschool/owen-brown-howard-county.aspx">Y Preschool in Owen Brown (Howard County)</a></li>
                                                            <li><a href="locations/preschool/riverside-harford-county.aspx">Y Preschool in Riverside (Harford County)</a></li>
                                                            <li><a href="locations/preschool/tawson-baltimore-county.aspx">Y Preschool in Towson (Baltimore County)</a></li>
                                                            <li><a href="locations/preschool/weinberg-baltimore-city.aspx">Y Preschool at Weinberg (Baltimore City)</a></li>
                                                        </ul>--%>
                                                    </div>
                                                </div>
                                                <div class="col-lg-5">
                                                    <div class="side-bar">
                                                        <a href="programs/preschool/preschools.aspx" class="common-btn btn-velvet" onclick="SpecialRedirectPartThree('prehomes','tabPreschool')">
                                                            <span class="btn-velvet-border">Find a Y Preschool Near You</span></a>
                                                        <img src="App_Style/images/banner/side-bar/Preschool.jpg" alt="sidebar banner">
                                                    </div>
                                                </div>
                                                -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="before">
                                <div class="panel-heading visible-xs visible-sm">
                                    <div class="panel-title">
                                        <a href="#collapse-source-04" data-parent="#collapse-myTab"
                                            data-toggle="collapse" class="accordion-toggle deco-none misc-class">Before & After
                                    School Programs</a>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div style="height: auto;" class="panel-collapse in" id="collapse-source-04">
                                        <div class="panel-body">
                                            <div class="row">

                                                
                                               <YContAPI:YGenericControl
                                                    runat="server" 
                                                    ID="YDefaultBase" 
                                                    EntryId ="Default - BASE"
                                                    ElementTypeID ="Page"
                                                    FieldID ="Description" 
                                                    isCached="true" 
                                                    Debug="true"/>

                                                <!--
                                                <div class="col-md-7">
                                                    <div class="main-body">
                                                        <p>
                                                            <h3 class="title-03">Get ahead of the crowd and enroll your child now for the 2014/2015
                                                            Before & After School Enrichment program!</h3>
                                                        </p>
                                                        <p>
                                                            Y Before & After School Enrichment gives children a fun, healthy balance to the school
                                                        day where they can have lots of choices and creative outlets as they discover what
                                                        they love! Whether it be fun board games, science exploration, an early start on
                                                        homework, sports or several other fun options, children are able to participate
                                                        in their favorite activities to help unwind from a busy school day. Plus, healthy
                                                        snacks and 30 minutes of physical activity is included every day!
                                                        </p>
                                                        <%--<p>Most programs are conveniently located in neighborhood schools. </p>--%>
                                                        <p>Don’t get stuck on the waiting list. Enroll today!</p>
                                                    </div>
                                                </div>
                                                <div class="col-lg-5">
                                                    <div class="side-bar">
                                                        <a href="programs/before-and-after-school-programs/before-and-after-school-programes.aspx"
                                                            class="common-btn btn-velvet"><span class="btn-velvet-border">Learn More and Enroll
                                                            Now </span></a>
                                                        <img src="App_Style/images/banner/side-bar/BASE.jpg" alt="sidebar banner">
                                                    </div>
                                                </div>

                                                -->
                                            </div>
                                        </div>
                                    </div>
                                    <br clear="all" />
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
