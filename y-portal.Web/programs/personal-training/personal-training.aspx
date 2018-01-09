<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true"
    CodeBehind="personal-training.aspx.cs" Inherits="YPortal.Web.programs.personal_training.personaltraining" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container mobile-view-fix">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators mobile-margin-fix">
                    <li class="active" data-slide-to="0" data-target="#carousel-example-captions"><a href="#pttrainers" onclick='SpecialRedirectPartTwo("pttrainers")'
                        data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/personal-training/meet-our-trainers.png">
                        <span>MEET OUR TRAINERS  </span></a></li>
                    <li data-slide-to="1" data-target="#carousel-example-captions" class=""><a href="#ptoneonone" onclick='SpecialRedirectPartTwo("ptoneonone")'
                        data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/personal-training/one-on-one-training.png">
                        <span>ONE-ON-ONE TRAINING  </span></a></li>
                    <li data-slide-to="2" data-target="#carousel-example-captions" class=""><a href="#ptsmallgroup" onclick='SpecialRedirectPartTwo("ptsmallgroup")'
                        data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/personal-training/small-group-training.png">
                        <span>SMALL GROUP TRAINING  </span></a></li>
                    <li class="" data-slide-to="3" data-target="#carousel-example-captions"><a href="#membershipfitLinxx" onclick='SpecialRedirectPartTwo("membershipfitLinxx")'
                        data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/personal-training/fitlinxx-training-program.png">
                        <span>FITLINXX TRAINING SYSTEM </span></a></li>
                    <li data-slide-to="4" data-target="#carousel-example-captions" class=""><a href="#ptcancerexercise" onclick='SpecialRedirectPartTwo("ptcancerexercise")'
                        data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/personal-training/cancer-exercise-program.png">
                        <span>CANCER EXERCISE PROGRAM</span></a></li>
                </ol>
                <h3 class="carousel-title">Personal Training</h3>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/personal-training/meet-our-trainers.png">
                        <div class="carousel-caption">
                            <p>
                                Find your fit
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/personal-training/one-on-one-training.png">
                        <div class="carousel-caption">
                            <p>
                                Nothing looks as good 
                                    <br>
                                as healthy feels
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/personal-training/small-group-training.png">
                        <div class="carousel-caption">
                            <p>
                                Increase motivation 
                                    <br>
                                and performance
                            </p>

                        </div>
                    </div>
                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/personal-training/fitlinxx-training-system.png">
                        <div class="carousel-caption">
                            <p>
                                Train better. Train smarter. 
                                    <br>
                                See results.
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/personal-training/cancer-exercise-program.png">
                        <div class="carousel-caption">
                            <p>
                                For strength, support  
                                    <br>
                                and solidarity
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
                        <div class="tab-pane active" id="pttrainers">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#tabYPERSONALTRAINERS" data-toggle="tab">Y PERSONAL TRAINERS
                                    </a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabYPERSONALTRAINERS">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#subtabYPERSONALTRAINERS" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">Y PERSONAL
                                                TRAINERS</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabYPERSONALTRAINERS">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>Y personal trainers are certified fitness professionals who are friendly, understanding,
                                                                    approachable and realistic. They specialize in a variety of training styles and
                                                                    methods to meet your needs, all of which can be tailored specifically for you!
                                                                </p>
                                                                <p>There are over 50 trainers in the Y of Central Maryland. To meet the trainers at
                                                                    your center, click the appropriate link below.</p>
                                                                <ul>
                                                                    <li><a href="../../locations/family-center-ys/catonsville-baltimore-county.aspx" onclick='SpecialRedirectPartThree("familycenteryscatonsville","BEFORE-AFTER")'>Catonsville
                                                                        Family Center Y </a></li>
                                                                    <li><a href="../../locations/family-center-ys/dancel-howard-county.aspx" onclick='SpecialRedirectPartThree("familycenterysdancel","BEFORE-AFTER")'>Dancel Family
                                                                        Center Y </a></li>
                                                                    <li><a href="../../locations/family-center-ys/druid-hills-baltimore-city.aspx" onclick='SpecialRedirectPartThree("familycenterysdruid","BEFORE-AFTER")'>Druid
                                                                        Hill Family Center Y </a></li>
                                                                    <li><a href="../../locations/family-center-ys/greater-annapolis-anne-arundel-co.aspx" onclick='SpecialRedirectPartThree("familycenterysgreater","BEFORE-AFTER")'>
                                                                        Greater Annapolis Family Center Y </a></li>
                                                                    <li><a href="../../locations/family-center-ys/hill-caroll-county.aspx" onclick='SpecialRedirectPartThree("familycenteryshill","BEFORE-AFTER")'>Hill Family Center
                                                                        Y </a></li>
                                                                    <li><a href="../../locations/family-center-ys/parkville-baltimore-county.aspx" onclick='SpecialRedirectPartThree("familycenterysparkville","BEFORE-AFTER")'>Parkville
                                                                        Family Center Y </a></li>
                                                                    <li><a href="../../locations/family-center-ys/pery-hall-baltimore-county.aspx" onclick='SpecialRedirectPartThree("familycenterysperry","BEFORE-AFTER")'>Perry
                                                                        Hall Family Center Y</a></li>
                                                                    <li><a href="../../locations/family-center-ys/orokawa-baltimore-county.aspx" onclick='SpecialRedirectPartThree("familycenterysorokawa","BEFORE-AFTER")'>The Orokawa
                                                                        Family Center Y in Towson (formerly Towson Family Center Y)</a></li>
                                                                    <li><a href="../../locations/family-center-ys/ward-harford-county.aspx" onclick='SpecialRedirectPartThree("familycenterysward","BEFORE-AFTER")'>Ward Family
                                                                        Center Y</a></li>
                                                                    <li><a href="../../locations/family-center-ys/weinberg-baltimore-city.aspx" onclick='SpecialRedirectPartThree("familycenterysweinberg","BEFORE-AFTER")'>Weinberg
                                                                        Family Center Y</a></li>
                                                                </ul>

                                                            </div>

                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="how-to-get-started.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Get Started Today</span></a>
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
                        <div class="tab-pane " id="ptoneonone">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="Ul1">
                                    <li class="active"><a href="#tabOurApproach " data-toggle="tab">Our Approach </a>
                                    </li>
                                    <li><a href="#tabBenefits" data-toggle="tab">Benefits</a></li>
                                    <li><a href="#tabTrainerTips" data-toggle="tab">Trainer Tips </a></li>
                                    <li><a href="#tabRates" data-toggle="tab">Rates</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabOurApproach">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#subtabOurApproach" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">Our Approach</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabOurApproach">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>Y personal trainers are certified fitness professionals who are experts at working
                                                                    with you to build an effective health and wellness routine that meets your needs.
                                                                    Our trainers provide that little nudge that holds you accountable to yourself. As
                                                                    we like to say, a Y personal trainer is your coach...motivator...teacher...cheerleader...friend!
                                                                </p>
                                                                <p>Y Personal Trainers specialize in a variety of training styles, including:</p>
                                                                <ul>
                                                                    <li>Sport-specific personal training (i.e. football, running, etc.)</li>
                                                                    <li>Injury recovery personal training</li>
                                                                    <li>Personal training for seniors</li>
                                                                    <li>Personal training for youth</li>
                                                                    <li>General personal training</li>
                                                                </ul>
                                                                <p>Styles vary by trainer and location. </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="how-to-get-started.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Get Started Today</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabBenefits">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#subtabBenefits" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">Benefits</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabBenefits">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>There are several benefits to personal training. Here are just a few.</p>
                                                                <h3 class="title-03">Motivation</h3>
                                                                <p>If you’re not seeing the results you want, it always seems easier to throw in the
                                                                    towel. With a trainer by your side, you’ll have a certified, experienced guide to
                                                                    motivate you through all the ups and downs of physical fitness, making sure you
                                                                    meet your goals.</p>
                                                                <h3 class="title-03">Challenge</h3>
                                                                <p>Your body can adapt to a workout routine in 4 to 6 weeks. Exercises that were effective
                                                                    a month ago may not be today. A personal trainer will provide a variety of options
                                                                    to keep your spirit, mind and body challenged.</p>
                                                                <h3 class="title-03">Change</h3>
                                                                <p>Boredom is one of the top reasons people stray from their workout routine. A personal
                                                                    trainer will not only notice the early warning signs of burnout, but can provide
                                                                    new challenges to keep your mind interested and your body engaged.</p>
                                                                <h3 class="title-03">Safety</h3>
                                                                <p>Even if you’re 100% dedicated to physical fitness, doing exercises incorrectly can
                                                                    lead to injury and disappointing results. All of our personal trainers have gone
                                                                    through rigorous exercise and safety certifications to be sure that your program
                                                                    is not only effective, but safe.</p>
                                                                <h3 class="title-03">Accountability</h3>
                                                                <p>The temptation is always strong to sleep in or go home early rather than workout—unless
                                                                    you know someone is at the gym waiting for you. By simply being there at a designated
                                                                    time each day, your personal trainer gives you the extra push you need to meet your
                                                                    personal fitness goals.</p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="how-to-get-started.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Get Started Today</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabTrainerTips">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#subtabTrainerTips" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">Trainer Tips</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabTrainerTips">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>Our trainers want to motivate you today! Check out these <a href="http://vimeo.com/90059368" target="_blank">trainer tips</a> and put them
                                                                    to use!</p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="how-to-get-started.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Get Started Today</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabRates">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#subtabRates" data-parent="#collapse-myTab" data-toggle="collapse"
                                                class="accordion-toggle deco-none misc-class">Rates</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabRates">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <table class="table table-striped">
                                                                    <tr>
                                                                        <th># of Sessions</th>
                                                                        <th>1 Hour Session Rates</th>
                                                                        <th>30 Minute Session Rates</th>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>1</td>
                                                                        <td>$65</td>
                                                                        <td>n/a</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>3</td>
                                                                        <td>$63 per session</td>
                                                                        <td>$39.00 per session</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>6</td>
                                                                        <td>$61 per session</td>
                                                                        <td>$37.91 per session</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>12</td>
                                                                        <td>$59 per session</td>
                                                                        <td>$36.85 per session</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>18</td>
                                                                        <td>$57 per session</td>
                                                                        <td>$35.81 per session</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>25</td>
                                                                        <td>$55 per session</td>
                                                                        <td>$34.81 per session</td>
                                                                    </tr>
                                                                </table>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="how-to-get-started.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Get Started Today</span></a>
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
                        <div class="tab-pane" id="ptsmallgroup">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTabs-01">
                                    <li class="active"><a href="#tabOurApproachs" data-toggle="tab">Our Approach </a>
                                    </li>
                                    <li><a href="#tabsBenefits" data-toggle="tab">Benefits </a></li>
                                    <li><a href="#tabCLASSESs" data-toggle="tab">CLASSES  </a></li>
                                    <li><a href="#tabsRates" data-toggle="tab">Rates </a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabOurApproachs">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#subtabOurApproachs" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">Our Approach
                                            </a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabOurApproachs">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>Small group training is ideal for those who prefer a group exercise environment but
                                                                    still want the individualized attention they need to meet and exceed their specific
                                                                    fitness goals. You don't have to form your own small group to exercise, just sign
                                                                    up for one of ours! All programs are led by certified personal trainers.</p>
                                                                <p>Every Family Center Y offers small group personal training. Registration is on a
                                                                    first-come, first-serve basis. You can sign up online or in person - no need to
                                                                    speak with a personal trainer beforehand!</p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <%--<a href="how-to-get-started.aspx" onclick='SpecialRedirectPartThree("membershipbecomeamember","profiles")' class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Set Up a FitLinxx(r) Orientation at Your Y</span></a>--%>
                                                                   <a href="../../membership/membership.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Set Up a FitLinxx(r) Orientation at Your Y</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabsBenefits">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#subtabsBenefits" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">Benefits</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabsBenefits">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>There are three key benefits to small group personal training:</p>
                                                                <ul>
                                                                    <li>Training with a small group of people helps increase motivation, performance and
                                                                        enjoyment</li>
                                                                    <li>Ability to divide the cost of a personal trainer with others</li>
                                                                    <li>Only 6-8 people in a program</li>
                                                                </ul>
                                                                <p>Any one of these is reason enough to get started today!</p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="../../membership/membership.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Set Up a FitLinxx(r) Orientation at Your Y</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="tabCLASSESs">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#subtabCLASSESs" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">classes</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabCLASSESs">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>Small group personal training classes are 30 minute classes geared towards the overall
                                                                    needs of the group. Classes vary by location.</p>
                                                                <h3 class="title-03">Strength Builder</h3>
                                                                <p>Build strength and power and burn calories by alternating muscle groups and strength
                                                                    movements; all fitness levels and abilities welcome!</p>
                                                                <h3 class="title-03">Power Super Sets</h3>
                                                                <p>Incorporate super sets of strength movements to burn calories and build strength
                                                                    and power; recommended for intermediate to advanced fitness levels.</p>
                                                                <h3 class="title-03">Cardio & Strength Super Sets</h3>
                                                                <p>Burn calories and build strength through specific movement patterns and cardio intervals;
                                                                    all fitness levels and abilities welcome!</p>
                                                                <h3 class="title-03">Total Body Burn</h3>
                                                                <p>Strength super sets with cardio intervals kick up the intensity to increase calorie
                                                                    burn and build strength and power in muscles; recommended for intermediate to advanced
                                                                    fitness levels.</p>
                                                                <h3 class="title-03">Extreme Total Body Burn</h3>
                                                                <p>Amplify the intensity of your workout! Using specific functional movements that mimic
                                                                    daily activities, this advanced program focuses on power, strength and cardio through
                                                                    strength super sets, cardio intervals and plyometrics. This program is recommended
                                                                    only for those who can squat at least 1 1/2 times their body weight (for example,
                                                                    a 150lb person must be able to squat at least 225lbs).</p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                               <a href="../../membership/membership.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Set Up a FitLinxx(r) Orientation at Your Y</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabsRates">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#subtabsRates" data-parent="#collapse-myTab" data-toggle="collapse"
                                                class="accordion-toggle deco-none misc-class">Rates</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabsRates">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <table class="table table-striped">
                                                                    <tr>
                                                                        <th></th>
                                                                        <th>Seven Week Session</th>
                                                                        <th>Drop-in (per class)</th>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><strong>Member Rate</strong> </td>
                                                                        <td>$70</td>
                                                                        <td>$20</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><strong>Open Rate</strong> </td>
                                                                        <td>$140</td>
                                                                        <td>$40</td>
                                                                    </tr>
                                                                </table>
                                                                <p><i>Drop-in is a good option if you want to try a program to see if it's right for
                                                                    you. Also, if you want to bring a friend to a class, they can drop-in as well. Just
                                                                    pay at the front desk of your Y center and your good to go!</i></p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="../../membership/membership.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Set Up a FitLinxx(r) Orientation at Your Y</span></a>
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
                        <div class="tab-pane" id="membershipfitLinxx">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTabs-03">
                                    <li class="active"><a href="#tabOverviewBenefits " data-toggle="tab">Overview & Benefits
                                    </a></li>
                                    <li><a href="#tabORIENTATIONLOGIN" data-toggle="tab">ORIENTATION & LOGIN </a></li>
                                    <li><a href="#tabFitLinxxTutorial" data-toggle="tab">FitLinxx Tutorial </a></li>

                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabOverviewBenefits">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#subtabOverviewBenefits" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">Overview &
                                                Benefits</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabOverviewBenefits">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>FitLinxx® is the Y’s FREE digital training system that greatly increases your ability
                                                                    to reach your fitness goals. Thousands of Y members benefit from FitLinxx® unique
                                                                    features everyday.</p>
                                                                <ul>
                                                                    <li>Monitors your workouts and tracks your progress</li>
                                                                    <li>Helps you exercise properly and motivates you to reach your fitness goals</li>
                                                                    <li>Provides instant training feedback </li>
                                                                    <li>Tracks activity on strength and cardio machines, group exercise classes, swimming
                                                                        and activities outside of the Y</li>
                                                                    <li>Receive encouragement and tips from Y fitness staff members</li>
                                                                    <li>Reminds you of seat settings, how many repetitions to do, how much weight to use,
                                                                        correct range of motion and more</li>
                                                                </ul>
                                                                <p>All of your progress is connected to your 6-digit login number which is issued during
                                                                    your free FitLinxx® orientation.  Just login when you enter the Y to say ‘I’m here
                                                                    and ready to go!', then take advantage of all the benefits FitLinxx(r) has to offer.  <%--You can also login after taking
                                                                    a group exercise class or swimming laps!--%> </p>
                                                                <p>Science (and common sense) tells us that when you are properly motivated and can
                                                                    track your fitness progress, you’re more likely to achieve your fitness goals. Get
                                                                    started with FitLinxx® today and test that theory for yourself!</p>
                                                                <p><strong>In order to use Fitlinxx®, you must be a Y member and you must call or visit your Family Center Y to schedule a FitLinxx® orientation.</strong></p>
                                                                <p><i>Can’t make it to the Y but still staying active? You can even login to FitLinxx®
                                                                    from home to record your activities (biking, running, walking, gardening, etc.).
                                                                </i></p>
                                                                <a target="_blank" href="https://flxpro.fitlinxx.com/">LOGIN NOW</a>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">


                                                            <div class="side-bar">
                                                                <a href="how-to-get-started.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Set Up a FitLinxx® Orientation at Your Y</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabORIENTATIONLOGIN">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#subtabORIENTATIONLOGIN" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">orientation and login</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabORIENTATIONLOGIN">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">FitLinxx® Orientation</h3>
                                                                <p>During your free FitLinxx® orientation with a trained Y fitness staff member, you
                                                                    will be given your 6-digit login number and taken through the FitLinxx® machines
                                                                    to set up your exercise plan. FitLinxx® machines include strength and cardio equipment
                                                                    and you have the ability to include group exercise classes, swimming and activities
                                                                    outside of the Y. </p>
                                                                <p>During your orientation, you will be shown how to use the equipment and details such
                                                                    as how much weight to use, number of repetitions, cardio levels and seat settings
                                                                    will be determined and logged into Fitlinxx®. From that point on, you will be reminded
                                                                    of all of this every time you login!</p>
                                                               <%-- <p>In order to use Fitlinxx®, you must be a Y member and you must schedule a FitLinxx(r) orientation at a Family Center Y.</p>--%>
                                                                <p><strong>In order to use Fitlinxx®, you must be a Y member and you must call or visit your Family Center Y to schedule a FitLinxx® orientation.</strong></p>
                                                                <h3 class="title-03">FitLinxx® Login</h3>
                                                                <p>One of the many unique features of Fitlinxx® is your ability to login from home to
                                                                    record virtually any activity outside of the Y! </p>
                                                                <a target="_blank" href="https://flxpro.fitlinxx.com/">LOGIN NOW</a>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="how-to-get-started.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Set Up a FitLinxx® Orientation at Your Y</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabFitLinxxTutorial">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subtabFitLinxxTutorial" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">FitLinxx Tutorial</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabFitLinxxTutorial">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>Coming soon…FitLinxx® tutorial videos!</p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="how-to-get-started.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">
                                                                    Set Up a FitLinxx® Orientation at Your Y</span></a>
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
                        <div class="tab-pane" id="ptcancerexercise">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab4">
                                    <li class="active"><a href="#home5" class="" data-toggle="tab">Benefits of Exercise</a></li>
                                    <li><a href="#profile5" class="" data-toggle="tab">PROGRAM OPTIONS </a></li>
                                    <li><a href="#messages5" class="" data-toggle="tab">Results</a></li>
                                    <li><a href="#settings5" class="" data-toggle="tab">Getting Started </a></li>                                   
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home5">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to-4" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class at-the-y-now">
                                                Benefits of Exercise</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to-4">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>There are over 12 million cancer survivors in the US today, yet cancer frequently
                                                                    affects survivors in ways that extend far beyond their disease and treatment. For
                                                                    example, fatigue can persist up to 10 years following cancer treatment. Many survivors
                                                                    also experience depressive symptoms. </p>
                                                                <p>There is a safe and effective non-pharmacologic option that can improve quality of
                                                                    life by reducing fatigue and increasing functional capacity, and also helps reduce
                                                                    the risk of re-occurrence of cancer.</p>
                                                                <p><strong>That option is exercise.</strong></p>
                                                                <p>Increasingly, there is a body of evidence which suggests that an intelligently designed
                                                                    exercise program has many good benefits to help cancer patients battle fatigue,
                                                                    reduce their risks for a wide range of conditions, increase their ability to persevere
                                                                    through treatment and recovery, and improve quality of life. </p>
                                                                <p>The Y offers a skillfully crafted Cancer Exercise Program for all cancer patients,
                                                                    regardless of the type of cancer or level of treatment (pre, current, post). The
                                                                    program is led by Y personal trainers and fitness professionals who are specifically
                                                                    experienced and trained in the management and monitoring of exercise programs for
                                                                    cancer patients. They have the extensive knowledge base to implement the program
                                                                    and are certified Cancer Exercise Specialists (CES). </p>
                                                                <p>As with any exercise program, there are risks involved that all participants should
                                                                    be aware of. For example, vigorousexercise may not be the best for you immediately
                                                                    following chemotherapy if your white blood or red blood cell counts are too low.
                                                                    Due to the unique nature of the cancer exercise program, all participants must have
                                                                    consent to begin the program and must be referred to the program by their oncologist,
                                                                    physician or physical therapist.</p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="mailTo:cancerexerciseprog@ymaryland.org" target="_blank" class="common-btn btn-velvet">
                                                                    <span class="btn-velvet-border">Email us to enroll or learn more</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" tab-pane " id="profile5">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-features-4" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">PROGRAM OPTIONS</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-features-4">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>We offer two Cancer Exercise Program options: individual cancer exercise training
                                                                    and small group cancer exercise training. Both options are 12 weeks long and include
                                                                    an adult membership to the Y for the duration of the program. Participants will
                                                                    have full use of all 12 Family Center Ys including the fitness equipment, indoor
                                                                    pools, water exercise programs, exercise classes and more. Participants will also
                                                                    receive a special card to present to Y staff when using the centers.</p>
                                                                <h3 class="title-03">Cancer Exercise Program for Individuals</h3>
                                                                <p>Each participant receives a customized fitness program consisting of resistance training,
                                                                    flexibility and aerobic/cardiovascular training. Each participants program will
                                                                    vary based on their individual needs, including exercise tolerance and fatigue.
                                                                </p>
                                                                <p>The program includes 12, 30-minute one-on-one sessions with a Y Cancer Exercise Specialist
                                                                    (CES). Initially, participants meet with their CES two sessions a week for the first
                                                                    month. They will then progress to one session a week with their CES, plus have an
                                                                    individualized plan they can do on their own.  A pre and post assessment is also
                                                                    provided. </p>
                                                                <p>A 3-month adult membership is included in the cost of the program.</p>
                                                                <p>COST: $550</p>
                                                                <p><i>Payment plans are available. Financial assistance is available. </i></p>
                                                                <h3 class="title-03">Cancer Exercise Program for Small Groups</h3>
                                                                <p>Cancer exercise small group training offers a community experience to aid in recovery.
                                                                    Each participant receivesthree 45-minute assessments and customized exercise modifications
                                                                    with their Y Cancer Exercise Specialist during a 12-week program. Each participant
                                                                    chooses to attend either one 30-minute session per week or two 30-minute sessions
                                                                    per week. </p>
                                                                <p>Each session includes exercises to improve strength and flexibility, reduce pain
                                                                    and fatigue, and improve exercise tolerance. Each session will also include lymphedema
                                                                    risk assessments and exercises to help manage lymphedema. </p>
                                                                <p>Participants in the small group training program can choose to be a Y member or not.
                                                                    The member rate includes the cost of a 3-month adult membership. </p>
                                                                <p>COST: </p>
                                                                <table class="table table-striped">
                                                                    <tr>
                                                                        <th># of Sessions</th>
                                                                        <th>Member Rate</th>
                                                                        <th>Open Rate</th>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>1x/wk</td>
                                                                        <td>$429 ($ per session)</td>
                                                                        <td>$629 ($ per session)</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>2x/wk</td>
                                                                        <td>$465 ($ per session)</td>
                                                                        <td>$665 ($ per session)</td>
                                                                    </tr>
                                                                </table>
                                                                <p><i>Payment plans are available. Financial assistance is available. </i></p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="mailTo:cancerexerciseprog@ymaryland.org" target="_blank" class="common-btn btn-velvet">
                                                                    <span class="btn-velvet-border">Email us to enroll or learn more</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="messages5">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-source-4" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">Results</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-source-4">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>Individual results from the Cancer Exercise Program will vary by participant. Results
                                                                    include, but are not limited to:</p>
                                                                <ul>
                                                                    <li>Decreased fatigue </li>
                                                                    <li>Increased physical function</li>
                                                                    <li>Gains in strength</li>
                                                                    <li>Increased cardiovascular fitness</li>
                                                                    <li>Increased range of motion</li>
                                                                    <li>Positive changes in body composition</li>
                                                                </ul>
                                                                <p>…all of which directly impact your overall quality of life!</p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="mailTo:cancerexerciseprog@ymaryland.org" target="_blank" class="common-btn btn-velvet">
                                                                    <span class="btn-velvet-border">Email us to enroll or learn more</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="settings5">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-sourcess-4" data-parent="#collapse-myTab"
                                                data-toggle="collapse" class="accordion-toggle deco-none misc-class">Getting Started</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-sourcess-4">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Who Can Participate</h3>
                                                                <p>The Y’s Cancer Exercise Program is for patients with all types of cancer at any level
                                                                    of treatment (pre, current, post).</p>
                                                                <h3 class="title-03">How to Get Started</h3>
                                                                <p>Participants must have consent to begin the cancer exercise program and must be referred
                                                                    by their oncologist, physician or physical therapist.</p>
                                                                <p>With clearance from a medical professional, participants will meet with their Y Cancer
                                                                    Exercise Specialist (CES) for a pre-fitness assessment, to review current fitness
                                                                    level, fatigue scale, a quality of life questionnaire and to determine lymphedema
                                                                    risk. </p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="mailTo:cancerexerciseprog@ymaryland.org" target="_blank" class="common-btn btn-velvet">
                                                                    <span class="btn-velvet-border">Email us to enroll or learn more</span></a>
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
