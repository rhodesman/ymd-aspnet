<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true"
    CodeBehind="membership.aspx.cs" Inherits="YPortal.Web.membership.membership" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container mobile-view-fix">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators mobile-margin-fix">
                    <li class="active" data-slide-to="0" data-target="#carousel-example-captions"><a href="#membershiptypes" onclick='SpecialRedirectPartTwo("membershiptypes")'
                        data-toggle="tab">
                        <img src="../App_Style/images/banner/thumbnails/membership/type-and-rates.png">
                        <span>TYPES & RATES </span></a></li>
                    <li data-slide-to="1" data-target="#carousel-example-captions" class=""><a href="#membershipmember" onclick='SpecialRedirectPartTwo("membershipmember")'
                        data-toggle="tab">
                        <img src="../App_Style/images/banner/thumbnails/membership/benefits-and-features.png">
                        <span>Member Benefits</span></a></li>
                    <li data-slide-to="2" data-target="#carousel-example-captions" class=""><a href="#membershippersonal" onclick='SpecialRedirectPartTwo("membershippersonal")'
                        data-toggle="tab">
                        <img src="../App_Style/images/banner/thumbnails/membership/personal-training.png">
                        <span>PERSONAL TRAINING  </span></a></li>
                </ol>
                <h3 class="carousel-title">Membership</h3>
                <div class="carousel-inner">

                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../App_Style/images/banner/membership/types-and-rates.png">
                        <div class="carousel-caption">
                            <p>
                                More than just a 
                                    <br>
                                fitness center
                            </p>

                        </div>
                    </div>
                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../App_Style/images/banner/membership/benefits-and-feature.png">
                        <div class="carousel-caption">
                            <p>
                                Be a part of 
                                    <br>
                                something bigger

                              
                            </p>

                        </div>
                    </div>
                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../App_Style/images/banner/membership/personal-training.png">
                        <div class="carousel-caption">
                            <p>
                                Be a healthier version 
                                    <br>
                                of yourself
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
                        <div class="tab-pane active" id="membershiptypes">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#tabFLEXIBLEMEMBERSHIPOPTIONS" data-toggle="tab">FLEXIBLE MEMBERSHIP OPTIONS</a></li>
                                    <li><a href="#tabFamilyCenterYLocations" data-toggle="tab">Family Center Y Locations</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabFLEXIBLEMEMBERSHIPOPTIONS">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#subtabFLEXIBLEMEMBERSHIPOPTIONS" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">FLEXIBLE MEMBERSHIP OPTIONS</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabFLEXIBLEMEMBERSHIPOPTIONS">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <%--<p>We promise ourselves to get in shape. But what if we also vow to spend more quality time with our kids, or reach out to someone with a simple act of kindness, or even just sit and enjoy the forgotten art of conversation?  You can do all this and more at the Y!</p>--%>
                                                                <p><b>Just extended - join the Y by June 23rd and pay just $1 to join! That’s a savings of $98 off the joining fee!*</b></p>
                                                                <p>Our flexible, association-wide membership options make healthy living accessible to all!</p>
                                                                <%--<p>Be a member of something bigger.</p>--%>
                                                                <h3 class="title-03">Membership Types & Rates</h3>
                                                                <table class="table table-striped">
                                                                    <tr>
                                                                        <th>Type</th>
                                                                        <th>Monthly Rate</th>
                                                                        <th>Joining Fee</th>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><strong>Youth</strong><br>
                                                                            Any child under the age of 18.
                                                                        </td>
                                                                        <td>$18</td>
                                                                        <td>n/a</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><strong>Young Adult</strong><br>
                                                                            Any person age 18-24.
                                                                        </td>
                                                                        <td>$38</td>
                                                                        <td>n/a</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><strong>Adult</strong><br>
                                                                            Any person age 24-64.
                                                                        </td>
                                                                        <td>$51</td>
                                                                        <td>$99</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><strong>Senior Adult</strong><br>
                                                                            Any person age 65 and older.
                                                                        </td>
                                                                        <td>$46</td>
                                                                        <td>$99</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><strong>Family</strong><br>
                                                                            Up to two adults plus all dependent children age 24 and under residing at the same address.*

                                                                        </td>
                                                                        <td>$79</td>
                                                                        <td>$99</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><strong>Senior Adult</strong><br>
                                                                            Two adults, at least one age 65+, and all dependent children age 24 and under residing at the same address.*

                                                                        </td>
                                                                        <td>$68</td>
                                                                        <td>$99</td>
                                                                    </tr>
                                                                </table>
                                                                <p><i>*We reserve the right to request proof of dependent children by way of 1040 tax forms.</i></p>
                                                                <p><strong>Joining Fee</strong></p>
                                                                <p>A one-time fee due at sign-up for new memberships. New is defined as not having a Y membership in the last 60 days. </p>
                                                                <p>Military memberships are also available. Please contact your nearest Family Center Y for details. </p>
                                                                
                                                                <p>
                                                                    <%--(fine print) <br/>--%>
                                                                    <i>*Certain restrictions apply. Offer extended through June 23, 2014 for new members only. New is defined as not having
                                                                    a Y membership in the last 60 days. Financial assistance is available.</i>
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">


                                                            <div class="side-bar">
                                                                <a href="how-to-become-a-member.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("membershiphowtobecomeamember")'><span class="btn-velvet-border">Become a Y Member</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner" />--%>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabFamilyCenterYLocations">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#subtabFamilyCenterYLocations" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class ">Family Center Y Locations</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabFamilyCenterYLocations">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>We have 12 Family Center Y locations in Central Maryland. Your association-wide membership gives you access to all 12 locations.</p>
                                                                <ul>
                                                                    <li><a href="../locations/family-center-ys/catonsville-baltimore-county.aspx" onclick="SpecialRedirect('familycenteryscatonsville')">Catonsville Family Center Y (Baltimore County)</a></li>
                                                                    <li><a href="../locations/family-center-ys/dancel-howard-county.aspx" onclick="SpecialRedirect('familycenterysdancel')">Dancel Family Center Y (Howard County)</a></li>
                                                                    <li><a href="../locations/family-center-ys/druid-hills-baltimore-city.aspx" onclick="SpecialRedirect('familycenterysdruid')">Druid Hill Family Center Y (Baltimore City)</a></li>
                                                                    <li><a href="../locations/family-center-ys/greater-annapolis-anne-arundel-co.aspx" onclick="SpecialRedirect('familycenterysgreater')">Greater Annapolis Family Center Y (Anne Arundel County)</a></li>
                                                                    <li><a href="../locations/family-center-ys/hill-caroll-county.aspx" onclick="SpecialRedirect('familycenteryshill')">Hill Family Center Y (Carroll County)</a></li>
                                                                    <li><a href="../locations/family-center-ys/orokawa-baltimore-county.aspx" onclick="SpecialRedirect('familycenterysorokawa')">The Orokawa Family Center Y in Towson (Baltimore County)</a></li>
                                                                    <li><a href="../locations/family-center-ys/parkville-baltimore-county.aspx" onclick="SpecialRedirect('familycenterysparkville')">Parkville Family Center Y (Baltimore County)</a></li>
                                                                    <li><a href="../locations/family-center-ys/pery-hall-baltimore-county.aspx" onclick="SpecialRedirect('familycenterysperry')">Perry Hall Family Center Y (Baltimore County)</a></li>
                                                                    <li><a href="../locations/family-center-ys/ward-harford-county.aspx" onclick="SpecialRedirect('familycenterysward')">Ward Family Center Y (Harford County)</a></li>
                                                                    <li><a href="../locations/family-center-ys/weinberg-baltimore-city.aspx" onclick="SpecialRedirect('familycenterysweinberg')">Weinberg Family Center Y (Baltimore City)</a></li>
                                                                    <li><a href="../locations/y-swim-center/y-swim-center-in-dundalk.aspx" onclick="SpecialRedirect('familycenterysdundalk')">Y Swim Center in Dundalk (Baltimore County)</a></li>
                                                                    <li><a href="../locations/y-swim-center/y-swim-center-in-randallstown.aspx" onclick="SpecialRedirect('familycenterysrandallstown')">Y Swim Center in Randallstown (Baltimore County)</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="how-to-become-a-member.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("membershiphowtobecomeamember")'><span class="btn-velvet-border">Become a Y Member</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner" />--%>
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
                        <div class="tab-pane " id="membershipmember">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTabs-01">
                                    <li class="active"><a href="#tabValueofaYMembership" data-toggle="tab">Value of a Y Membership </a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabValueofaYMembership">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#subtabValueofaYMembership" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Value of a Y Membership</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabValueofaYMembership">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <%--<h3 class="title-03">When you join the Y, you…</h3>--%>
                                                                <p>At the Y, we're more than just a fitness center the same way a Y membership is more than just access to state-of-the-art equipment!  Member benefits include:</p>
                                                                <ul>
                                                                    <li>our best price, no contract necessary</li>
                                                                    <li>one low membership rate for your whole family</li>
                                                                    <li>one membershipfor 12 convenient locations</li>
                                                                    <li>free group exercise classes like Zumba, yoga, cycle and more</li>
                                                                    <li>free Stay & Play activity room for little ones while you exercise (family membership holders)</li>
                                                                    <li><a href="../programs/personal-training/personal-training.aspx" onclick="SpecialRedirect('membershipfitLinxx')">FitLinxx®</a>, our free digital training system that greatly increases your ability to reach your fitness 
   goals
                                                                    </li>
                                                                    <li>free monthly family events</li>
                                                                    <li>priority class registration</li>
                                                                    <li>family-friendly Ys with spacious lobbies for relaxing, family rooms with foosball tables, air 
   hockey and board games, refreshing indoor pools including lap pools and family fun pools with slides 
   and tipping buckets, and so much more
                                                                    </li>
                                                                    <li>center amenities like cycle studios, gymnasiums, rock climbing walls, large fitness centers with   
   state-of-the-art equipment and personal TV monitors
                                                                    </li>
                                                                    <li>special low member rates on Y Personal Training, Camp, Preschool and Before & After School 
   Enrichment
                                                                    </li>
                                                                    <li>volunteer opportunities to support your community</li>
                                                                    <li>use of the A.W.A.Y. program (Always Welcome At the Y: privileges at hundreds of Y's across the 
   country)
                                                                    </li>
                                                                </ul>
                                                                <h3 class="title-03">Oh and the icing on the cake... when you join the Y, you:</h3>
                                                                <ul>
                                                                    <li>become a part of a <strong>cause-driven, charitable organization </strong>dedicated to developing the full potential of every individual through programs that promote healthy living and encourage positive growth and development in youth.</li>
                                                                    <li>join a place where you can bring your family closer together through our many <strong>family-centered activities. </strong></li>
                                                                    <li>join a place where the <strong>practice of inclusion is valued </strong>and financial assistance dollars are raised so that income is no longer a barrier to those who otherwise couldn’t afford a Y experience.</li>
                                                                    <li>become a part of mission-focused organization that <strong>advocates for community involvement and social responsibility </strong>because we know it takes a village. </li>
                                                                    <%--<li>One membership for 12 Family Center Ys, giving you access to:
                                                                        <ul>
                                                                            <li>spacious lobbies for relaxing</li>
                                                                            <li>family rooms with foosball tables, air hockey, board games and more</li>
                                                                            <li>large fitness centers housing state-of-the-art equipment with personal TV monitors</li>
                                                                            <li>FitLinxx®, our free digital training system that greatly increases your ability to reach your fitness goals</li>
                                                                        </ul>
                                                                    </li>
                                                                    <li>refreshing indoor poolsincluding lap pools and family fun pools with a slide and tipping buckets</li>
                                                                    <li>center amenities like cycle studios, gymnasiums, rock climbing walls and more
                                                                        <ul>
                                                                            <li>free Stay & Play activity rooms for little ones while you exercise (family membership holders)</li>
                                                                            <li>free group exercise classes</li>
                                                                            <li>free monthly family events</li>
                                                                        </ul>
                                                                    </li>
                                                                    <li>No long-term contract necessary</li>
                                                                    <li>Priority program registration</li>
                                                                    <li>Special member rates on personal training</li>
                                                                    <li>Reduced fees on camp, preschool and before & after school enrichment</li>--%>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="how-to-become-a-member.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("membershiphowtobecomeamember")'><span class="btn-velvet-border">Become a Y Member</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
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
                        <div class="tab-pane" id="membershippersonal">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="Ul1">
                                    <li class="active"><a href="#tabsOverviews" data-toggle="tab">Overview</a></li>
                                    <li><a href="#tabWhyPersonalTraining" data-toggle="tab">Why Personal Training </a></li>

                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabsOverviews">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#subtabsOverviews" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Overview</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabsOverviews">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>Y Personal Training is intentionally designed to fit your lifestyle and desired health & well-being goals. Our certified Personal Trainers work with you to develop an exercise routine that is tailored to your specific needs including cardio, strength training, endurance, flexibility, plyometrics, agility and more.</p>
                                                                <p>We embrace the holistic approach to training – spirit, mind and body, and our family-friendly atmosphere allows you to feel comfortable and confident in the skin you’re in.</p>
                                                                <p>We offer:</p>
                                                                <ul>
                                                                    <%--<li><a href="../programs/personal-training/personal-training.aspx" onclick='SpecialRedirectPartTwo("ptoneonone")'>One-on-One Training</a></li>
                                                                    <li><a href="../programs/personal-training/personal-training.aspx" onclick='SpecialRedirectPartTwo("ptsmallgroup")'>Small Group Training</a></li>
                                                                    <li><a href="../programs/personal-training/personal-training.aspx" onclick='SpecialRedirectPartTwo("ptcancerexercise")'>Cancer Exercise Program</a></li>--%>
                                                                    <li>One-on-One Training</li>
                                                                    <li>Small Group Training</li>
                                                                    <li>Cancer Exercise Program</li>
                                                                </ul>
                                                                <p>We’re sure you’ll find a personal training program that fits you!</p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="../programs/personal-training/personal-training.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("ptoneonone")'><span class="btn-velvet-border">Learn More About Personal Training</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabWhyPersonalTraining">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#subtabWhyPersonalTraining" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class ">Why Personal Training</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabWhyPersonalTraining">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Motivation</h3>
                                                                <p>If you’re not seeing the results you want, it always seems easier to throw in the towel. With a trainer by your side, you’ll have a certified, experienced guide to motivate you through all the ups and downs of physical fitness, making sure you meet your goals.</p>

                                                                <h3 class="title-03">Challenge</h3>
                                                                <p>Your body can adapt to a workout routine in 4 to 6 weeks. Exercises that were effective a month ago may not be today. A personal trainer will provide a variety of options to keep your spirit, mind and body challenged.</p>

                                                                <h3 class="title-03">Change</h3>
                                                                <p>Boredom is one of the top reasons people stray from their workout routine. A personal trainer will not only notice the early warning signs of burnout, but can provide new challenges to keep your mind interested and your body engaged.</p>

                                                                <h3 class="title-03">Safety</h3>
                                                                <p>Even if you’re 100% dedicated to physical fitness, doing exercises incorrectly can lead to injury and disappointing results. All of our personal trainers have gone through rigorous exercise and safety certifications to be sure that your program is not only effective, but safe.</p>

                                                                <h3 class="title-03">Accountability</h3>
                                                                <p>The temptation is always strong to sleep in or go home early rather than workout—unless you know someone is at the gym waiting for you. By simply being there at a designated time each day, your personal trainer gives you the extra push you need to meet your personal fitness goals.</p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="../programs/personal-training/personal-training.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("ptoneonone")'><span class="btn-velvet-border">Learn More About Personal Training</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
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
