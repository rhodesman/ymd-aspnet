<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="druid-hills-baltimore-city.aspx.cs" Inherits="YPortal.Web.locations.family_center_ys.druid_hills_baltimore_city" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">
                <!--<ol class="carousel-indicators">
        <li class="" data-slide-to="0" data-target="#carousel-example-captions"> <a href="#homes" data-toggle="tab"> <img src="App_Style/images/banner/inner-page-banner/indicator-01.png"> <span> Youth Sports </span> </a> </li>
        <li data-slide-to="1" data-target="#carousel-example-captions" class=""> <a href="#profiles" data-toggle="tab"><img src="App_Style/images/banner/inner-page-banner/indicator-02.png"> <span> Youth Sports </span> </a> </li>
        <li data-slide-to="2" data-target="#carousel-example-captions" class=""> <a href="#messagess" data-toggle="tab"><img src="App_Style/images/banner/inner-page-banner/indicator-01.png"> <span> Youth Sports </span></a> </li>
      </ol>-->
                <div class="carousel-inner">
                    
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#666:#666" src="../../App_Style/images/banner/location/druid-hill.png">
                        <div class="carousel-caption">
                            <p> Druid Hill
                                <br>
                                Family Center Y
                            </p>
                            
                        </div>
                    </div>
                    
                </div>
                <!--      <a data-slide="prev" href="#carousel-example-captions" class="left carousel-control"> <span class="glyphicon glyphicon-chevron-left"></span> </a> <a data-slide="next" href="#carousel-example-captions" class="right carousel-control"> <span class="glyphicon glyphicon-chevron-right"></span> </a>-->
            </div>
        </div>
    </div>
    <div class="dux-content-area dux-content-area-margin-02">
        <div class="location-specific container">
            <div class="row">
                <div class="col-md-12">
                    <div class="tab-content">
                        <div class="tab-pane active" id="familycenterysdruid">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#home" class="" data-toggle="tab">Center Overview </a></li>
                                    <li><a href="#profile" class="" data-toggle="tab">Amenities</a></li>
                                    <li><a href="#messages" class="" data-toggle="tab">SOMETHING FOR EVERYONE </a></li>
                                    <li><a href="#settings" class="" data-toggle="tab">Schedules</a></li>
                                    <li><a href="#BEFORE-AFTER" class="" data-toggle="tab">Personal Training</a></li>
                                    <li><a href="#Give-Back" data-toggle="tab">Get Involved</a></li>
                                    <li><a href="#Schedules" data-toggle="tab">Policies</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Center Overview</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Druid Hill Family Center Y</h3>
                                                                <address>1609 Druid Hill Ave. <br /> Baltimore, MD 21217</address>
                                                                <br class="clear" />
                                                                <p>410-728-1600</p>
                                                                <h3 class="title-03">Eric Somerville</h3>
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <a href="" class="img-thumbnail-box">
                                                                            <img class="img-thumbnail" src="../../App_Style/images/directors/eric-summer.png">
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                         <ul>
                                                                    <li>District Executive Director: <a href="mailTo:ericsomerville@ymaryland.org">Eric Somerville</a></li>
                                                                    <li>Senior Program Director: <a href="mailTo:sharonjohnson@ymaryland.org">Dr. Sharon Johnson</a></li>
                                                                    <li>Citywide Swim Coordinator: <span style="color: #2489CA;">open position</span></li>
                                                                    <li>Citywide Facilities Director: <a href="mailTo:kurtwhite@ymaryland.org">Kurt White</a></li>
                                                                </ul>
                                                                <p> <strong> Center Hours  </strong></p>
                                                                <p>Mon-Fri: 7:00am - 9:00pm<br />
                                                                    Sat: 9:00am - 5:00pm<br />
                                                                    Sun: 1:00pm - 5:00pm  </p>
                                                               
                                                                 <p><strong>Pool Hours   </strong></p>
                                                                <p>Mon-Fri: 9:00am-1:00pm, 3:00pm-8:00pm <br />
                                                                    Sat: 1:00pm-5:00pm <br />
                                                                    Sun: 1:00pm-5:00pm</p>
                                                               <p><strong>Stay & Play Hours</strong></p>
                                                                <p>Mon-Thr: 5:00pm - 8:00pm <br />      Sat: 10:00am - 12:30pm</p>
                                                                 <p><strong>Holiday Hours</strong></p>
                                                                <p>
                                                                    New Year's Eve CLOSED <br />
                                                                    New Year's Day CLOSED <br />
                                                                    Easter Sunday CLOSED<br />
                                                                    Memorial Day: 7:00am - 12:00pm<br />
                                                                    Independence Day: 7:00am - 12:00pm<br />
                                                                    Labor Day: 7:00am - 12:00pm <br />
                                                                    Thanksgiving CLOSED<br />
                                                                    Christmas Eve CLOSED<br />
                                                                    Christmas Day CLOSED
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="../../membership/membership.aspx" class="common-btn btn-velvet" onclick="SpecialRedirect('membershiptypes')"><span class="btn-velvet-border">Join Now</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" tab-pane " id="profile">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-features" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Amenities</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-features">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p><strong>Indoor Pool </strong></p>
                                                                <p>3 lanes, 12.5 meter long, 3.5 ft. to 4 ft. deep</p>
                                                                <p><strong>State-of-the-Art Fitness Center </strong></p>
                                                                <ul>
                                                                    <li>Cardio room personal TV monitors on equipment </li>
                                                                    <li>Expresso bikes </li>
                                                                    <li>Cybex strength training equipment </li>
                                                                    <li>Free weights </li>
                                                                    <li>FitLinxx (digital training partner that tracks your fitness progress)</li>
                                                                </ul>
                                                                <p><strong>Other Exciting Amenities</strong></p>
                                                                <ul>
                                                                    <li>Group exercise studio for classes like Zumba, Step &Strong and more</li>
                                                                    <li>Cycle studio </li>
                                                                    <li>Gymnasium </li>
                                                                    <li>Spacious lobby with air hockey, TV, books and computer </li>
                                                                    <li>Computer program lab </li>
                                                                    <li>Stay & Play supervised activity room for kids while you exercise (family membership holders)</li>
                                                                    <li>Multipurpose program room </li>
                                                                    <li>Men's/women's locker rooms</li>

                                                                </ul>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="../../membership/membership.aspx" class="common-btn btn-velvet" onclick="SpecialRedirect('membershiptypes')"><span class="btn-velvet-border">Join Now</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="messages">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-source" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">SOMETHING FOR EVERYONE</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-source">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>We offer a variety of programs for all ages. Our programs are specifically designed to encourage positive growth and development in our youth, motivate you to achieve a healthy lifestyle and advocate community building and social responsibility at all levels.</p>
                                                                <p><strong>Health & Well-being</strong></p>
                                                                <p>The Druid Hill Family Center Y is a full service Y that offers a wide variety of programs including group exercise, swim lessons, water fitness, youth sports, martial arts and more!</p>
                                                                <p><strong>Birthday Parties  </strong></p>
                                                                <p>Celebrate your special day at the Y! Call 410-728-1600 for party themes, rates and more!           </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="../../membership/membership.aspx" class="common-btn btn-velvet" onclick="SpecialRedirect('membershiptypes')"><span class="btn-velvet-border">Join Now</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="settings">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-sources" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Schedules</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-sources">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Quick View Schedules
                                                                </h3>
                                                                <p>Quick view schedules are not full class schedules. They are simply a snapshot of what's available in a given space on a given day (or program: i.e. group exercise)</p>
                                                                <p>For full schedule sheets that include fees, times, and descriptions, please contact your Family Center Y. You can also find this information online using our online real-time search. The real-time search will always show up-to-date information including the number of remaining spaces in a class. <a href="" data-toggle="modal" data-target=".bs-example-modal-lg">SEARCH NOW</a> </p>


                                                                <p><strong>SCHEDULE PDFs </strong></p>
                                                                <ul>
                                                                    <li><a href="pdf/schedule/druid-hill-family-center-y/Druid-Hill-HW.pdf" target="_blank">Group Exercise (spring II)</a></li>
                                                                    <li><a href="pdf/schedule/druid-hill-family-center-y/Druid-Hill-gym.pdf" target="_blank">Gym (spring II)</a></li>
                                                                    <li><a href="pdf/DruidHill-GroupExercise-Summer_14.pdf" target="_blank">Group Exercise (summer)</a></li>
                                                                    <li><a href="pdf/DruidHill-OpenSwim-Summer_14.pdf" target="_blank">Open/Lap Swim (summer)</a></li>
                                                                    <li><a href="pdf/DruidHill-OpenGym-Summer_14.pdf" target="_blank">Open Gym (summer)</a></li>                                                                  
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="" class="common-btn btn-velvet" data-toggle="modal" data-target=".bs-example-modal-lg"><span class="btn-velvet-border">Search for Classes Online</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="BEFORE-AFTER">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-souurces" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Personal Training</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-souurces">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>Y personal trainers are friendly, certified fitness professionals who are experts at designing a health & wellness routine specifically for you. One-on-one training and small group personal training are available</p>
                                                                <p><strong>MEET OUR TRAINERS</strong></p>

                                                                <h3 class="title-03">Archie Cumberbatch, Sr.</h3>
                                                                <img class="img-thumbnail" src="../../App_Style/images/personal-training/Archie-Cumberbatch-DruidHill.jpg" />
                                                               
                                                                <p><a href="mailto:archiecumberbatch@ymaryland.org; margretarempert@ymaryland.org"><strong>Inquire About Personal Training</strong></a></p>
                                                                <p><strong>Philosophy:</strong>Health & Wellness is the fountain of youth! Consistency is the key! </p>
                                                                <p><strong>Specialties:</strong> Group Exercise, Martial Arts</p>
                                                                <p><strong>Certifications:</strong>  Y Fitness Instructor, Certified FitLinxx Trainer, 4th Degree Black Belt Martial Arts Instructor </p>

                                                                <h3 class="title-03">Margreta Rempert</h3>
                                                                <img class="img-thumbnail" src="../../App_Style/images/personal-training/MargretaRempert-CatDancelPerryHalDruidHill.jpg" />
                                                                <p><a href="mailto:margretarempert@ymaryland.org"><strong>Schedule an Appointment</strong></a> </p>
                                                                <p><strong>Philosophy:</strong>I focus on posture and form watching movements from all angles to make sure your training the best way possible for your body.</p>
                                                                <p><strong>Specialties:</strong>Posture, Cancer Exercise</p>
                                                                <p><strong>Certifications:</strong> ACE personal trainer,  Y-USA Foundations of Group Exercise Instructor</p>


                                                            </div>
                                                        </div>

                                                          <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="../../programs/personal-training/personal-training.aspx" onclick="SpecialRedirect('ptoneonone')" class="common-btn btn-velvet"><span class="btn-velvet-border">Learn More About Personal Training</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane " id="Give-Back">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-sources-05" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Get Involved</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-sources-05">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>As a cause-driven, charitable organization, we rely on the support of our community to help us achieve our mission of developing the full potential of every individual through programs that build healthy spirit, mind and body for all.   </p>
                                                                <p><strong>JOIN OUR CAUSE</strong></p>
                                                                <p>Your donations stay in your community if you choose, and support children and families who otherwise couldn't afford enriching Y experiences. <a href="https://www.stayclassy.org/checkout/donation?eid=22445">Please consider making a donation today</a>. Any amount helps!</p>
                                                                <p><strong>An average of …</strong></p>
                                                      

                                                                 <p><ul>
                                                                    <li>$38 provides a young adult with a Y membership for 1 month</li>
                                                                    <li>$50 provides 1 day of travel and exploration for a teenager in Y Teen Adventure Camp</li>
                                                                    <li>$120 exposes a young child to 7 weeks of swim lessons where he/she can learn a life-saving skill</li>
                                                                    <li>$215 gives a child 1 week of fun and learning in Y Preschool</li>
                                                                    <li>$300 helps expose a high school student to the legislative process in the Y Youth & Government program</li>
                                                                    <li>$500 gives a school-age child a safe haven in Y After School Enrichment for 2 months</li>
                                                                    <li>$1,000 helps a family hit by economic hardship stay active and engaged at the Y for 1 year  </li>     
                                                               </ul>
                                                                     </p>

                                                                <p><strong>VOLUNTEER OPPORTUNITIES </strong></p>
                                                                 <p><strong>Mentoring  </strong></p>
                                                                <p>The Y's Reach and Rise mentoring program is in need of positive, responsible adults who have two hours a week to spare and who want to make a difference in a young person's life.      </p>
                                                                

                                                                <p><strong>Special Event Volunteer  </strong></p>
                                                                <p>The Y’s  premier fundraising event is the Y's Annual Turkey Trot Charity 5K. This event depends on volunteers to help make it a success.  </p>
                                                                <p><strong>Program Volunteer  </strong></p>
                                                                <p>Volunteer at our Y in a variety of programs, depending on your time and interests.     </p>
                                                                <p><strong>Community Leadership Board (CLB) </strong></p>
                                                                <p>The primary responsibility of CLB members is to help engage the community in the Y's charitable mission to support children and families in need in Baltimore City so they may benefit from quality Y experiences they otherwise couldn't afford.</p>                                                                         
                                                                
                                                                <p>If you're interested in becoming a volunteer, please contact Eric Somerville at 410-728-1600 or <a href="mailTo:ericsomerville@ymaryland.org">ericsomerville@ymaryland.org</a></p> 

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="../../our-mission/our-mission.aspx" onclick="SpecialRedirect('ourmissioncause')" class="common-btn btn-velvet"><span class="btn-velvet-border">Learn More About the Y’s Mission</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="Schedules">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-souurces-09" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Policies</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-souurces-09">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>The partial list of policies below help ensure that everyone who enters our center has a positive Y experience. For a complete list, please see the <a href="pdf/MEMBERSHIP-How-to-Become-a-Member-New-Member-Handbook(3).pdf" target="_blank">New Member Handbook.</a></p>
                                                                <p><strong>Guest Policy (partial) </strong></p>
                                                                <ul>
                                                                    <li> Members must be at least 16 years old bring in a guest. If the member is age 16 or 17, their guest must be age 16 or older. </li>
                                                                    <li> Guests must pay a nominal fee per visit:
                                                                    $10 for adult guests (age 18 or older),
                                                                    $5 for youth guests (age 17 or younger) </li>
                                                                    <li> All guests age 14 and older must present
                                                                    a valid photo ID (student ID, driver’s license, etc.). </li>
                                                                    <li> Youth guests age 15 and younger must be
                                                                    signed in by an adult age 18 or older. </li>
                                                                    <li> All guests must be with a member and abide by all center policies. Members are responsible for the conduct of their guests. </li>
                                                                </ul>
                                                                <p><strong>Fitness Center Youth Age Policy (partial)     </strong></p>
                                                                <ul>
                                                                    <li> Children age 7 and under are not permitted on the
                                                                        fitness center without Y staff approval. </li>
                                                                        <li> Children age 10 and under must be accompanied
                                                                        by an adult at all times. </li>
                                                                        <li> Children age 8 - 10 may use the cardio equipment,
                                                                        but equipment must fit properly and the child must
                                                                        meet the following height requirements and be
                                                                        directly supervised by a parent/guardian:
                                                                           treadmill and rower: 52"
                                                                           all other cardio equipment: 58"  </li>                                        
                                                                            <li>Youth age 11 - 15 may use the cardio and strength
                                                                        equipment (but not free weights), provided they
                                                                        have taken the Teen Strength Training class. If the
                                                                        class has not been taken, only cardio equipment
                                                                        may be used after proper fit of the equipment is
                                                                        met. The child must be directly supervised by a
                                                                        parent/guardian. </li>
                                                                        <li> Youth age 16 and up have no restrictions (aside
                                                                        from behavior).   </li>  
                                                                </ul>
                                                                <p><strong>Pool Youth Age Policy (partial) </strong></p>
                                                                <ul>
                                                                    <li> Children age 7 and under must be directly supervised
                                                                    by a parent/guardian who is actively engaged
                                                                    in the water with them and follow swim test
                                                                    guidelines. </li>
                                                                    <li> Children age 8 - 10 must be directly supervised by
                                                                    a parent/guardian who is on the pool deck and
                                                                    follow swim test guidelines. </li>
                                                                    <li> Youth age 11 - 12 may be in the pool without a
                                                                    parent/guardian, but must follow swim test
                                                                    guidelines and parent/guardian must remain in the
                                                                    center. </li>
                                                                    <li> Youth age 13 and up may be in the pool without a
                                                                    parent/guardian, but must follow swim test
                                                                    guidelines.</li>         
                                                                </ul>
                                                                   <p><strong>Open Swim Test (partial)  </strong></p>

                                                                <p><u>Shallow Water Test</u> (for anyone under age 17 in the pool</p>
                                                                <p>To Pass:</p>
                                                                <ul>
                                                                    <li>the water is at or below arm pit level and</li>
                                                                    <li>you can stand with both feet flat on the bottom of the pool and</li>
                                                                    <li>you can right yourself after you have leaned backwards lifting both feet off the bottom of the pool and come back to a standing position with both feet flat on the bottom of the pool.</li>

                                                                </ul>
                                                                <p><i>If you do not pass the shallow water test, you can still get in the water if you wear a coast guard approved life vest (available at the Y) and you have a parent within arm's reach.</i></p>
                                                                <p><u>Deep Water Test</u> (for anyone under age 17 swimming in water above arm pit level)</p>
                                                                <p>To Pass:</p>

                                                                <ul>
                                                                    
                                                                    <li>the water is above your head as you jump in the deep end and (this line was moved to the top)</li>
                                                                    <li>you can swim 25 yds without stopping at any point and</li>
                                                                    <li>you can tread water for 1 minute without touching any surfaces and</li>
                                                                    <li>you are able to perform a back float</li>
                                                                </ul>

                                                                <p><strong>Stay & Play Policy (partial) </strong></p>
                                                                <p>This complimentary service is available to children age 6 weeks to 10 years who are part of a family membership. Parents participating in activities in the center are permitted to leave their child(ren) with Stay & Play staff for a maximum period of 1 1/2 hours.  </p>
                                                                <ul>
                                                                    <li><u>Drop-off and Pick-up </u> </li>
                                                                    <li>Photo ID will be required when using Stay and Play</li>
                                                                    <li>Parents must sign-in children when dropping them off</li>
                                                                    <li> All children will receive a name tag</li>
                                                                    <li>Parents must sign-out children when picking them up</li>
                                                                    <li> Photo ID will be returned once you’ve signed your child out
                                                                    The person who is pictured on the photo ID must be the one to drop-off and pick-up. </li>
                                                                </ul>

                                                                <p><strong>Inclement Weather Policy</strong></p>
                                                                <p>To check for inclement weather cancellations or center closings, you may:  </p>
                                                                <ul>                                                                   
                                                                    <li>call your Family Center Y</li>                                                       
                                                                    <li> check the ymaryland.org homepage   </li>                                 
                                                                    <li> check the Y's <a target="_blank" href="https://www.facebook.com/ycentralmaryland">Facebook</a>  page </li>                        
                                                                   <li>tune into WBAL-TV 11 and WJZ-13          </li>                              
                                                                </ul>
                                                                
                                                            </div>



                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="../../membership/membership.aspx" class="common-btn btn-velvet" onclick="SpecialRedirect('membershiptypes')"><span class="btn-velvet-border">Join Now</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
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
            </div>
        </div>
    </div>
    <%--<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                    <h2 id="myLargeModalLabel" class="title-02">Easy to Enroll</h2>
                </div>
                <iframe class="frame" width="880" height="500" src="https://easytoenroll.ymaryland.org"></iframe>
            </div>
        </div>
    </div>--%>
</asp:Content>
