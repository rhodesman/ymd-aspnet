<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true"
    CodeBehind="camps.aspx.cs" Inherits="YPortal.Web.programs.camps.camps" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix ">
        <div class="custom-container mobile-view-fix">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example">
                <ol class="carousel-indicators mobile-margin-fix">
                    <li class="active" data-slide-to="0" data-target="#carousel-example"><a href="#campshomes" onclick='SpecialRedirectPartTwo("campshomes")'
                        data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/camps/overview.png" />
                        <span>Overview
                        </span></a></li>
                    <li data-slide-to="1" data-target="#carousel-example" class=""><a href="#campsprofiles" onclick='SpecialRedirectPartTwo("campsprofiles")'
                        data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/camps/locations.png">
                        <span>Locations </span></a></li>
                    <li data-slide-to="2" data-target="#carousel-example" class=""><a href="#campsmessagess" onclick='SpecialRedirectPartTwo("campsmessagess")'
                        data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/camps/option-and-fees.png">
                        <span>Options & Fees </span></a></li>
                    <li class="" data-slide-to="3" data-target="#carousel-example"><a href="#campssports" onclick='SpecialRedirectPartTwo("campssports")'
                        data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/camps/themes-trips-and-events.png">
                        <span>Themes, Trips & Events </span></a></li>
                    <li data-slide-to="4" data-target="#carousel-example" class=""><a href="#campsyouth" onclick='SpecialRedirectPartTwo("campsyouth")'
                        data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/camps/general-info-and-forms.png">
                        <span>General Info & Forms</span></a></li>
                </ol>
                <div class="carousel-title">Camps</div>
                <div class="carousel-inner">

                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/camps/overview.png">
                        <div class="carousel-caption">
                            <p>
                                More variety.More value.
                                    <br>
                                Still affordable.
                            </p>

                        </div>
                    </div>
                    <div class=" item ">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/camps/locations.png">
                        <div class="carousel-caption">
                            <p>
                                Over 20 Camp 
                                    <br>
                                Locations
                            </p>

                        </div>
                    </div>
                    <div class=" item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/camps/option-and-fees.png">
                        <div class="carousel-caption">
                            <p>
                                Discover what you 
                                    <br>
                                love this summer
                            </p>

                        </div>
                    </div>
                    <div class=" item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/camps/themes-trips-and-events.png">
                        <div class="carousel-caption">
                            <p>
                                Around the world 
                                    <br>
                                in 49 days
                            </p>

                        </div>
                    </div>
                    <div class=" item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/camps/general-information.png">

                        <div class="carousel-caption">
                            <p>
                                Carefree summer fun 
                                    <br>
                                and learning
                            </p>

                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
    <div class="dux-content-area  dux-content-area-margin-02">
        <div class="short container">
            <div class="row">

                <div class="col-md-12">
                    <div class="tab-content">

                        <div class="tab-pane active" id="campshomes">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#home" class="" data-toggle="tab">AFFORDABLE SUMMER FUN
                                    </a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#collapse-how-to" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">AFFORDABLE SUMMER FUN</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>At the Y, we offer endless camp options to suit all types; the outdoorsy type, the air-conditioning type, the nature lover type, the sporty type, the traveler type, the science type, the "I just want to get away from home!" type, and everyone in between!</p>
                                                                <p>We understand that a quality camp experience gives children the chance to learn life lessons, make new friends and discover new things about themselves. At Y camps, we provide quality summer experiences at an affordable price. Built-in features like FREE extended camp hours and sibling discounts help make Y camp one of the lowest-cost camps around!</p>
                                                                <p><strong>Y Membership + Camp = Advantages</strong></p>

                                                                <div class="col-sm-2" style="padding-left: 0px; padding-right: 0px;">Advantage #1</div>
                                                                <div class="col-sm-10" style="padding-right: 0px;"><strong>Members always pay the lowest rates for camp, on average as low as $50 less than the general public each week.</strong></div>
                                                                <br class="clear" />
                                                                <br class="clear" />
                                                                <div class="col-sm-2" style="padding-left: 0px; padding-right: 0px;">Advantage #2</div>
                                                                <div class="col-sm-10" style="padding-right: 0px;">Members enjoy many benefits throughout the year including full access to 12 Family Center Ys, priority program registration, free fitness and water exercise classes, free fun for kids while you exercise, free family events, reduced fees on Y programs and more!</div>
                                                                <br class="clear" />
                                                                <%--<p><strong>S’more Summer Fun at the Y for Less</strong></p>
                                                                <p>
                                                                    Stop by your nearest <a href="../../membership/membership.aspx" onclick="SpecialRedirectPartThree('membershiptypes','tabFamilyCenterYLocations')">Family Center Y</a>  and find out how you can 
                                                                    <b>save anywhere from $55, up to hundreds of dollars</b> when you sign up for two or more weeks of Y Camp by June 15th! 
                                                                </p>
                                                                <p>
                                                                    <b>Save the most when you join the Y and register your kids for Y Camp!</b> Y members always pay the lowest rates for camp, 
                                                                    on average as low as $50 less than the general public each week! 
                                                                </p>
                                                                <p>When you join the Y and register for camp by June 15th, you:</p>
                                                                <ul>
                                                                    <li>pay a $1 joining fee (savings of $98)</li>
                                                                    <li>pay NO camp registration fee (savings of $35 per child)</li>
                                                                    <li>get $10 off each week when you sign up for two or more weeks of camp (savings of $20 or more)</li>
                                                                    <li>save on average about $50 per week because you get the member rate for camp (depending on type of camp, but an average savings of $100 or more)</li>
                                                                </ul>
                                                                <p>
                                                                    Plus, your membership gives you full access to 12 Family Center Ys, priority program registration, free fitness and water exercise classes, 
                                                                    free fun for kids while you exercise, free family events, reduced fees on Y programs <a href="../../membership/membership.aspx" onclick='SpecialRedirect("membershipmember")'>and more</a>!
                                                                </p>
                                                                <p>
                                                                    Add it all up and you can save at least $253 by joining the Y and registering for camp!Save even more if you register for several weeks or 
                                                                    register multiple children. But you must go to your nearest <a href="../../membership/membership.aspx" onclick="SpecialRedirectPartThree('membershiptypes','tabFamilyCenterYLocations')">Family Center Y</a> by June 15th to get this special on-the-spot savings!
                                                                </p>
                                                                <p>
                                                                    For those who don’t like savinghundreds of dollars, you can still save $55 or more just by registering for Y Camp by June 15th:
                                                                </p>
                                                                <ul>
                                                                    <li>pay NO camp registration fee (savings of $35 per child)</li>
                                                                    <li>get $10 off each week of when you sign up for two or more weeks of camp (savings of $20 or more)</li>
                                                                </ul>
                                                                <p>
                                                                    <b>Bottom line – get to the Y by June 15th to save on Y Camp. But don’t wait, summer is almost here and spaces are going fast!</b>
                                                                </p>--%>
                                                                <%--<p><strong>APRIL PROMO</strong></p>
                                                                <p>
                                                                    Register online for Y camp by April 15th and save up to $50. Just use code APRIL50.
                                                                </p>
                                                                <p>
                                                                    The Y is the leader in summer fun because we literally invented summer camp! We understand
                                                                    that a quality camp experience is much more than ripping and running and going home
                                                                    tired – it’s a chance to learn life lesson, make new friends, and discover new things
                                                                    about yourself. Summer at the Y is also a clever disguise for combating summer learning
                                                                    loss!
                                                                </p>
                                                                <p>
                                                                    That’s why we offer endless camp options to suit all types; the outdoorsy type, the
                                                                    air-conditioning type, the nature lover type, the sporty type, the traveler type,
                                                                    the science type, the "I just want to get away from home!" type, and everyone in
                                                                    between!Plus, our camps provide quality summer experiences at an affordable price.
                                                                    Built-in features like FREE extended camp hours and sibling discounts help make
                                                                    Y camp one of the lowest-costcamps around!
                                                                </p>
                                                                <p><strong>Y Membership + Camp = Advantages</strong></p>
                                                                <p>
                                                                    Advantage #1	Members always pay the lowest rates for camp, on average as low as
                                                                    $50 less than the general public each week.
                                                                </p>
                                                                <p>
                                                                    Advantage #2  Members enjoy many benefits throughout the year including full access
                                                                    to 12 Family Center Ys, priority program registration, free fitness and water exercise
                                                                    classes, free fun for kids while you exercise, free family events, reduced fees
                                                                    on Y programs and more! Plus, enjoy opportunities to volunteer and engage with our
                                                                    special Y community of caring people.
                                                                </p>--%>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" onclick="SpecialRedirect('campsregistration')" class="common-btn btn-velvet" onclick="SpecialRedirect('campsprofiles')"><span class="btn-velvet-border">How to Register</span></a>
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

                        <div class="tab-pane" id="campsprofiles">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="my-tab-01">
                                    <li class="active"><a href="#campsprofilesanne" data-toggle="tab">ANNE ARUNDEL COUNTY </a>
                                    </li>
                                    <li><a href="#campsprofilesbaltimorecity" data-toggle="tab">BALTIMORE CITY </a></li>
                                    <li><a href="#campsprofilesbaltimore" data-toggle="tab">BALTIMORE COUNTY </a></li>
                                    <li><a href="#campsprofilescarroll" data-toggle="tab">CARROLL COUNTY & OVERNIGHT CAMP</a></li>
                                    <li><a href="#campsprofilesharford" data-toggle="tab">HARFORD COUNTY </a></li>
                                    <li><a href="#campsprofileshoward" data-toggle="tab">HOWARD COUNTY </a></li>

                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="campsprofilesanne">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#mob-tab-02" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">ANNE ARUNDEL COUNTY </a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="mob-tab-02">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <a href="camps.aspx" onclick='SpecialRedirectPartThree("campsyouth","brochuresformsmanuals")'>Brochures, Forms & Manuals</a>
                                                                <p>All inquiries for Y camps in Anne Arundel County should be directed to:</p>
                                                                <p>
                                                                    Greater Annapolis Family Center Y
                                                                    <br />
                                                                    1209 Ritchie Hwy.
                                                                    <br />
                                                                    Arnold, MD 21012
                                                                    <br />
                                                                    (p) 410-544-2525 
                                                                </p>

                                                                <h3 id="top" class="title-03">Five camp locations in Anne Arundel County</h3>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <td>
                                                                            <strong>Camp Whippoorwill</strong>
                                                                            <br />
                                                                            520 Lake Shore Drive
                                                                            <br />
                                                                            Pasadena, MD 21122 
                                                                            <br />
                                                                            <a href="#Whippoorwill">See camp profile</a>
                                                                        </td>
                                                                        <td>
                                                                            <strong>Grace Pointe Community Church</strong>
                                                                            <br />
                                                                            61 Gambrills Road
                                                                            <br />
                                                                            Severn, MD 21144 
                                                                            <br />
                                                                            <a href="#Grace">See camp profile</a>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>
                                                                            <strong>Greater Annapolis Family Center Y – NEW</strong>
                                                                            <br />
                                                                            1209 Ritchie Highway<br />
                                                                            Arnold, MD 21012
                                                                            <br />
                                                                            <a href="#annapolis">See camp profile</a>
                                                                        </td>
                                                                        <td>
                                                                            <strong>Rippling Woods Elementary</strong>
                                                                            <br />
                                                                            530 Nolfield Drive
                                                                            <br />
                                                                            Glen Burnie, MD 21061
                                                                            <br />
                                                                            <a href="#Rippling">See camp profile</a>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <strong>Sandy Point State Park</strong>
                                                                            <br />
                                                                            1100 East College Parkway<br />
                                                                            Annapolis, MD 21401<br />
                                                                            <a href="#sandy">See camp profile</a>
                                                                        </td>
                                                                        <td></td>
                                                                    </tr>
                                                                </table>
                                                                <h3 class="title-03" id="Whippoorwill">Camp Whippoorwill Profile</h3>
                                                                <ul>
                                                                    <li>Camp Whippoorwill offers a variety of unique camp experiences in a beautiful, outdoor,
                                                                        natural setting. There are nature hikes, outdoor camping and life skills such as
                                                                        pitching a tent and cooking over a fire, archery, confidence course challenges,
                                                                        and more! Campers also participate in reading and journaling, and weekly themed
                                                                        events and/or field trips. This kind of camp setting is known as the "Great Outdoors".
                                                                    </li>
                                                                    <li>Weekly camp sessions run 6/16 - 8/22</li>
                                                                    <li>Available Camps
                                                                        <ul>
                                                                            <li>Youth Camps: Buccaneers (children entering kindergarten), Pioneers (children entering
                                                                                grades 1-2), Voyagers (children entering grades 3-4), Rangers (children entering
                                                                                grades 5-6)</li>
                                                                            <li>Teen Camps: Adventurers (entering grades 7-8), Grand Adventurers (entering grades
                                                                                9-11), Mission Adventurers (entering grades 9-12)</li>
                                                                            <li>Specialty Camps: Weird Science (entering grades 1-5), Journaling (entering grades
                                                                                1-6), Environmental Explorers (entering grades 1-5), Drama (entering grades 1-6)
                                                                            </li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                                <a href="#top">BACK TO TOP</a>
                                                                <h3 id="Grace" class="title-03">Grace Pointe Community Church Profile</h3>
                                                                <ul>
                                                                    <li>Camp at Grace Pointe Community Church offers a varitey of mainly indoor activities
                                                                        such as crafts, board games and more. Other activities include skits and songs at
                                                                        Imagination Station, games and/or sports skills at Body Central, week-long projects
                                                                        like murals and big puzzles, reading and journaling. Campers also participate in
                                                                        weekly themed special events and/or field trips. Water games and other cooling activities
                                                                        occur with swimming one time a week. This kind of camp setting is called "The Lodge".
                                                                    </li>
                                                                    <li>Weekly camp sessions run 6/16 - 8/22</li>
                                                                    <li>Available Camps
                                                                        <ul>
                                                                            <li>Youth Camps: Buccaneers (children entering kindergarten), Pioneers (children entering
                                                                                grades 1-2), Voyagers (children entering grades 3-4), Rangers (children entering
                                                                                grades 5-6)</li>
                                                                            <li>Teen Camps: Mission Adventurers (entering grades 9-12)</li>
                                                                            <li>Specialty Camps: Soccer Camp (entering grades 1-6), Art (entering grades 1-6), Basketball
                                                                                Camp (entering grades 1-6), Sports Mix Camp (entering grades 1-6)</li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                                <a href="#top">BACK TO TOP</a>
                                                                <h3 id="annapolis" class="title-03">Greater Annapolis Family Center Y Profile – NEW
                                                                </h3>
                                                                <ul>
                                                                    <li>Camp at the Greater Annapolis Family Center Y offers a variety of mainly outdoor
                                                                        activities such as arts, crafts, science projects, skits and songs, reading and
                                                                        journaling, games, and sports. Water games and other cooling activities occur daily
                                                                        with swimming 2-3 times a week. Campers also participate in weekly themed special
                                                                        events and/or field trips. This kind of camp setting is known as "Activity Central".
                                                                    </li>
                                                                    <li>Weekly camp sessions run 6/16 - 8/22</li>
                                                                    <li>Available Camps
                                                                        <ul>
                                                                            <li>Youth Camps:  Buccaneers (children entering kindergarten), Pioneers (children entering
                                                                                grades 1-2), Voyagers (children entering grades 3-4), Rangers (children entering
                                                                                grades 5-6)</li>
                                                                            <li>Specialty Camps: Summer Robotics Level 1 - Beginner (entering grades 3-6), Summer
                                                                                Robotics Level 2 - Intermediate (entering grades 3-6)</li>
                                                                            <li>Summer <a href="../sports/sports.aspx">dance clinics </a>also available!
                                                                            </li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                                <a href="#top">BACK TO TOP</a>
                                                                <h3 id="Rippling" class="title-03">Rippling Woods Elementary Profile </h3>
                                                                <ul>
                                                                    <li>Camp at Rippling Woods Elementary offers a variety of mainly indoor activities including
                                                                        crafts for Creation Station, skits and songs at Imagination Station, games and sports
                                                                        skills at Body Central, week-long projects like murals and big puzzles, board games,
                                                                        reading, and journaling. Campers also participate in weekly themed special events
                                                                        and/or field trips. Water games and other cooling activities occur with swimming
                                                                        one time a week. This kind of camp setting is called "The Lodge".</li>
                                                                    <li>Weekly camp sessions run 6/16 - 8/8</li>
                                                                    <li>Available Camps
                                                                        <ul>
                                                                            <li>Youth Camps: Buccaneers (children entering kindergarten), Pioneers (children entering
                                                                                grades 1-2), Voyagers (children entering grades 3-4), Rangers (children entering
                                                                                grades 5-6)</li>
                                                                            <li>Teen Camps: Mission Adventurers (entering grades 9-12)</li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                                <a href="#top">BACK TO TOP</a>
                                                                <h3 id="sandy" class="title-03">Sandy Point State Park Profile</h3>
                                                                <ul>
                                                                    <li>Camp at Sandy Point offers a variety of unique camp experiences in a beautiful,
                                                                        outdoor, natural setting. There are nature hikes, outdoor camping and life skills
                                                                        such as pitching a tent and cooking over a fire, archery, confidence course challenges,
                                                                        and more! Waterfront activities may include swimming, crabbing, canoeing, and fishing.
                                                                        Campers also participate in reading and journaling, and weekly themed events and/or
                                                                        field trips. This kind of camp setting is known as the "Great Outdoors".</li>
                                                                    <li>Weekly camp sessions run 6/16 - 8/15</li>
                                                                    <li>Available Camps
                                                                        <ul>
                                                                            <li>Youth Camps: Buccaneers (children entering kindergarten), Pioneers (children entering
                                                                                grades 1-2), Voyagers (children entering grades 3-4), Rangers (children entering
                                                                                grades 5-6)</li>
                                                                            <li>Teen Camps: Adventurers (entering grades 7-8), Grand Adventurers (entering grades
                                                                                9-11), Mission Adventurers (entering grades 9-12)</li>
                                                                        </ul>
                                                                    </li>
                                                                    <li>Transportation 
                                                                        <ul>
                                                                            <li>Y camp at Sandy Point has transportation available. Fees are non-refundable and
                                                                                non-transferable. You must sign up for transportation at the time of registration.
                                                                            </li>
                                                                            <li>Fee: $40 per week per camper </li>
                                                                            <li><strong>Sandy Point Pick-up and Drop-off </strong>
                                                                                <br />
                                                                                Route 1 
                                                                                <br />
                                                                                1A: Grace Pointe, Severn...................................7:30am, 4:45pm
                                                                                <br />
                                                                                1B: Greater Annapolis Y, Arnold...........................7:50am, 5:00pm
                                                                            </li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("campsregistration")'><span class="btn-velvet-border">How to Register</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="campsprofilesbaltimorecity">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#mob-tab-03" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">BALTIMORE CITY</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="mob-tab-03">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <a href="camps.aspx" onclick='SpecialRedirectPartThree("campsyouth","brochuresformsmanuals")'>Brochures, Forms & Manuals</a>
                                                                <h3 class="title-03">Weinberg Family Center Y</h3>
                                                                <p>
                                                                    900 E. 33rd Street
                                                                    <br />
                                                                    Baltimore, MD 21218
                                                                    <br />
                                                                    410-889-9622 
                                                                </p>
                                                                <ul>
                                                                    <li>Camp at the Weinberg Family Center Y offers a variety of mainly outdoor activities
                                                                        such as arts, crafts, science projects, skits and songs, reading and journaling,
                                                                        games, and sports. Water games and other cooling activities occur daily with swimming
                                                                        2-3 times a week. Campers also participate in weekly themed special events and/or
                                                                        field trips. This kind of camp setting is known as "Activity Central". </li>
                                                                    <li>Weekly camp sessions run 6/16 - 8/15</li>
                                                                    <li>Available Camps
                                                                        <ul>
                                                                            <li>Youth Camps: Buccaneers (children entering kindergarten), Pioneers (children entering
                                                                                grades 1-2), Voyagers (children entering grades 3-4), Rangers (children entering
                                                                                grades 5-6)</li>
                                                                            <li>Teen Camps: Adventurers (entering grades 7-8), Grand Adventurers (entering grades
                                                                                9-11), Mission Adventurers (entering grades 9-12)</li>
                                                                            <li>Specialty Camps: Basketball Camp (entering grades 1-6), Soccer Camp (entering grades
                                                                                1-6), Flag Football Camp (entering grades 1-6), Art (entering grades 1-6), Weird
                                                                                Science (entering grades 1-5), Drama (entering grades 1-6), Jolts & Volts (entering
                                                                                grades 1-5) </li>
                                                                        </ul>
                                                                    </li>

                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("campsregistration")'><span class="btn-velvet-border">How to Register</span></a>
                                                               <%-- <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="campsprofilesbaltimore">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#mob-tab-04" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">BALTIMORE COUNTY</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="mob-tab-04">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <a href="camps.aspx" onclick='SpecialRedirectPartThree("campsyouth","brochuresformsmanuals")'>Brochures, Forms & Manuals</a>
                                                                <h3 id="toptwo" class="title-03">Five camp locations in Baltimore County</h3>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <td><strong>Immanuel Baptist Church - NEW</strong>
                                                                            <br />
                                                                            5050 Bucks School House Road
                                                                            <br />
                                                                            Baltimore, MD 21237
                                                                            <br />
                                                                            410-529-1999
                                                                            <br />
                                                                            <a href="#immanuel">See camp profile</a>
                                                                        </td>
                                                                        <td><strong>Parkville Family Center Y</strong>
                                                                            <br />
                                                                            8910 Waltham Woods Road<br />
                                                                            Parkville, MD 21234<br />
                                                                            410-663-1300
                                                                            <br />
                                                                            <a href="#parkville">See camp profile</a>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td><strong>Perry Hall Presbyterian Church</strong>
                                                                            <br />
                                                                            8848 Belair Road<br />
                                                                            Perry Hall, MD 21236<br />
                                                                            410-529-1999<br />
                                                                            <a href="#perry">See camp profile</a>
                                                                        </td>
                                                                        <td><strong>St. John’s United Church of Christ</strong>
                                                                            <br />
                                                                            1000 S. Rolling Road<br />
                                                                            Catonsville, MD 21228<br />
                                                                            410-747-9622<br />
                                                                            <a href="#church">See camp profile</a>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td><strong>The Orokawa Family Center Y in Towson</strong>
                                                                            <br />
                                                                            <i>(formerly Towson Family Center Y)</i>
                                                                            <br />
                                                                            8848 Belair Road<br />
                                                                            600 W. Chesapeake Avenue<br />
                                                                            Towson, MD 21204<br />
                                                                            410-823-8870
                                                                            <br />
                                                                            <a href="#orokawa">See camp profile</a>
                                                                        </td>
                                                                        <td></td>
                                                                    </tr>
                                                                </table>
                                                                <h3 id="immanuel" class="title-03">Immanuel Baptist Church Profile – NEW</h3>
                                                                <ul>
                                                                    <li>Immanuel Baptist Church offers a variety of unique camp experiences in a beautiful,
                                                                        outdoor, natural setting. There are nature hikes, outdoor camping and life skills
                                                                        such as pitching a tent and cooking over a fire, archery, confidence course challenges,
                                                                        and more! Campers also participate in reading and journaling, and weekly themed
                                                                        events and/or field trips. This kind of camp setting is known as the "Great Outdoors".
                                                                    </li>
                                                                    <li>Weekly camp sessions run 6/16 - 8/22</li>
                                                                    <li>Available Camps
                                                                        <ul>
                                                                            <li>Youth Camps: Buccaneers (children entering kindergarten), Pioneers (children entering
                                                                                grades 1-2), Voyagers (children entering grades 3-4), Rangers (children entering
                                                                                grades 5-6)</li>
                                                                            <li>Teen Camps: Adventurers (entering grades 7-8), Grand Adventurers (entering grades
                                                                                9-11), Mission Adventurers (entering grades 9-12)</li>
                                                                            <li>Specialty Camps: Environment Explorers (entering grades 1-5), Journaling (entering
                                                                                grades 1-6), Sports Mix Camp (entering grades (1-6), Jolts & Volts (entering grades
                                                                                1-5), Drama (entering grades 1-6)</li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                                <a href="#toptwo">BACK TO TOP</a>
                                                                <h3 id="parkville" class="title-03">Parkville Family Center Y Profile</h3>
                                                                <ul>
                                                                    <li>Camp at the Parkville Family Center Y offers a variety of mainly indoor activities
                                                                        such as arts, crafts, science projects, skits and songs, reading, journaling, and
                                                                        board games. Water games and other cooling activities occur daily with swimming
                                                                        2-3 times a week. Campers also participate in weekly themed special events and/or
                                                                        field trips. This kind of camp setting is known as "Activity Central". </li>
                                                                    <li>Weekly camp sessions run 6/16 - 8/15</li>
                                                                    <li>Available Camps
                                                                        <ul>
                                                                            <li>Youth Camps: Buccaneers (children entering kindergarten), Pioneers (children entering
                                                                                grades 1-2), Voyagers (children entering grades 3-4), Rangers (children entering
                                                                                grades 5-6)</li>
                                                                            <li>Teen Camps: Mission Adventurers (entering grades 9-12)</li>
                                                                            <li>Specialty Camps: Summer Robotics Level 1 - Beginner (entering grades 3-6), Summer
                                                                                Robotics Level 2 - Intermediate (entering grades 3-6), Sports Mix Camp (entering
                                                                                grades 1-6), Summer Robotics Level 3 - Advanced (entering grades 3-6), Art (entering
                                                                                grades 1-6), Weird Science (entering grades 1-5), Journaling (entering grades 1-6)
                                                                            </li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                                <a href="#toptwo">BACK TO TOP </a>
                                                                <h3 id="perry" class="title-03">Perry Hall Presbyterian Church Profile</h3>
                                                                <ul>
                                                                    <li>Camp at Perry Hall Presbyterian Church offers a variety of mainly indoor activities
                                                                        including crafts, board games, and more. Other activities include skits and songs
                                                                        at Imagination Station, games and/or sports skills at Body Central, week-long projects
                                                                        like murals and big puzzles, reading, and journaling. Campers also participate in
                                                                        weekly themed special events and/or field trips. Water games and other cooling activities
                                                                        occur with swimming one time a week. This kind of camp setting is called "The Lodge".
                                                                    </li>
                                                                    <li>Weekly camp sessions run 6/16 - 8/22</li>
                                                                    <li>Available Camps
                                                                        <ul>
                                                                            <li>Youth Camps: Buccaneers (children entering kindergarten), Pioneers (children entering
                                                                                grades 1-2), Voyagers (children entering grades 3-4), Rangers (children entering
                                                                                grades 5-6)</li>
                                                                            <li>Teen Camps: Mission Adventurers (entering grades 9-12)</li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                                <a href="#toptwo">BACK TO TOP</a>
                                                                <h3 id="church" class="title-03">St. John's United Church of Christ Profile</h3>
                                                                <ul>
                                                                    <li>Camp at St. John's United Church of Christ offers a variety of mainly outdoor activitiessuch
                                                                        as arts, crafts, science projects, skits and songs, reading and journaling, games,
                                                                        and sports. Water games and other cooling activities occur daily with swimming 2-3
                                                                        times a week. This new camp location is just two blocks from the Catonsville Family
                                                                        Center Y, so campers will be able to enjoy swimming and some use of the grounds
                                                                        at the Y via a short walk! Campers also participate in weekly themed special events
                                                                        and/or field trips. This kind of camp setting is known as "Activity Central".
                                                                    </li>
                                                                    <li>Weekly camp sessions run 6/16 - 8/22</li>
                                                                    <li>Available Camps
                                                                        <ul>
                                                                            <li>Youth Camps: Buccaneers (children entering kindergarten), Pioneers (children entering
                                                                                grades 1-2), Voyagers (children entering grades 3-4), Rangers (children entering
                                                                                grades 5-6)</li>
                                                                            <li>Teen Camps: Adventurers (entering grades 7-8), Grand Adventurers (entering grades
                                                                                9-11), Mission Adventurers (entering grades 9-12)</li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                                <a href="#toptwo">BACK TO TOP</a>
                                                                <h3 id="orokawa" class="title-03">The Orokawa Family Center Y in Towson Profile</h3>
                                                                <ul>
                                                                    <li>Camp at the Orokawa Family Center Y in Towson offers a variety of mainly outdoor
                                                                        activities such as arts, crafts, science projects, skits and songs, reading and
                                                                        journaling, games, and sports. Water games and other cooling activities occur daily
                                                                        with swimming 2-3 times a week. Campers also participate in weekly themed special
                                                                        events and/or field trips. This kind of camp setting is known as "Activity Central".
                                                                    </li>
                                                                    <li>Weekly camp sessions run 6/16 - 8/22</li>
                                                                    <li>Available Camps
                                                                        <ul>
                                                                            <li>Youth Camps: Buccaneers (children entering kindergarten), Pioneers (children entering
                                                                                grades 1-2), Voyagers (children entering grades 3-4), Rangers (children entering
                                                                                grades 5-6)</li>
                                                                            <li>Teen Camps: Adventurers (entering grades 7-8), Grand Adventurers (entering grades
                                                                                9-11), Mission Adventurers (entering grades 9-12)</li>

                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                                <a href="#toptwo">BACK TO TOP</a>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("campsregistration")'><span class="btn-velvet-border">How to Register</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="campsprofilescarroll">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#mob-tab-05" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">CAROLL COUNTY & OVERNIGHT CAMP</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="mob-tab-05">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <a href="camps.aspx" onclick='SpecialRedirectPartThree("campsyouth","brochuresformsmanuals")'>Brochures, Forms & Manuals</a>
                                                                <h3 id="topthree" class="title-03">Two camp locations in Carroll County</h3>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <td><strong>Camp Hashawha Overnight Camp</strong>
                                                                            <br />
                                                                            Hashawha Center
                                                                            <br />
                                                                            300 John Owings Road
                                                                            <br />
                                                                            Westminster, MD 21158
                                                                            <br />
                                                                            <a href="#hashawha">See camp profile</a>
                                                                        </td>
                                                                        <td><strong>Hill Family Center Y</strong>
                                                                            <br />
                                                                            1719 Sykesville Road<br />
                                                                            Westminster, MD 21157<br />
                                                                            410-848-3660<br />
                                                                            <a href="#hill">See camp profile</a>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <h3 id="hashawha" class="title-03">Camp Hashawha Overnight CampProfile</h3>
                                                                <p>
                                                                    <i>All inquiries for Camp Hashawha Overnight Camp can be directed to <strong>ANY
                                                                    </strong>Family Center Y.</i>
                                                                </p>
                                                                <ul>
                                                                    <li>Children from across central Maryland and beyond attend Camp Hashawha to experience
                                                                        the ultimate overnight camping experience! Activities include canoeing, archery,
                                                                        fishing, hiking, swimming, low ropes courses, camp fires, sports, and more. Campers
                                                                        enjoy comfortable cabins and great food, and participate in weekly themed activities
                                                                        and special events. This kind of camp setting is called the "Great Outdoors".
                                                                    </li>
                                                                    <li>Weekly camp sessions run 6/30 - 7/4, 7/7 - 7/11, 7/21 - 7/25, 8/4 - 8/8, 8/11 -
                                                                        8/15</li>
                                                                    <li>Available to children and youth ages 8 - 15</li>
                                                                    <li>Add-ons (tailor your week at Camp Hashawha by adding on a focused activity station):
                                                                        Drama, STEM, Archery</li>

                                                                </ul>
                                                                <a href="#topthree">BACK TO TOP</a>
                                                                <h3 id="hill" class="title-03">Hill Family Center Y Profile</h3>
                                                                <ul>
                                                                    <li>The Hill Family Center Y offers a new, mainly outdoor, summer experience you won't
                                                                        find at any other Y camp location!  Customize your camp day with free activity tracks,
                                                                        plus enjoy special add-on's like swimming, archery and summer robotics. Not to mention
                                                                        our golf specialty camp and new batting cages and ga-ga pit! This kind of camp setting
                                                                        is known as "Activity Central". <%--<a href="camps.aspx">Learn more </a>.--%>
                                                                    </li>
                                                                    <li>Weekly camp sessions run 6/16 - 8/22</li>
                                                                    <li>Available Camps
                                                                        <ul>
                                                                            <li>Youth Camps: Buccaneers (children entering kindergarten), Pioneers (children entering
                                                                                grades 1-2), Voyagers (children entering grades 3-4), Rangers (children entering
                                                                                grades 5-6)</li>
                                                                            <li>Teen Camps: Adventurers (entering grades 6-8), Grand Adventurers (entering grades
                                                                                9-11), Mission Adventurers (entering grades 9-12)</li>
                                                                            <li>Specialty Add-On's: Summer Robotics Level 1 - Beginner (entering grades 3-6), Summer
                                                                                Robotics Level 2 - Intermediate (entering grades 3-6), Golf Camp (ages 7-14), Swimming
                                                                                (entering grades 1-6), Archery (entering grades 3-6)</li>

                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                                <a href="#topthree">BACK TO TOP</a>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("campsregistration")'><span class="btn-velvet-border">How to Register</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="campsprofilesharford">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#mob-tab-06" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">HARFORD COUNTY</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="mob-tab-06">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <a href="camps.aspx" onclick='SpecialRedirectPartThree("campsyouth","brochuresformsmanuals")'>Brochures, Forms & Manuals</a>
                                                                <p>All inquiries for Y camps in Harford County should be directed to:</p>
                                                                <h3 class="title-03">Ward Family Center Y</h3>
                                                                <p>
                                                                    101 Walter Ward Boulevard
                                                                    <br />
                                                                    Abingdon, MD 21009
                                                                    <br />
                                                                    410-679-9622
                                                                    <br />
                                                                    (Off Rte. 924 behind Wegman's)
                                                                </p>
                                                                <h3 id="topfour" class="title-03">Four camp locations in Harford County</h3>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <td><strong>Camp Aberdeen</strong>
                                                                            <br />
                                                                            615 Old Robin Hood Road
                                                                            <br />
                                                                            Aberdeen, MD 21001
                                                                            <br />
                                                                            <a href="#aberdeen">See camp profile</a>
                                                                        </td>
                                                                        <td><strong>The Highlands School</strong>
                                                                            <br />
                                                                            <strong><i>(location change – formerly Ring Factory)</i></strong>
                                                                            <br />
                                                                            2904 Creswell Road<br />
                                                                            Bel Air, MD 21015<br />
                                                                            <a href="#highland">See camp profile</a>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td><strong>Rockfield Manor</strong>
                                                                            <br />
                                                                            501 E. Churchville Road<br />
                                                                            Bel Air, MD 21014<br />
                                                                            <a href="#rockfield">See camp profile</a>
                                                                        </td>
                                                                        <td><strong>Ward Family Center Y</strong>
                                                                            <br />
                                                                            101 Walter Ward Boulevard<br />
                                                                            Abingdon, MD 21009<br />
                                                                            <a href="#walter">See camp profile</a>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <h3 id="aberdeen" class="title-03">Camp Aberdeen Profile</h3>
                                                                <ul>
                                                                    <li>Camp Aberdeen offers a variety of unique camp experiences in a beautiful, outdoor,
                                                                        natural setting. There are nature hikes, outdoor camping and life skills such as
                                                                        pitching a tent and cooking over a fire, archery, confidence course challenges,
                                                                        and more! Campers also participate in reading and journaling , and weekly themed
                                                                        events and/or field trips. This kind of camp setting is known as the "Great Outdoors".
                                                                    </li>
                                                                    <li>Weekly camp sessions run 6/16 - 8/22</li>
                                                                    <li>Available Camps
                                                                        <ul>
                                                                            <li>Youth Camps: Buccaneers (children entering kindergarten), Pioneers (children entering
                                                                                grades 1-2), Voyagers (children entering grades 3-4), Rangers (children entering
                                                                                grades 5-6)</li>
                                                                            <li>Teen Camps: Mission Adventurers (entering grades 9-12)</li>

                                                                        </ul>
                                                                    </li>

                                                                </ul>
                                                                <a href="#topfour">BACK TO TOP</a>
                                                                <h3 id="highland" class="title-03">The Highlands School Profile (location change - formerly Ring Factory)</h3>
                                                                <ul>
                                                                    <li>Camp at The Highlands School offers a variety of mainly outdoor activities with some indoor 
opportunities. This kind of camp setting is called "The Lodge".
                                                                    </li>
                                                                    <li>Weekly sessions available 6/23 - 8/1
                                                                    </li>
                                                                    <li>Full-day specialty camps are available on Tuesdays, Wednesdays and Thursdays (3 days a week) at 
   The Highlands School. You may also add-on our 2-day traditional camp option to make a 5-day 
camp experience. These are the only camp options for The Highlands School.
                                                                    </li>
                                                                    <li>Available Camps (entering grades K-6)
                                                                        <ul>
                                                                            <li>3-Day Specialty Camps: Sports Mix Camp; Creative Camps - Art, Drama, Journaling; 
Science Camps - Environmental Explorers, Jolts & Volts, Weird Science
                                                                            </li>
                                                                            <li>5-Day Specialty/Traditional Camp (includes 2-day traditional camp add-on)</li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                                <a href="#topfour">BACK TO TOP</a>
                                                                <h3 id="rockfield" class="title-03">Rockfield Manor Profile</h3>
                                                                <ul>
                                                                    <li>Camp at Rockfield Manor offers a variety of mainly indoor activities including crafts
                                                                        for Creation Station, skits and songs at Imagination Station, games and/or sports
                                                                        skills at Body Central, week-long projects like murals and big puzzles, as well
                                                                        as playing board games, reading, and journaling. Campers also participate in weekly
                                                                        themed special events and/or field trips. Water games and other cooling activities
                                                                        occur with swimming one time a week. This kind of camp setting is called "The Lodge".
                                                                    </li>
                                                                    <li>Weekly camp sessions run 6/16 - 8/15  </li>
                                                                    <li>Available Camps
                                                                        <ul>
                                                                            <li>Youth Camps: Buccaneers (children entering kindergarten), Pioneers (children entering
                                                                                grades 1-2), Voyagers (children entering grades 3-4), Rangers (children entering
                                                                                grades 5-6)</li>
                                                                            <li>Teen Camps: Mission Adventurers (entering grades 9-12)</li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                                <a href="#topfour">BACK TO TOP</a>
                                                                <h3 id="walter" class="title-03">Ward Family Center Y Profile</h3>
                                                                <ul>
                                                                    <li>Camp at the Ward Family Center Y offers a variety of mainly outdoor activities such
                                                                        as arts, crafts, science projects, skits and songs, reading and journaling, games,
                                                                        and sports. Water games and other cooling activities occur daily with swimming 2-3
                                                                        times a week in our TWO NEW POOLS! Campers also participate in weekly themed special
                                                                        events and/or field trips. This kind of camp setting is known as "Activity Central".
                                                                    </li>
                                                                    <li>Weekly camp sessions run 6/16 - 8/22  </li>
                                                                    <li>Available Camps
                                                                        <ul>
                                                                            <li>Youth Camps: Buccaneers (children entering kindergarten), Pioneers (children entering
                                                                                grades 1-2), Voyagers (children entering grades 3-4), Rangers (children entering
                                                                                grades 5-6)</li>
                                                                            <li>Teen Camps: Adventurers (entering grades 7-8), Grand Adventurers (entering grades
                                                                                9-11), Mission Adventurers (entering grades 9-12)</li>
                                                                        </ul>
                                                                    </li>

                                                                </ul>
                                                                <a href="#topfour">BACK TO TOP</a>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("campsregistration")'><span class="btn-velvet-border">How to Register</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="campsprofileshoward">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#mob-tab-07" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">HOWARD COUNTY</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="mob-tab-07">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <a href="camps.aspx" onclick='SpecialRedirectPartThree("campsyouth","brochuresformsmanuals")'>Brochures, Forms & Manuals</a>
                                                                <p>All inquiries for Y camps in Howard County should be directed to:</p>
                                                                <h3 class="title-03">Dancel Family Center Y</h3>
                                                                <p>
                                                                    4331 Montgomery Road
                                                                    <br />
                                                                    Ellicott City, MD 21043
                                                                    <br />
                                                                    410-465-4334

                                                                </p>
                                                                <h3 id="topfive" class="title-03">Four camp locations in HowardCounty</h3>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <td><strong>Camp Ilchester</strong>
                                                                            <br />
                                                                            5042 Ilchester Road<br />
                                                                            Ellicott City, MD 21043
                                                                            <br />
                                                                            <a href="#ilchester">See camp profile</a>
                                                                        </td>
                                                                        <td><strong>Dancel Family Center Y</strong>
                                                                            <br />
                                                                            4331 Montgomery Road<br />
                                                                            Ellicott City, MD 21043<br />
                                                                            <a href="#dancel">See camp profile</a>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td><strong>Our Lady of Perpetual Help</strong>
                                                                            <br />
                                                                            4795 Ilchester Road<br />
                                                                            Ellicott City, MD 21043<br />
                                                                            <a href="#perpetual">See camp profile</a>
                                                                        </td>
                                                                        <td><strong>St. John’s Parish Day School</strong>
                                                                            <br />
                                                                            9130 Frederick Road<br />
                                                                            Ellicott City, MD 21042<br />
                                                                            <a href="#parish">See camp profile</a>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <h3 id="ilchester" class="title-03">Camp Ilchester Profile</h3>
                                                                <ul>
                                                                    <li>Camp Ilchester offers a variety of unique camp experiences in a beautiful, outdoor,
                                                                        natural setting. There are nature hikes, outdoor camping and life skills such as
                                                                        pitching a tent and cooking over a fire, archery, confidence course challenges,
                                                                        and more! Campers also participate in reading and journaling , and weekly themed
                                                                        events and/or field trips. This kind of camp setting is known as the "Great Outdoors".
                                                                    </li>
                                                                    <li>Weekly camp sessions run 7/7 - 8/22</li>
                                                                    <li>Available Camps
                                                                        <ul>
                                                                            <li>Youth Camps: Buccaneers (children entering kindergarten), Pioneers (children entering
                                                                                grades 1-2), Voyagers (children entering grades 3-4), Rangers (children entering
                                                                                grades 5-6)</li>
                                                                            <li>Teen Camps: Adventurers (entering grades 7-8), Grand Adventurers (entering grades
                                                                                9-11), Mission Adventurers (entering grades 9-12)</li>
                                                                            <li>Specialty Camps: Sports Mix Camp (entering grades 1-6), Environmental Explorers
                                                                                (entering grades 1-5), Drama (entering grades 1-6)</li>
                                                                        </ul>
                                                                    </li>

                                                                </ul>
                                                                <a href="#topfive">BACK TO TOP</a>
                                                                <h3 id="dancel" class="title-03">Dancel Family Center Y Profile</h3>
                                                                <ul>
                                                                    <li>Camp at the Dancel Family Center Y offers a variety of mainly outdoor activities
                                                                        such as arts, crafts, science projects, skits and songs, reading and journaling,
                                                                        games, and sports. Water games and other cooling activities occur daily with swimming
                                                                        2-3 times a week. Campers also participate in weekly themed special events and/or
                                                                        field trips. This kind of camp setting is known as "Activity Central".</li>
                                                                    <li>Weekly camp sessions run 6/16 - 8/15</li>
                                                                    <li>Available Camps
                                                                        <ul>
                                                                            <li>Youth Camps: Buccaneers (children entering kindergarten), Pioneers (children entering
                                                                                grades 1-2), Voyagers (children entering grades 3-4), Rangers (children entering
                                                                                grades 5-6)</li>
                                                                            <li>Teen Camps: Adventurers (entering grades 7-8), Grand Adventurers (entering grades
                                                                                9-11), Mission Adventurers (entering grades 9-12)</li>
                                                                            <li>Specialty Camps: Summer Robotis Level 1 - Beginner (entering grades 3-6), Summer
                                                                                Robotics Level 2  - Intermediate (entering grades 3-6), Summer Robotics Level 3
                                                                                - Advanced (entering grades 3-6)</li>

                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                                <a href="#topfive">BACK TO TOP</a>
                                                                <h3 id="perpetual" class="title-03">Our Lady of Perpetual Help Profile</h3>
                                                                <ul>
                                                                    <li>Camp at Our Lady of Perpetual Help offers a variety of mainly outdoor activities
                                                                        including sports and games, crafts, skits, reading/journaling and more. Campers
                                                                        also participate in weekly themed special events and/or field trips. Water games
                                                                        and other cooling activities occur with swimming one time a week. This kind of camp
                                                                        setting is called "The Lodge".</li>
                                                                    <li>Weekly camp sessions run 6/16 - 7/3</li>
                                                                    <li>Available Camps
                                                                        <ul>
                                                                            <li>Youth Camps: Buccaneers (children entering kindergarten), Pioneers (children entering
                                                                                grades 1-2), Voyagers (children entering grades 3-4), Rangers (children entering
                                                                                grades 5-6)</li>
                                                                            <li>Teen Camps: Adventurers (entering grades 7-8), Grand Adventurers (entering grades
                                                                                9-11), Mission Adventurers (entering grades 9-12)</li>
                                                                            <li>Specialty Camps: Flag Football (entering grades 1-6), Journaling (entering grades
                                                                                1-6), Jolts & Volts (entering grades 1-5)</li>

                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                                <a href="#topfive">BACK TO TOP</a>
                                                                <h3 id="parish" class="title-03">St. John's Parish Day School Profile
                                                                </h3>
                                                                <ul>
                                                                    <li>Camp at St. John's Parish Day School offers a variety of mainly outdoor activities
                                                                        including sports and games, crafts, skits, reading/journaling and more. Campers
                                                                        also participate in weekly themed special events and/or field trips. Water games
                                                                        and other cooling activities occur with swimming one time a week. This kind of camp
                                                                        setting is called "The Lodge".</li>
                                                                    <li>Weekly camp sessions run 6/16 - 8/22</li>
                                                                    <li>Available Camps:
                                                                        <ul>
                                                                            <li>Youth Camps: Youth Camps: Buccaneers (children entering kindergarten), Pioneers
                                                                                (children entering grades 1-2), Voyagers (children entering grades 3-4), Rangers
                                                                                (children entering grades 5-6)</li>
                                                                            <li>Teen Camps: Mission Adventurers (entering grades 9-12)</li>

                                                                        </ul>
                                                                    </li>
                                                                    <li>Specialty Camps: Weird Science (entering grades 1-5), Art (entering grades 1-6),
                                                                        Jolts & Volts (entering grades 1-5), Journaling (entering grades 1-5)</li>

                                                                </ul>
                                                                <a href="#topfive">BACK TO TOP</a>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("campsregistration")'><span class="btn-velvet-border">How to Register</span></a>
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



                        <div class="tab-pane" id="campsmessagess">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="Mytab-02">
                                    <li class="active"><a href="#sub-tab-10" data-toggle="tab">YOUTH CAMPS </a></li>
                                    <li><a href="#sub-tab-11" data-toggle="tab">TEEN CAMPS </a></li>
                                    <li><a href="#sub-tab-12" data-toggle="tab">CARROLL COUNTY CAMP </a></li>
                                    <li><a href="#sub-tab-13" data-toggle="tab">OVERNIGHT CAMP </a></li>
                                    <li><a href="#sub-tab-14" data-toggle="tab">SPECIALTY CAMPS </a></li>
                                    <li><a href="#sub-tab-15" data-toggle="tab">SUMMER LEARNING FOR PRESCHOOLERS </a>
                                    </li>

                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="sub-tab-10">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#mob-sub-tab-11" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">YOUTH CAMPS</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="mob-sub-tab-11">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <a href="camps.aspx" onclick='SpecialRedirectPartThree("campsyouth","brochuresformsmanuals")'>Brochures, Forms & Manuals</a>
                                                                <p>
                                                                    Y camps for children entering grades K - 6 are available in three different camp
                                                                    settings. Campers are divided by grade and participate in age-appropriate activities.
                                                                    The activities available vary by camp setting.
                                                                </p>
                                                                <p><strong>Buccaneers</strong> (entering kindergarten)</p>
                                                                <p><strong>Pioneers </strong>(entering grades 1 – 2)</p>
                                                                <p><strong>Voyagers</strong> (entering grades 3 – 4)</p>
                                                                <p><strong>Rangers </strong>(entering grades 5 – 6)</p>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <th>Great Outdoors</th>
                                                                        <th>The Lodge</th>
                                                                        <th>Activity Central</th>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Our "Great Outdoors" camps offer a unique camp experience in beautiful, outdoor,
                                                                            natural camp settings. Activities include nature hikes, outdoor camping and life
                                                                            skills such as pitching a tent and cooking over a fire, confidence course challenges,
                                                                            archery, and more. Waterfront locations add endless water fun like swimming, canoeing,
                                                                            crabbing, and fishing! Campers also participate in reading and journaling, and weekly
                                                                            themed events and/or field trips. Activities vary by location.
                                                                        </td>
                                                                        <td>Our "The Lodge" camps offer a variety of fun activities. Some locations offer mainly
                                                                            indoor activities with some outdoor camp opportunities, while others offer mainly
                                                                            outdoor activities with some indoor camp opportunities. Activities include creative
                                                                            projects, skits and songs, games, sports, week-long projects like murals, giant
                                                                            puzzles and more. Weekly swim opportunities are available. Campers also participate
                                                                            in reading and journaling, and weekly themed events and/or field trips. Activities
                                                                            vary by location.
                                                                        </td>
                                                                        <td>Our "Activity Central" camps offer a variety of outdoor activities such as crafts,
                                                                            songs and games, sports, science projects, nature walks, and more. Water and cooling
                                                                            activities occur daily. Weekly swim opportunities are available and limited indoor
                                                                            time is rotated throughout the day at some locations. Campers also participate in
                                                                            reading and journaling, and weekly themed events and/or field trips. Activities
                                                                            vary by location.
                                                                        </td>
                                                                    </tr>
                                                                </table>

                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <th>Great Outdoors Fees</th>
                                                                        <th>The Lodge Fees</th>
                                                                        <th>Activity Central Fees</th>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Family Member   $168/wk
                                                                            <br />
                                                                            Youth Member   $210/wk
                                                                            <br />
                                                                            Open Rate 
                                                                            <br />
                                                                            $217/wk
                                                                            <br />
                                                                            <br />
                                                                            <i>(Anne Arundel County)</i><br />
                                                                            Family Member  $157/wk
                                                                            <br />
                                                                            Youth Member  $170/wk
                                                                            <br />
                                                                            Open Rate  
                                                                            <br />
                                                                            $178/wk
                                                                        </td>
                                                                        <td>Family Member  $163/wk
                                                                            <br />
                                                                            Youth Member   $205/wk
                                                                            <br />
                                                                            Open Rate   
                                                                            <br />
                                                                            $214/wk
                                                                            <br />
                                                                            <br />
                                                                            <i>(Anne Arundel County)</i><br />
                                                                            Family Member  $148/wk
                                                                            <br />
                                                                            Youth Member   $162/wk
                                                                            <br />
                                                                            Open Rate   
                                                                            <br />
                                                                            $170/wk
                                                                        </td>
                                                                        <td>Family Member  $158/wk
                                                                            <br />
                                                                            Youth Member   $197/wk
                                                                            <br />
                                                                            Open Rate   
                                                                            <br />
                                                                            $208/wk
                                                                        </td>
                                                                    </tr>
                                                                </table>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("campsregistration")'><span class="btn-velvet-border">How to Register</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="sub-tab-11">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#mob-sub-tab-12" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">TEEN CAMPS
                                                </a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="mob-sub-tab-12">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <a href="camps.aspx" onclick='SpecialRedirectPartThree("campsyouth","brochuresformsmanuals")'>Brochures, Forms & Manuals</a>
                                                                <p>
                                                                    Teens can register for our regular Adventures (entering grades 6-8), Grand Adventures
                                                                    (entering grades 9-11) and Mission Adventurers (entering grades 9-12) teen camps.
                                                                    These camps will follow our regular teen camp program. Activity tracks are not available
                                                                    with teen camps.
                                                                </p>
                                                                <p><strong>Adventurers </strong>(entering grades 7 – 8)</p>
                                                                <p><strong>Grand Adventurers </strong>(entering grades 9 – 11)</p>
                                                                <p>
                                                                    Teens travel off-site three times a week to destinations like water parks, museums,
                                                                    miniature golf, tubing, hiking trails, movies and more! Several trips may involve
                                                                    opportunities to purchase food and souvenirs (see Camp Parent Manual). Most trips
                                                                    take place between 9am - 4pm, but some may require departure as early as 7am and
                                                                    return as late as 6:30pm. Prices include trips and admission fees.
                                                                </p>
                                                                <h3 class="title-04">Adventurer/Grand Adventurer Fees</h3>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <td>Family Member:
                                                                            <br />
                                                                            $222/wk
                                                                        </td>
                                                                        <td>Youth Member:
                                                                            <br />
                                                                            $260/wk
                                                                        </td>
                                                                        <td>Open Rate:
                                                                            <br />
                                                                            $271/wk
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <p><i>Anne Arundel County</i></p>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <td>Family Member:
                                                                            <br />
                                                                            $201/wk
                                                                        </td>
                                                                        <td>Youth Member:
                                                                            <br />
                                                                            $216/wk
                                                                        </td>
                                                                        <td>Open Rate:
                                                                            <br />
                                                                            $228/wk
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <p><strong>Mission Adventurers </strong>(entering grades 9 – 12)</p>
                                                                <p>
                                                                    Learn new skills, explore possible career choices and earn service learning hours.
                                                                    Teens receive training and hands-on experience working alongside Y camp staff in
                                                                    one or more camp roles that are matched to their interests and skills. Up to 25
                                                                    hours per week may be earned for service learning credits. Mission Adventurer camp
                                                                    roles are available in all Y camps, including specialty camps.
                                                                </p>
                                                                <p><strong>Mission Adventurer Fees</strong></p>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <td>Family Member: 
                                                                            <br />
                                                                            $109/wk
                                                                        </td>
                                                                        <td>Youth Member:
                                                                            <br />
                                                                            $153/wk
                                                                        </td>
                                                                        <td>Open Rate:
                                                                            <br />
                                                                            $175/wk
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <p><i>Anne Arundel County</i></p>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <td>Family Member: 
                                                                            <br />
                                                                            $94/wk
                                                                        </td>
                                                                        <td>Youth Member:
                                                                            <br />
                                                                            $126/wk
                                                                        </td>
                                                                        <td>Open Rate:
                                                                            <br />
                                                                            $137/wk
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("campsregistration")'><span class="btn-velvet-border">How to Register</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="sub-tab-12">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#mob-sub-tab-13" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">CAROLL COUNTY CAMP
                                                </a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="mob-sub-tab-13">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <a href="camps.aspx" onclick='SpecialRedirectPartThree("campsyouth","brochuresformsmanuals")'>Brochures, Forms & Manuals</a>
                                                                <p>
                                                                    We've taken our traditional camp program and merged it with the fun of our summer
                                                                    sports, creative and science programs to create a new summer experience only available
                                                                    at the Hill Family Center Y in Carroll County!
                                                                </p>
                                                                <p>
                                                                    Customize your day with the fun activity tracks, plus enjoy special add-on's like
                                                                    swimming, archery and summer robotics. Not to mention our full-day golf specialty
                                                                    camp and new batting cages, ga-ga pit and more! Free extended morning and afternoon
                                                                    hours available. <a href="pdf/HillSampleSchedule.pdf" target="_blank">See what a sample
                                                                        day looks like! </a>
                                                                </p>
                                                                <h3 class="title-03">Activity Track Choices</h3>
                                                                <p><strong>Camp Fun</strong></p>
                                                                <p>
                                                                    Enjoy all of our regular day camp activities for Buccaneers (entering kindergarten),
                                                                    Pioneers (entering grades 1-2), Voyagers (entering grades 3-4) and Rangers (entering
                                                                    grades 5-6). Field trips are not available.
                                                                </p>
                                                                <p><strong>Basketball</strong></p>
                                                                <p>
                                                                    Learn and develop basketball skills and technique. Each day we will build on the
                                                                    past days skills through fun exciting games.
                                                                </p>
                                                                <p><strong>Gardening</strong></p>
                                                                <p>
                                                                    Campers will cultivate a patch of ground and nurture plants through the summer.
                                                                </p>
                                                                <p><strong>Football</strong></p>
                                                                <p>
                                                                    We will work on passing, catching, blocking and kicking. Campers will rotate through
                                                                    fun stations that develop their skills.
                                                                </p>
                                                                <p><strong>Jewelry Making</strong></p>
                                                                <p>
                                                                    Campers will create wonderful works of wearable art using natural and synthetic
                                                                    materials.
                                                                </p>
                                                                <p><strong>Soccer</strong></p>
                                                                <p>
                                                                    Campers will learn and develop soccer skills designed to improve their individual
                                                                    skills and their ability to play within a team.
                                                                </p>
                                                                <p><strong>Up, Up & Away</strong></p>
                                                                <p>
                                                                    Campers will learn how objects fly independently. They will build rockets, gliders
                                                                    and learn the real art of paper airplane making.
                                                                </p>
                                                                <p><strong>Scrapbooking</strong></p>
                                                                <p>
                                                                    Using their own pictures, campers will learn how to tell their life's storry through
                                                                    scrapbooking. Sports Mix Engage in a variety of fun sports like basketball, soccer,
                                                                    kickball and more while learning the value of teamwork and sportsmanship.  
                                                                </p>
                                                                <p><strong>Skits & Songs</strong></p>
                                                                <p>
                                                                    Campers will learn songs and develop a daily skit to perform for the entire camp.
                                                                    Who will win the "Academy Award" this week?
                                                                </p>
                                                                <p><strong>Floor Hockey</strong></p>
                                                                <p>
                                                                    Campers will work on stick skills, passing, receiving and shooting through a variety
                                                                    of fun games.
                                                                </p>
                                                                <p><strong>Character Puppets</strong></p>
                                                                <p>
                                                                    Campers will learn the art of puppetry and perform a skit that promotes the Y's
                                                                    character
                                                                    values of caring, honesty, respect and responsibility.
                                                                </p>
                                                                <p><strong>Original Writings by...</strong></p>
                                                                <p>
                                                                    Campers will learn to use their creative writing skills to write poems, short stories,
                                                                    crazy mad-libs and more!
                                                                </p>
                                                                <p><strong>Backyard Games</strong></p>
                                                                <p>
                                                                    Enjoy old-school backyard games like spud, capture the flag, wiffle ball, horse
                                                                    shoes
                                                                    and more! Learn new games like “Gaga Pit” and “Box Ball”.
                                                                </p>
                                                                <p><strong>Tape It Up</strong></p>
                                                                <p>
                                                                    Campers will have a blast making wallets, bracelets, purses, head bands and more
                                                                    out of colorfull, decorative tape.
                                                                </p>
                                                                <p><strong>Fizzy, Fuzzy, Slimy, Sticky</strong></p>
                                                                <p>
                                                                    Campers will have fun mixing and creating their own concoctions. Silly putty anyone?
                                                                </p>
                                                                <p><strong>Chirps & Crawlers</strong></p>
                                                                <p>
                                                                    Insects, birds and snakes are fascinating! Learn how these creatures add to our
                                                                    quality
                                                                    of life. Even create your own "bug"!
                                                                </p>
                                                                <h3 class="title-03">How Does It Work?</h3>
                                                                <p>
                                                                    Within each weekly session, there are multiple AM and PM activity track options.
                                                                    Customize your camp experience by choosing the tracks that interest you for that
                                                                    week. For example, choose the Camp Fun activity track for the morning and the Sports
                                                                    Mix track for the afternoon. It's all up to you! <i>Activity tracks run Monday - Thursday.
                                                                        Fridays are Spirit Day/Special Event Days!</i>
                                                                </p>
                                                                <p>Activity Track Schedule Options</p>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <th>Camp Weeks</th>
                                                                        <th>A.M. Activity Track</th>
                                                                        <th>P.M. Activity Track</th>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Week 1: 6/16-6/20</td>
                                                                        <td>Camp Fun
                                                                            <br />
                                                                            Basketball
                                                                            <br />
                                                                            Soccer
                                                                            <br />
                                                                            Gardening
                                                                        </td>
                                                                        <td>Camp Fun
                                                                            <br />
                                                                            Football
                                                                            <br />
                                                                            Backyard Games
                                                                            <br />
                                                                            Up, Up & Away
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Week 2: 6/23-6/27</td>
                                                                        <td>Camp Fun
                                                                            <br />
                                                                            Basketball
                                                                            <br />
                                                                            Sports Mix
                                                                            <br />
                                                                            Character Puppets
                                                                        </td>
                                                                        <td>Camp Fun
                                                                            <br />
                                                                            Basketball
                                                                            <br />
                                                                            Scrapbooking
                                                                            <br />
                                                                            Chirps & Crawlers
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Week 3: 6/30-7/3*</td>
                                                                        <td>Camp Fun
                                                                            <br />
                                                                            Floor Hockey<br />
                                                                            Soccer<br />
                                                                            Jewelry Making
                                                                        </td>
                                                                        <td>Camp Fun
                                                                            <br />
                                                                            Floor Hockey<br />
                                                                            Sports Mix
                                                                            <br />
                                                                            Gardening
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Week 4: 7/7-7/11</td>
                                                                        <td>Camp Fun
                                                                            <br />
                                                                            Soccer<br />
                                                                            Skits & Songs<br />
                                                                            Scrapbooking
                                                                        </td>
                                                                        <td>Camp Fun
                                                                            <br />
                                                                            Soccer<br />
                                                                            Football<br />
                                                                            Fizzy, Fuzzy, Slimy, Sticky
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Week 5: 7/14-7/18</td>
                                                                        <td>Camp Fun
                                                                            <br />
                                                                            Football<br />
                                                                            Sports Mix<br />
                                                                            Original Writings by...
                                                                        </td>
                                                                        <td>Camp Fun<br />
                                                                            Football<br />
                                                                            Backyard Games<br />
                                                                            Character Puppets
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Week 6: 7/21-7/25</td>
                                                                        <td>Camp Fun<br />
                                                                            Basketball<br />
                                                                            Soccer<br />
                                                                            Gardening
                                                                        </td>
                                                                        <td>Camp Fun<br />
                                                                            Basketball<br />
                                                                            Tape It Up<br />
                                                                            Skits & Songs
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Week 7: 7/28-8/1</td>
                                                                        <td>Camp Fun<br />
                                                                            Floor Hockey<br />
                                                                            Sports Mix<br />
                                                                            Fizzy, Fuzzy, Slimy, Sticky
                                                                        </td>
                                                                        <td>Camp Fun<br />
                                                                            Soccer<br />
                                                                            Sports Mix<br />
                                                                            Scrapbooking
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Week 8: 8/4-8/8</td>
                                                                        <td>Camp Fun<br />
                                                                            Football<br />
                                                                            Backyard Games<br />
                                                                            Skits & Songs
                                                                        </td>
                                                                        <td>Camp Fun<br />
                                                                            Football<br />
                                                                            Character Puppets<br />
                                                                            Chirps & Crawlers
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Week 9: 8/11-8/15</td>
                                                                        <td>Camp Fun<br />
                                                                            Backyard Games<br />
                                                                            Basketball<br />
                                                                            Jewelry Making
                                                                        </td>
                                                                        <td>Camp Fun<br />
                                                                            Floor Hockey<br />
                                                                            Soccer<br />
                                                                            Up, Up & Away
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Week 10: 8/18-8/22</td>
                                                                        <td>Camp Fun<br />
                                                                            Soccer<br />
                                                                            Basketball<br />
                                                                            Original Writings by...
                                                                        </td>
                                                                        <td>Camp Fun<br />
                                                                            Tape It Up<br />
                                                                            Sports Mix<br />
                                                                            Gardening
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <h3 class="title-03">Hill Family Center Y Camp Fees</h3>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <th>Family Member:</th>
                                                                        <th>Youth Member:</th>
                                                                        <th>Open Rate:</th>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>$158/wk</td>
                                                                        <td>$197/wk</td>
                                                                        <td>$208/wk</td>
                                                                    </tr>

                                                                </table>
                                                                <p>
                                                                    <i>Please Note: children entering kindergarten (Buccaneers) can only participate
                                                                    in the Camp Fun activity tracks.</i>
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("campsregistration")'><span class="btn-velvet-border">How to Register</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="sub-tab-13">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#mob-sub-tab-14" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">OVERNIGHT CAMP</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="mob-sub-tab-14">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <a href="camps.aspx" onclick='SpecialRedirectPartThree("campsyouth","brochuresformsmanuals")'>Brochures, Forms & Manuals</a>
                                                                <p>
                                                                    Enjoy the ultimate overnight camping experience at Camp Hashawha! Located in Carroll
                                                                    County, Camp Hashawha offers so many exciting activities, your child won't know
                                                                    what to do first! Click the Quick Link to check out our 2014 Overnight Camp brochure!
                                                                </p>
                                                                <p>Every week, overnight campers may experience the following:</p>
                                                                <ul>
                                                                    <li>campfires</li>
                                                                    <li>team building activities  </li>
                                                                    <li>environmental education</li>
                                                                    <li>hikes (including the famous mud hike)</li>
                                                                    <li>fishing </li>
                                                                    <li>tons of games</li>
                                                                    <li>new friendships</li>
                                                                    <li>low ropes course</li>
                                                                    <li>swimming</li>
                                                                    <li>crafts</li>
                                                                    <li>archery</li>
                                                                    <li>canoeing</li>
                                                                    <li>terrific food</li>
                                                                    <li>sports</li>
                                                                    <li>games</li>
                                                                </ul>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <td>
                                                                            <p><strong>Location</strong></p>
                                                                            <p><strong>Ages</strong></p>
                                                                            <p><strong>Sessions & Themes</strong></p>
                                                                        </td>
                                                                        <td>
                                                                            <p>Hashawha Center, 300 John Owings Road, Westminster, MD 21158</p>
                                                                            <p>8-15</p>
                                                                            <p><strong>6/30 - 7/4: Party Like a Y Star</strong></p>
                                                                            <p>
                                                                                Enjoy endless fun during the day and party like a Y star at night! During the day
                                                                                participate in activities such as campfires, canoeing, swimming, a challenge course,
                                                                                and even the famous mud hike! Every evening will include festivities like talent
                                                                                shows, camp fires and dancing!
                                                                            </p>
                                                                            <p><strong>7/7 - 7/11: Mud, Sweat, and Glory</strong></p>
                                                                            <p>
                                                                                Each cabin is transformed into a country that competes for all the glory in the
                                                                                Hashawha
                                                                                Summer Games. Campers will participate in a "parade of nations", relays, canoeing,
                                                                                and a camp-wide marathon, as well as some non-traditional sports like toilet seat
                                                                                discuss, cannon ball plunge, and extreme green bean curling!
                                                                            </p>
                                                                            <p><strong>7/21 - 7/25: Super Hero All-Stars</strong></p>
                                                                            <p>
                                                                                Find your inner super hero and help the camp defeat Captain Chaos! Create your own
                                                                                super powers, costume, and name and showcase them at the Super Hero Talent Show.
                                                                                Show your super hero strength on the challenge course designed by the super villain
                                                                                himself, Captain Chaos! Celebrate your success at the Super Hero Dance Party!
                                                                            </p>
                                                                            <p><strong>8/4 - 8/8: Myths and Legends</strong></p>
                                                                            <p>
                                                                                The Renaissance has arrived at Camp Hashawha! Travel back to medieval times and
                                                                                help
                                                                                the Blue Knights defend the Kingdom of Hashawha! Defeat the evil Silver Knight.
                                                                                Save the princess. Compete in medieval adventures such as jousting. Participate
                                                                                in a knighting ceremony. Join us as we celebrate the legend of the Hashawha Blue
                                                                                Knights!
                                                                            </p>
                                                                            <p><strong>8/11 - 8/15: Survivor Reunion Week</strong></p>
                                                                            <p>
                                                                                Our most popular camp theme, Survivor, is joined with our Reunion theme! Campers
                                                                                from previous weeks or years are encouraged to come back and reunite with old friends.
                                                                                Each cabin team will join forces to win the Survivor Challenges. Create a tribal
                                                                                flag and participate in survivor-themed activities including fire building, capture
                                                                                the flag, swimming, tribal dance, and more! New this year – our Survivor Twilight
                                                                                Night Hike where campers will take their flashlights and hike through the forbidden
                                                                                forest to reach the council ring and find out who is the ultimate survivor!
                                                                            </p>

                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <p><strong>Add-On’s</strong></p>
                                                                        </td>
                                                                        <td>
                                                                            <p>
                                                                                Daily activities at Camp Hashawha are full of adventure! But now you can tailor
                                                                                your
                                                                                week by adding on one of our focused activity stations for an additional $30 per
                                                                                week.
                                                                            </p>
                                                                            <ul>
                                                                                <li><strong>Drama </strong>- Learn techniques and skills to create your own variety
                                                                                    show of songs, dances, and skits. Perform for camp and for parents!</li>
                                                                                <li><strong>STEM</strong>  - Build a balloon rocket! Engineer a boat! Create a flinker
                                                                                    (an object that neither sinks nor floats). Explore the natural camp setting through
                                                                                    environmental science and unique outdoor games.</li>
                                                                                <li><strong>Archery </strong>- Channel your inner Katniss from The Hunger Games, or
                                                                                    Hawk from Avengers! Learn archery safety and technique as you practice on a variety
                                                                                    of targets.</li>
                                                                            </ul>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <strong>Amenities</strong>
                                                                        </td>
                                                                        <td>Modern Cabins, Outdoor Pool, Sports Fields, Hiking Trails, Lake Hashawha, Nature
                                                                            Center, Pavilions, Dining Hall, Shower/Toilet Facilities and more!
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <strong>Activities</strong>
                                                                        </td>
                                                                        <td>Archery, Canoeing, Hiking, Fishing, Low Ropes Course, Swimming, Sports and Games,
                                                                            Campfires, Crafts, Environmental Education, Team Building <i>Activities, and more! Activities
                                                                                are subject to change. </i>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <strong>Meals</strong>
                                                                        </td>
                                                                        <td>
                                                                            <p>
                                                                                Breakfast: French toast, sausage, fruit, scrambled eggs, pancakes, cereal, milk,
                                                                                juice, bacon, yogurt, and more.
                                                                            </p>
                                                                            <p>
                                                                                Lunch/Dinner: Fajitas, nachos, meatball subs, veggies, chicken tenders, tacos, hamburgers,
                                                                                hot dogs, salad, and more.
                                                                            </p>
                                                                            <p><i>Every effort will be made to accommodate special dietary needs.</i></p>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <strong>Safety</strong>
                                                                        </td>
                                                                        <td>All activities are designed with safety in mind. All Y staff are CPR and First Aid
                                                                            certified.</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <strong>Drop-off/Pick-up</strong>
                                                                        </td>
                                                                        <td>
                                                                            <p>
                                                                                For your added convenience, campers can now be dropped off and picked up at several
                                                                                locations:
                                                                            </p>
                                                                            <ul>
                                                                                <li><strong>Camp Hashawha </strong>- Campers can be dropped off at Camp Hashawha on
                                                                                    day 1 at 9:00am and picked up on the last day at 11:00am.</li>
                                                                                <li><strong>Hill Family Center Y </strong>- Campers can be dropped off at the Hill Family
                                                                                    Center Y on day 1 between 7am - 10am and picked up on the last day by 6pm. Transportation
                                                                                    is provided to and from Camp Hashawha at no extra charge!</li>
                                                                                <li><strong>Other Y Centers </strong>- The Dancel, Parkville, Ward and Greater Annapolis
                                                                                    Family Center Y will provide transportation to and from Camp Hashawha. Fee: $20
                                                                                    each way per child per week.</li>
                                                                            </ul>

                                                                        </td>
                                                                    </tr>
                                                                </table>

                                                                <p>Camp Hashawha Fees</p>
                                                                <table class="table table-bordered">
                                                                    <td>Family Member: $347/wk</td>
                                                                    <td>Youth Member: $384/wk</td>
                                                                    <td>Open Rate: $394/wk</td>
                                                                </table>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("campsregistration")'><span class="btn-velvet-border">How to Register</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="sub-tab-14">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#mob-sub-tab-15" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">SPECIALTY CAMP</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="mob-sub-tab-15">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <a href="camps.aspx" onclick='SpecialRedirectPartThree("campsyouth","brochuresformsmanuals")'>Brochures, Forms & Manuals</a>
                                                                <h3 class="title-03">Add-On Specialty Camp</h3>
                                                                <p>
                                                                    Choose to add Summer Robotics (a Y-STEM* Pathway) to the end of your child's camp
                                                                    day or register for it as a stand-alone activity. Summer Robotics camp hours are
                                                                    Monday - Thursday, 4pm - 6pm. If you need camp services the remainder of the day,
                                                                    you must enroll your child in a youth camp program.
                                                                </p>
                                                                <p>*STEM: science, technology, engineering, math</p>
                                                                <p>
                                                                    <strong>Summer Robotics </strong>(entering grades 3 – 6)
                                                                    <br />
                                                                    Enter the world of robotics with a hands-on approach to programming. Assemble LEGO
                                                                    NXT MINDSTORM® robots with a partner or small team, program the robots to navigate
                                                                    an obstacle course, carry out small missions and more! Programs, assembly and missions
                                                                    become more advanced with each level.
                                                                </p>
                                                                <ul>
                                                                    <li>Summer Robotics - Level1
                                                                        <br />
                                                                        Focus on using the program and navigation. No experience necessary.
                                                                    </li>
                                                                    <li>Summer Robotics - Level 2
                                                                        <br />
                                                                        Focus on advanced tasks like using switches and building sumo-bots. Pre-requisite:
                                                                        Level 1

                                                                    </li>
                                                                    <li>Summer Robotics - Level3
                                                                        <br />
                                                                        Focus on sophisticated sensors, multiple motors and custom attachments. Pre-requisite:
                                                                        Level 1 & 2

                                                                    </li>

                                                                </ul>
                                                                <strong>Summer Robotics Fees</strong>
                                                                <p><i>Weekly sessions run four days a week.</i></p>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <td>Family Member:
                                                                            <br />
                                                                            $104/wk
                                                                        </td>
                                                                        <td>Youth Member:
                                                                            <br />
                                                                            $144/wk

                                                                        </td>
                                                                        <td>Open Rate:
                                                                            <br />
                                                                            $154/wk
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <h3 class="title-03">Full Day Specialty Camps</h3>
                                                                <p>
                                                                    Expose your child to specific areas of interest in our full-day, stand-alone specialty
                                                                    camps. Camp hours are 9:00am - 4:00pm with free extended hours available.
                                                                </p>
                                                                <p>
                                                                    <strong>Y Sports Camps</strong> (entering grades 1-6)<br />
                                                                    Y sports camps focus on skill development, practice and fun! Campers will learn
                                                                    fundamentals, develop and improve skills, build confidence, play games and participate in sports-themed 
                                                                    traditional camp activities like crafts and science.
                                                                </p>
                                                                <ul>
                                                                    <li>Basketball Camp
                                                                        <br />
                                                                        Practice specific basketball fundamentals to develop good habits on the basketball
                                                                        court. Players will rotate through specific skill stations. We stress the importance
                                                                        of hard work, communication and a positive attitude while maintaining a fun environment!
                                                                    </li>
                                                                    <li>Flag Football Camp
                                                                        <br />
                                                                        Learn about various field positions like lineman, receiver, special teams and backs.
                                                                        We will build skills through fun drills, clear instruction and game play.
                                                                    </li>
                                                                    <li>Soccer Camp
                                                                        <br />
                                                                        In the morning, we focus on building skills. In the afternoon, enjoy game play and
                                                                        exciting soccer challenges. Your child will come home happy, tired and ready for
                                                                        more the next day!
                                                                    </li>
                                                                    <li>Sports Mix Camp
                                                                        <br />
                                                                        Players will be introduced to a variety of individual sports and team play like
                                                                        soccer, lacrosse, and more! They'll also have fun with non-traditional games like
                                                                        whiffle ball!
                                                                    </li>
                                                                </ul>
                                                                <strong>Y Sports Camp Fees</strong>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <td>Family Member:
                                                                            <br />
                                                                            $194/wk
                                                                        </td>
                                                                        <td>Youth Member:
                                                                            <br />
                                                                            $224/wk

                                                                        </td>
                                                                        <td>Open Rate:
                                                                            <br />
                                                                            $234/wk
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <p>
                                                                    <strong>Creative Expression</strong> (entering grades 1-6)<br />
                                                                    Express yourself through different creative mediums like acting, drawing, painting
                                                                    and poetry. Led by Y camp counselors.
                                                                </p>
                                                                <ul>
                                                                    <li>Art
                                                                        <br />
                                                                        Do you like to doodle on your papers or have you ever wondered what made Leonardo
                                                                        Da Vinci or Pablo Picasso tick? If so, join us for a week of creative exploration
                                                                        that we promise will be ARTRAGEOUS!
                                                                    </li>
                                                                    <li>Drama
                                                                        <br />
                                                                        If you believe "all the world is a stage" then this camp is right up your alley!
                                                                        Spend the week improving skills, performing skits and having fun with simple set
                                                                        designs. Take center stage in the Y Spotlight and let your inner star shine! 
                                                                    </li>
                                                                    <li>Journaling
                                                                        <br />
                                                                        Explore the written word and express yourself through poetry, creative writtings
                                                                        and drawings. You may find that the pen is indeed mightier than the sword!
                                                                    </li>
                                                                </ul>
                                                                <strong>Creative Expression Fees</strong>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <td>Family Member:
                                                                            <br />
                                                                            $210/wk
                                                                        </td>
                                                                        <td>Youth Member:
                                                                            <br />
                                                                            $245/wk

                                                                        </td>
                                                                        <td>Open Rate:
                                                                            <br />
                                                                            $255/wk
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <p>
                                                                    <strong>Y Science</strong> (entering grades 1 – 5)<br />
                                                                    Led by Y camp counselors, campers will experience the ultimate in edutainment!
                                                                </p>
                                                                <ul>
                                                                    <li>Environmental Explorers
                                                                        <br />
                                                                        A natural fit for budding scientists! From the water we drink to the food we eat,
                                                                        the earth's environment affects every aspect  of our lives. Learn about the web
                                                                        of life and our special place among the plants and animals!
                                                                    </li>
                                                                    <li>Weird Science
                                                                        <br />
                                                                        Let's get weird! Explore the science behind scientific curiosities. Investigate
                                                                        the eerie and learn why sometimes truth is even stranger than fiction.
                                                                    </li>
                                                                    <li>Jolts & Volts
                                                                        <br />
                                                                        Light up your summer with an electrifying week at the Y! Campers will experiment
                                                                        with circuits, switches, games and challenges. 
                                                                    </li>
                                                                </ul>
                                                                <strong>Y Science Fees </strong>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <td>Family Member:
                                                                            <br />
                                                                            $199/wk
                                                                        </td>
                                                                        <td>Youth Member:
                                                                            <br />
                                                                            $239/wk

                                                                        </td>
                                                                        <td>Open Rate:
                                                                            <br />
                                                                            $249
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <h3 class="title-03">Specialty Camps at The Highlands School</h3>
                                                                <p>
                                                                    Full-day specialty camps are available on Tuesdays, Wednesdays and Thursdays at The Highlands 
                                                                    School in Bel Air. See above for detailed specialty camp descriptions. 
                                                                    You may also add-on our 2-day traditional camp option to make a 5-day camp experience. 
                                                                    These are the only camp options for The Highlands School.
                                                                </p>
                                                                <p>
                                                                    <strong>Creative Expression</strong> (entering grades K-6)<br />
                                                                </p>
                                                                <ul>
                                                                    <li>Art  
                                                                    </li>
                                                                    <li>Drama   
                                                                    </li>
                                                                    <li>Journaling   
                                                                    </li>
                                                                </ul>
                                                                <p>
                                                                    <strong>Y Science</strong> (entering grades K-6)<br />
                                                                </p>
                                                                <ul>
                                                                    <li>Environmental Explorers   
                                                                    </li>
                                                                    <li>Weird Science    
                                                                    </li>
                                                                    <li>Jolts & Volts    
                                                                    </li>
                                                                </ul>
                                                                <p>
                                                                    <strong>Y Sports Mix Camp</strong> (entering grades K-6)<br />
                                                                </p>
                                                                <strong>3-Day Specialty Camp Fees</strong>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <td>Family Member:
                                                                            <br />
                                                                            $141/wk
                                                                        </td>
                                                                        <td>Youth Member:
                                                                            <br />
                                                                            $165/wk

                                                                        </td>
                                                                        <td>Open Rate:
                                                                            <br />
                                                                            $175/wk
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <strong>5-Day Specialty/Traditional Camp Fees (includes 2-day traditional camp add-on)</strong>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <td>Family Member:
                                                                            <br />
                                                                            $180/wk
                                                                        </td>
                                                                        <td>Youth Member:
                                                                            <br />
                                                                            $220/wk

                                                                        </td>
                                                                        <td>Open Rate:
                                                                            <br />
                                                                            $230/wk
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("campsregistration")'><span class="btn-velvet-border">How to Register</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="sub-tab-15">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#mob-sub-tab-16" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">SUMMER LEARNING FOR PRESCHOOLERS</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="mob-sub-tab-16">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    Summer learning and summer fun is available for preschoolers. Age-appropriate activities
                                                                    include arts & crafts, science experiments, nature walks, cooking projects, sports,
                                                                    field trips, water activities and more! Enroll your little one in our summer preschool
                                                                    program today! Weekly sessions are available. For more information, contact a Y
                                                                    Preschool center below.
                                                                </p>
                                                                <p><strong>Summer Y Preschool Centers</strong></p>
                                                                <ul>
                                                                    <li><a href="../../locations/preschool/catonsville-baltimore-county.aspx">Y Preschool in Catonsville</a>
                                                                        <br />
                                                                        850 South Rolling Road
                                                                        <br />
                                                                        Catonsville, MD 21228
                                                                        <br />
                                                                        410-747-4951
                                                                    </li>
                                                                    <li><a href="../../locations/preschool/owen-brown-howard-county.aspx">Y Preschool in Owen Brown</a><br />
                                                                        9270 Homespun Drive<br />
                                                                        Columbia, MD 21045<br />
                                                                        410-290-6505
                                                                    </li>
                                                                </ul>
                                                                <p>
                                                                    <i>Summer learning for preschoolers is not a Y Camp program. It operates under the
                                                                    Y Preschool program.</i>
                                                                </p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="../preschool/preschools.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">How to Register</span></a>
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
                        <div class="tab-pane" id="campssports">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="my-tab-02">
                                    <li class="active"><a href="#sub-tab-20" data-toggle="tab">A journey To Remember</a>
                                    </li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="sub-tab-20">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#mob-tab-20" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">A JOURNEY TO REMEMBER</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="mob-tab-20">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <a href="camps.aspx" onclick='SpecialRedirectPartThree("campsyouth","brochuresformsmanuals")'>Brochures, Forms & Manuals</a>
                                                                <p>
                                                                    Each week, campers enjoy activities designed around fun themes filled with new discoveries!
                                                                    <a href="pdf/Camps-My-Daily-Trek.pdf" target="_blank">See what a sample day looks like!
                                                                    </a>
                                                                </p>
                                                                <table class="table table-striped">
                                                                    <tr>
                                                                        <td><strong>Week 1
                                                                            <br />
                                                                            6/16-6/20 </strong>
                                                                        </td>
                                                                        <td>
                                                                            <strong>Australia </strong>– G’day Mates! We start our journey in the outback for
                                                                            some walkabouts that are sure to leave our campers zonked! <strong>Special Event: Animal
                                                                                Show </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><strong>Week 2<br />
                                                                            6/23-6/27 </strong>
                                                                        </td>
                                                                        <td>
                                                                            <strong>England, Ireland  </strong>- Steam train through the British Isles…relive
                                                                            tall tales of kings, queens, knights and dragons! <strong>Special Event: Royal Mess
                                                                                Fest</strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><strong>Week 3<br />
                                                                            6/30-7/3 </strong>
                                                                        </td>
                                                                        <td>
                                                                            <strong>USA  </strong>- Road trip! Travel with us from the Golden Coast to the Eastern
                                                                            Shores as we celebrate our nation’s birth!  <strong>Special Event: All-American Family
                                                                                Cookout</strong> (Day camps will not operate on July 4th.) 
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><strong>Week 5<br />
                                                                            7/14-7/18</strong>
                                                                        </td>
                                                                        <td>
                                                                            <strong>Japan, China   </strong>- Konnichiwa! Hop into your rickshaw and race over
                                                                            to the Land of the Rising Sun! Ninjas, chopsticks, origami, and more! <strong>Special
                                                                                Event: Patapsco State Park </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><strong>Week 6<br />
                                                                            7/21-7/25</strong>
                                                                        </td>
                                                                        <td>
                                                                            <strong>Antarctica, Siberia </strong>- Sled through the cold and windy barren lands
                                                                            as we learn the science behind water and ice! <strong>Special Event: Family Cool-In
                                                                            </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><strong>Week 7<br />
                                                                            7/28-8/1</strong>
                                                                        </td>
                                                                        <td>
                                                                            <strong>Egypt</strong> - Walk like an Egyptian as we discover mummies, hieroglyphics,
                                                                            he pyramids and more! <strong>Special Event: Patapsco State Park   </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><strong>Week 8<br />
                                                                            8/4-8/8</strong>
                                                                        </td>
                                                                        <td>
                                                                            <strong>Caribbean</strong> - This week will be smooth sailing on the crystal blue
                                                                            waters of the Caribbean! No worries, mon! <strong>Special Event: Cascade Lake </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><strong>Week 9<br />
                                                                            8/11-8/15</strong>
                                                                        </td>
                                                                        <td>
                                                                            <strong>Africa, Serengeti </strong>- Hujambo! Trek through the African safari with
                                                                            us and you may spot the king of the jungle!  <strong>Special Event: Scales and Tales
                                                                            </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><strong>Week 10<br />
                                                                            8/18-8/22</strong>
                                                                        </td>
                                                                        <td>
                                                                            <strong>India </strong>-  Namaste! Explore the world of Bollywood, henna, yoga and
                                                                            more! <strong>Special Event: Family Talent Show   </strong>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <p>
                                                                    <i>(Themes, activities and trips subject to change. If you prefer your child not
                                                                    attend field trips, please indicate this on the permission slip and speak with the
                                                                    Camp Director to see if alternative arrangements are available.)</i>
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("campsregistration")'><span class="btn-velvet-border">How to Register</span></a>
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
                        <div class="tab-pane" id="campsyouth">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="my-tab">
                                    <li class="active"><a href="#sub-tab-30" data-toggle="tab">ACA Accredited </a></li>
                                    <li><a href="#sub-tab-31" data-toggle="tab">Camp Availability & Hours </a></li>
                                    <li><a href="#sub-tab-32" data-toggle="tab">Deposits, Fees & Sibling Discounts </a></li>
                                    <li><a href="#sub-tab-33" data-toggle="tab">FAQs </a></li>
                                    <li><a href="#brochuresformsmanuals" data-toggle="tab">Brochure, Forms & Manuals  </a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="sub-tab-30">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#mob-sub-tab-30" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">ACA ACCREDITED</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="mob-sub-tab-30">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    Most Y camps are ACA accredited, which means we run our camps according to the policies,
                                                                    procedures and practices that have been accepted as the best in the industry. We
                                                                    voluntarily go through rigorous inspections by outside professionals to ensure we
                                                                    continue to exceed state licensing regulations in health, safety, cleanliness, food
                                                                    service, programming, staff qualifications and training, emergency management plans,
                                                                    and more - up to 300 standards in all!
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("campsregistration")'><span class="btn-velvet-border">How to Register</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="sub-tab-31">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#mob-sub-tab-31" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">CAMP AVAILABILITY & HOURS</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="mob-sub-tab-31">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Camp Weeks</h3>
                                                                <p>
                                                                    Y Camp runs in weekly sessions from June 16th to August 22nd. Sessions vary by location
                                                                    and are subject to change pending any changes with the Public School System’s school
                                                                    schedule or location availability.
                                                                </p>
                                                                <p>
                                                                    Camp offerings vary by location. To see a schedule of camp offerings, including
                                                                    location
                                                                    and available weeks, view our <a target="_blank" href="pdf/CAMPS-General-Information-Camp-Selection-Chart.pdf">2014 Y Camp Selection Chart. </a>
                                                                </p>
                                                                <h3 class="title-03">Camp Hours</h3>
                                                                <p>Camp Day: 9am – 4pm</p>
                                                                <p>Free Extended Hours: 7am – 9am/ 4pm – 6pm</p>
                                                                <p>Sandy Point Camp Location: 8am – 9am/ 4pm – 6pm</p>
                                                                <h3 class="title-03">Specialty Camp Hours</h3>
                                                                <p>Add-on Specialty Camps: 4pm – 6pm</p>
                                                                <p>Full-day Specialty Camps: 9am – 4pm (free extended hours available)</p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("campsregistration")'><span class="btn-velvet-border">How to Register</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="sub-tab-32">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#mob-sub-tab-32" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">DEPOSITS, FEES & SIBLING DISCOUNTS</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="mob-sub-tab-32">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Registration Fee</h3>
                                                                <p>
                                                                    A one-time fee of $35 per camper is due at the time of registration. The registration
                                                                    fee is non-refundable and non-transferable.
                                                                </p>
                                                                <h3 class="title-03">Deposits</h3>
                                                                <p>
                                                                    A $25 per week per camper deposit is required for all camps. Deposits are non-refundable
                                                                    and are applied towards the total weekly camp fee. Even when camp is paid in full,
                                                                    $25 per week is considered a non-refundable deposit. Not subject to sibling discounts.
                                                                </p>
                                                                <h3 class="title-03">Sibling Discounts</h3>
                                                                <p>
                                                                    A $10 per week fee reduction is available for each additional child when registered
                                                                    for the same weeks of camp. <i>Discount now available online. </i>
                                                                </p>
                                                                <h3 class="title-03">Financial Assistance</h3>
                                                                <p>
                                                                    Financial Assistance is available. Apply early as funding may be limited. <a href="../../footer/financial-assistance.aspx">Get details on financial assistance.</a>
                                                                </p>
                                                                <h3 class="title-03">Member Camp Rates</h3>
                                                                <p>
                                                                    In order to qualify for member rates, the child you are registering must be a member
                                                                    at the time of registration and throughout all camp session(s). For family membership
                                                                    holders, the membership must be in the name of the parent/guardian registering the
                                                                    child. If a membership is purchased after registration, the member rate cannot be
                                                                    applied.
                                                                </p>
                                                                <h3 class="title-03">Balance of Weekly Camp Fees</h3>
                                                                <p>
                                                                    The balance of all weekly camp fees are due two weeks prior to the start of each
                                                                    week of camp. If the balance is not received, the camper will not be allowed to
                                                                    attend and the slot will be reassigned. A complete payment schedule is included
                                                                    in the Camp Parent Manual.
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("campsregistration")'><span class="btn-velvet-border">How to Register</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="sub-tab-33">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#mob-sub-tab-33" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">FAQS</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="mob-sub-tab-33">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <ul>
                                                                    <li><a target="_blank" href="pdf/Camp-FAQs-Cancellation-Policy.pdf">Cancellation Policy</a> </li>
                                                                    <li><a target="_blank" href="pdf/CAMPS-General Information-FAQs-Medication,-Allergies,-Special-Needs.pdf">Medication, Allergies, Special Needs</a></li>
                                                                    <li><a target="_blank" href="pdf/CAMPS-General-Information-FAQs-Programs-and-Activities.pdf">Program
                                                                        and Activities</a> </li>
                                                                    <li><a target="_blank" href="pdf/CAMPS-General-Information-FAQs-Overnight-Camp.pdf">Overnight Camp</a>
                                                                    </li>
                                                                    <li><a target="_blank" href="pdf/CAMPS-General-Information-FAQs-Registration-and-Financial.pdf">Registration
                                                                        and Financial</a></li>
                                                                    <li><a target="_blank" href="pdf/CAMPS-General-Information-FAQs-Miscellaneous.pdf">Miscellaneous</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("campsregistration")'><span class="btn-velvet-border">How to Register</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="brochuresformsmanuals">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#mob-sub-tab-34" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">BROCHURE, FORMS & MANUALS</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="mob-sub-tab-34">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    All brochures, forms and parent manuals are available for download here. Campers
                                                                    are not considered fully registered until all forms are received. Campers may be
                                                                    removed from the roster or not admitted to camp if paperwork is incomplete, including
                                                                    medication, allergy emergency form and immunizations.
                                                                </p>
                                                                <p>
                                                                    The Parent Manuals contains important information you need to know prior to your
                                                                    child’s first day of camp. By registering for Y camp, you agree to read the camp
                                                                    parent manual in its entirety and comply with all policies and procedures stated
                                                                    within.
                                                                </p>
                                                                <p><strong>Brochures</strong></p>
                                                                <ul>
                                                                    <li><a href="pdf/CAMPS-General-Information-Camp-Selection-Chart.pdf" target="_blank">2014 Y Camp Selection Chart</a></li>
                                                                    <li><a href="pdf/CAMPS-General-Information-2014-Summer-at-the-Y-Brochure-New.pdf" target="_blank">2014 Summer at the Y Brochure</a></li>
                                                                    <li><a href="pdf/CAMPS-General-Information-Summer-at-Hill-Family-Center-Y-Camp-Brochure.pdf" target="_blank">Summer at the Hill Family Center Y</a></li>
                                                                    <li><a href="pdf/CAMPS-General-Information-Overnight-Camp-Brochure.pdf" target="_blank">2014 Y Overnight Camp Brochure</a></li>
                                                                </ul>
                                                                <p><strong>Forms</strong></p>
                                                                <ul>
                                                                    <li><a href="pdf/CAMPS-General-Information-Immunization-Form.pdf" target="_blank">Immunization Form(doctor’s copy also accepted)  Only <i>needed if your child is not in a MD school or is attending Camp Hashawha. </i></a></li>
                                                                    <li><a href="pdf/CAMPS-General-Information-Parent-Camp-Agreement-New.pdf" target="_blank">Parent Camp Agreement</a></li>
                                                                    <li><a href="pdf/CAMPS-General-Information-Allergy-Emergency-Care-New.pdf" target="_blank">Allergy Emergency Care Form <i>if applicable </i></a></li>
                                                                    <li><a href="pdf/CAMPS-General-Information-Medication-Authorization-Form.pdf" target="_blank">Medication Authorization Form <i>if applicable </i></a></li>
                                                                    <li><a href="pdf/CAMPS-General-Information-All-About-Me-Form-for-Overnight-Camp.pdf" target="_blank">All About Me <i>for overnight camp only</i></a></li>
                                                                    <li><a href="pdf/CAMPS-General-Information-All-About-My-Camper-New.pdf" target="_blank">All About My Camper <i>for overnight camp only </i></a></li>
                                                                    <li><a href="pdf/CAMPS-General-Information-Financial-Assistance-App-New.pdf" target="_blank">Financial Assistance Application <i>if applying for assistance </i></a></li>
                                                                </ul>
                                                                <p><strong>Manuals</strong></p>
                                                                <ul>
                                                                    <li><a href="pdf/CAMPS-General-Information-Camp-Parent-Manual.pdf" target="_blank">2014 Y Camp Parent Manual</a></li>
                                                                    <li><a href="pdf/CAMPS-General-Information-2014-Overnight-Camp-Parent-Manual-New.pdf" target="_blank">2014 Y Overnight Camp Manual</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("campsregistration")'><span class="btn-velvet-border">How to Register</span></a>
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
</asp:Content>
