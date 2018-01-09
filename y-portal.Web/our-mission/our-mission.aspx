<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true"
    CodeBehind="our-mission.aspx.cs" Inherits="YPortal.Web.our_mission.our_mission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container mobile-view-fix">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators mobile-margin-fix">
                    <li class="active" data-slide-to="0" data-target="#carousel-example-captions"><a href="#ourmissioncause" onclick='SpecialRedirectPartTwo("ourmissioncause")'
                        data-toggle="tab">
                        <img src="../App_Style/images/banner/thumbnails/our-mission/cause.png">
                        <span>CAUSE </span></a></li>
                    <li data-slide-to="1" data-target="#carousel-example-captions" class=""><a href="#ourmissionmentoring" onclick='SpecialRedirectPartTwo("ourmissionmentoring")'
                        data-toggle="tab">
                        <img src="../App_Style/images/banner/thumbnails/our-mission/mentoring.png">
                        <span>MENTORING </span></a></li>
                    <li data-slide-to="2" data-target="#carousel-example-captions" class=""><a href="#ourmissionvolunteering" onclick='SpecialRedirectPartTwo("ourmissionvolunteering")'
                        data-toggle="tab">
                        <img src="../App_Style/images/banner/thumbnails/our-mission/volunteer.png">
                        <span>VOLUNTEER </span></a></li>
                    <li class="" data-slide-to="3" data-target="#carousel-example-captions"><a href="#ourmissiondonations" onclick='SpecialRedirectPartTwo("ourmissiondonations")'
                        data-toggle="tab">
                        <img src="../App_Style/images/banner/thumbnails/our-mission/donation-at-work.png">
                        <span>YOUR DONATIONS AT WORK  </span></a></li>

                    <li class="" data-slide-to="4" data-target="#carousel-example-captions"><a href="#ourmissionServing" onclick='SpecialRedirectPartTwo("ourmissionServing")' data-toggle="tab">
                        <img src="../App_Style/images/banner/thumbnails/our-mission/serving-at-risk-youth-and-families.png" />
                        <span>SERVING AT-RISk
                        </span></a></li>
                </ol>
                <h3 class="carousel-title">Our Mission</h3>
                <div class="carousel-inner">

                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../App_Style/images/banner/our-mission/cause.png">
                        <div class="carousel-caption">
                            <!--<p>
                                Be a member of 
                                    <br>
                                something bigger
                            </p>-->
                            <p>Join our cause</p>

                        </div>
                    </div>
                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../App_Style/images/banner/our-mission/mentoring.png">
                        <div class="carousel-caption">
                            <p>
                                Two hours a week 
                                    <br>
                                can change a life
                            </p>

                        </div>
                    </div>
                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../App_Style/images/banner/our-mission/volunteering.png">
                        <div class="carousel-caption">
                            <p>
                                <!--Be a member of 
                                    <br>
                                something bigger-->
                                Make a positive <br />impact
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../App_Style/images/banner/our-mission/donation.png">
                        <div class="carousel-caption">
                            <p>
                                Give every child 
                                    <br>
                                a chance
                            </p>

                        </div>
                    </div>

                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../App_Style/images/banner/our-mission/serving-at-risk-youth-and-family.png">
                        <div class="carousel-caption">
                            <p>
                                <!--Be a member of 
                                    <br>
                                something bigger-->
                                Service. Support. <br />Success.
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
                        <div class="tab-pane active" id="ourmissioncause">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#tabMissionStatement " data-toggle="tab">Mission Statement </a></li>
                                    <li><a href="#tabOURCOMMITMENT" data-toggle="tab">OUR COMMITMENT, VALUES & FOCUS </a>
                                    </li>
                                    <li><a href="#tabVision" data-toggle="tab">Vision</a></li>
                                    <li><a href="#tabImpact" data-toggle="tab">Impact</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabMissionStatement">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subtabMissionStatement" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Mission Statement</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabMissionStatement">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    The Y of Central Maryland is a charitable organization dedicated to developing the
                                                                    full potential of every individual through programs that build healthy spirit, mind
                                                                    and body for all.
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="https://www.stayclassy.org/checkout/donation?eid=22445" target="_blank" class="common-btn btn-velvet"><span class="btn-velvet-border">Donate Today</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabOURCOMMITMENT">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subtabOURCOMMITMENT" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class ">OUR COMMITMENT, VALUES & FOCUS </a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabOURCOMMITMENT">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    The Y is a place for everyone. People of all races, ages, faiths, gender, abilities,
                                                                    backgrounds and incomes are welcome.
                                                                </p>
                                                                <h3 class="title-03">Our Commitment</h3>
                                                                <p>
                                                                    At the Y, we are committed to providing family-oriented, affordable, high quality
                                                                    programs that lead to:
                                                                </p>
                                                                <ul>
                                                                    <li>every child and youth deepening positive values, their commitment to service and
                                                                        their motivation to learn</li>
                                                                    <li>every family building stronger bonds, achieving greater work/life balance and becoming
                                                                        more engaged with their community</li>
                                                                    <li>an enhanced quality of life in the communities in which we operate</li>
                                                                </ul>
                                                                <h3 class="title-03">Our Values
                                                                </h3>
                                                                <p>
                                                                    Our programs and services are infused with our four positive character values: Caring,
                                                                    Honesty, Respect and Responsibility. We are committed to challenging our members,
                                                                    staff and volunteers to demonstrate these values.
                                                                </p>
                                                                <h3 class="title-03">Our Focus</h3>
                                                                <p>YOUTH DEVELOPMENT: Nurturing the potential of every child and teen</p>
                                                                <p>HEALTHY LIVING: Improving Central Maryland’s health & well-being</p>
                                                                <p>SOCIAL RESPONSIBILITY: Giving back and providing support to our neighbors</p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="https://www.stayclassy.org/checkout/donation?eid=22445" target="_blank" class="common-btn btn-velvet"><span class="btn-velvet-border">Donate Today</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabVision">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subtabVision" data-parent="#collapse-myTab" data-toggle="collapse"
                                                    class="accordion-toggle deco-none misc-class">Vision</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabVision">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <a href="strategic-plan.aspx" onclick='SpecialRedirect("ourmissionstrategicplan")'>Strategic Plan</a>

                                                                <p>
                                                                    Reaching over 240,000 people, the Y will be a primary catalyst for Central Maryland's
                                                                    families and individuals to achieve their full potential in spirit, mind and body.
                                                                    It is only once we begin to actually influence lifestyle choices and build sufficient
                                                                    developmental assets in our community on a significant enough scale that we will
                                                                    have lasting, residual influence on the health and well-being of children, youth,
                                                                    adults and families. We will provide experiences and programs that are memorable,
                                                                    unique and enriching, which foster family and community bonds, build character,
                                                                    and promote success for all. By doing so, we will fundamentally enhance the quality
                                                                    of life in the communities in which we operate.
                                                                </p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <%--<a href="pdf/Strategic_Plan-A_Healthy_Y_for_a_Healthier_Central_Maryland.pdf" target="_blank" class="common-btn btn-velvet"><span class="btn-velvet-border">View Strategic Plan</span></a>--%>
                                                                <a href="strategic-plan.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">View Strategic Plan</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabImpact">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subtabImpact" data-parent="#collapse-myTab" data-toggle="collapse"
                                                    class="accordion-toggle deco-none misc-class">Impact</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabImpact">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <a href="annual-reports.aspx"  onclick='SpecialRedirect("ourmissionannualreport")'>Annual Reports</a>
                                                                <p>
                                                                    The Y is, and always will be, dedicated to developing healthy, confident, connected
                                                                    and secure children, adults, families and communities. Every day, our impact is
                                                                    felt when an individual makes a healthy choice, when a mentor inspires a child and
                                                                    when a community comes together for the common good.
                                                                </p>
                                                                <p>
                                                                    Rooted in Baltimore City and Anne Arundel, Baltimore, Carroll, Harford and Howard
                                                                    County communities, we are the leading provider of health & well-being programs.
                                                                    We are also the largest provider of licensed childcare, serving more children and
                                                                    youth in more ways than any other organization in the state:
                                                                </p>
                                                                <ul>
                                                                    <li>6 Y Preschools</li>
                                                                    <li>50+ Before & After School Enrichment Sites</li>
                                                                    <li>15 Head Start Centers</li>
                                                                    <li>21 Summer Camps</li>
                                                                    <li>30+ Community Outreach and Youth Asset Development Sites</li>
                                                                    <li>12 Family Center Y’s</li>
                                                                    <li>Hundreds of health & well-being classes (inclusive of sports, fitness and swim)
                                                                        for children and adults</li>
                                                                </ul>
                                                                <p>Our ability to impact more people means a healthier Central Maryland:</p>
                                                                <ul>
                                                                    <li>65,958 individuals choose to get active, healthy and more connected to their community
                                                                        as Y members</li>
                                                                    <li>23,944 youth participate in Y programs, benefiting from the expertise of 2,036 staff
                                                                        members and over 1,450 volunteers</li>
                                                                    <li>141,650 lives (and counting) are positively impacted by the Y</li>
                                                                </ul>
                                                                <p>Everyone is afforded a Y experience, regardless of ability to pay:</p>
                                                                <ul>
                                                                    <li>33% of our budget goes to providing programs and services to those who otherwise
                                                                        could not afford them – 86% of which support programs and services for children
                                                                        and youth</li>
                                                                    <li>More than $11 million a year is reinvested into communities in the form of scholarships,
                                                                        resources and community-building programs and activities</li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="annual-reports.aspx" onclick='SpecialRedirect("ourmissionannualreport")' 
                                                                    class="common-btn btn-velvet"><span class="btn-velvet-border">View Annual Reports</span></a>
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
                        <div class="tab-pane " id="ourmissionmentoring">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab-01">
                                    <li class="active"><a href="#tabREACH" data-toggle="tab">REACH & RISE  </a></li>
                                    <li><a href="#tabMentorsNeeded" data-toggle="tab">Mentors Needed </a></li>
                                    <li><a href="#tabOurMentees" data-toggle="tab">Our Mentees </a></li>
                                    <li><a href="#tabGetStarted" data-toggle="tab">Get Started </a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabREACH">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subtabREACH" data-parent="#collapse-myTab" data-toggle="collapse"
                                                    class="accordion-toggle deco-none misc-class">Reach & Rise </a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabREACH">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    Now more than ever, youth are in desperate need of positive role models; someone
                                                                    to support them, guide them, and let them know they matter. If you understand the
                                                                    power one positive adult can have in the life of a young person, and if you have
                                                                    just two hours a week to spare, then you can be that someone. <strong>BE A MENTOR
                                                                    </strong>and help build the futures of Central Maryland's youth.
                                                                </p>
                                                                <p>
                                                                    Reach & Rise is a Y mentoring program that matches adult volunteers to young people
                                                                    who need the presence of reliable, responsible and caring adults in their lives.
                                                                    The Y provides all the necessary tools and resources needed:
                                                                </p>

                                                                <ul style="padding-left:20px;">
                                                                    <li>Comprehensive training</li>
                                                                    <li>Hundreds of Y activities and events for you and your mentee to participate in
                                                                    </li>
                                                                    <li>FREE one-year youth or adult membership to the Y while in the program</li>
                                                                </ul>
                                                                <p>
                                                                    All activities take place within a Family Center Y or Y-staffed event or program.
                                                                    You can swim with your mentee, play cards at the Y, help your mentee with homework,
                                                                    do whatever productive, healthy activity meets your interests, and do it all in
                                                                    the safe and comfortable environment of your nearest family center Y or Y program
                                                                    site.
                                                                </p>
                                                                <p>
                                                                    Mentors receive ongoing support and supervision from Y staff who are trained family
                                                                    therapists or social workers. The families of the mentees are also included in the
                                                                    mentoring process, so all parties are engaged and working towards a common goal.
                                                                </p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="our-mission.aspx" class="common-btn btn-velvet" onclick="SpecialRedirectPartThree('ourmissionmentoring','tabGetStarted')"><span class="btn-velvet-border">Get Started
                                                                    Today</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabMentorsNeeded">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subtabMentorsNeeded" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Mentors Needed</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabMentorsNeeded">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    If you fit the profile of an adult volunteer mentor, we ask that you give Reach &
                                                                    Rise a try.
                                                                </p>
                                                                <ul style="padding-left:20px;">
                                                                    <li>An adult who is ready to be a friend, counselor, role model, supporter, and guide
                                                                    </li>
                                                                    <li>Dependable, consistent and responsible adult who wants to share new interests and
                                                                        experiences with a youth</li>
                                                                    <li>An understanding adult who can listen and respect different points of view and empathize
                                                                        with a young person’s struggles</li>
                                                                </ul>
                                                                <p>
                                                                    To be a Reach & Rise mentor is to give the greatest gift imaginable – your heart!
                                                                    <strong>What you get in return is priceless: </strong>
                                                                </p>
                                                                <ul style="padding-left:20px;">
                                                                    <li>Personal satisfaction from making a difference in a young person’s life, devoting
                                                                        your time and sharing your strengths</li>
                                                                    <li>Increased regard and respect for people from different cultures and backgrounds
                                                                    </li>
                                                                    <li>A sense of belonging to your community</li>
                                                                    <li>Lasting memories and a special bond that warms the heart</li>
                                                                    <li>Free one-year adult membership to the Y while in the program</li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="our-mission.aspx" class="common-btn btn-velvet" onclick="SpecialRedirectPartThree('ourmissionmentoring','tabGetStarted')"><span class="btn-velvet-border">Get Started
                                                                    Today</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabOurMentees">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subtabOurMentees" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Our Mentees</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabOurMentees">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    Youth in Reach & Rise have not been identified as being a threat; they are merely
                                                                    young people who need the support, guidance and interest of a caring adult. Reach
                                                                    and Rise mentees may include:
                                                                </p>
                                                                <ul style="padding-left:20px;">
                                                                    <li>Diverse ethnic & socio-economic backgrounds</li>
                                                                    <li>At-risk youth dealing with low self-esteem, social isolation, family problems, peer
                                                                        conflicts, poor academics, poor decision-making, etc.</li>
                                                                    <li>Youth referred to Reach & Rise by family, friends, counselors, teachers, Y programs,
                                                                        family resource centers, mental health agencies, community agencies, etc.</li>
                                                                </ul>
                                                                <p>
                                                                    <strong>The benefits a Reach & Rise mentee receives are also priceless:</strong>
                                                                </p>
                                                                <ul style="padding-left:20px;">
                                                                    <li>Positive and consistent relationship with a caring adult</li>
                                                                    <li>Increase in self-esteem, decision-making skills, school performance, and healthy
                                                                        interpersonal relationships</li>
                                                                    <li>Experience of positive, pro-social and healthy activities at family center Y’s with
                                                                        an adult</li>
                                                                    <li>Lasting memories and a special bond that warms the heart</li>
                                                                    <li>Free one-year youth membership to the Y while in the program</li>

                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="our-mission.aspx" class="common-btn btn-velvet" onclick="SpecialRedirectPartThree('ourmissionmentoring','tabGetStarted')"><span class="btn-velvet-border">Get Started
                                                                    Today</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabGetStarted">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subtabGetStarted" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Get Started</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabGetStarted">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    To be a <strong>volunteer mentor </strong>, all you need is two hours a week and
                                                                    a caring heart. Other requirements include:
                                                                </p>
                                                                <ul style="padding-left:20px;">
                                                                    <li>Age 23 or older</li>
                                                                    <li>Pass a fingerprint security screening</li>
                                                                    <li>Complete 21+ hours of comprehensive training to understand cultural/social development,
                                                                        mental health issues, risk factors, and to learn ways to engage in positive, fun
                                                                        activities at the Y and communicate/relate to youth</li>
                                                                    <li>Meet with your mentee two hours a week for one year</li>
                                                                </ul>
                                                                <p>
                                                                    Requirements to participate in Reach & Rise as a <strong>mentee </strong>include:
                                                                </p>
                                                                <ul style="padding-left:20px;">
                                                                    <li>Youth ages 6 – 18</li>
                                                                    <li>Resident of Baltimore City or Anne Arundel, Baltimore, Carroll, Harford, or Howard
                                                                        County</li>
                                                                    <li>Family/guardians who are committed to Building Futures</li>
                                                                </ul>
                                                                <p>
                                                                    If you are interested in volunteering as an adult mentor (or know a child you’d like
                                                                    to refer to Reach & Rise), please contact any one of our Reach & Rise coordinators.
                                                                </p>
                                                                <p>
                                                                    <a href="mailTo:careyandrews@ymaryland.org">Carey Andrews</a>: 443-303-7493<%--, <a href="mailTo:careyandrews@ymaryland.org">careyandrews@ymaryland.org
                                                                    </a>--%>
                                                                </p>

                                                                <p>
                                                                    <a href="mailTo:rheabutler@ymaryland.org">Rhea Butler</a>: 410-615-6522<%--, <a href="mailTo:rheabutler@ymaryland.org">rheabutler@ymaryland.org
                                                                    </a>--%>
                                                                </p>

                                                                <p>
                                                                    <a href="mailTo:candicejacobs@ymaryland.org">Candice Jacobs</a>: 617-470-5277<%--, <a href="mailTo:candicejacobs@ymaryland.org">candicejacobs@ymaryland.org
                                                                    </a>--%>
                                                                </p>

                                                                <p>
                                                                    <a href="mailTo:adrianelee@ymaryland.org">Adriane Lee-Duff</a>: 443-286-0639<%--, <a href="mailTo:adrianelee@ymaryland.org">adrianelee@ymaryland.org
                                                                    </a>--%>
                                                                </p>

                                                                <p><strong>Regional Director</strong></p>
                                                                <address>
                                                                    <a href="mailTo:michellejefferson@ymaryland.org">Michelle Jefferon</a>, MSW, LCSW-C
                                                                    <br />
                                                                    410-728-0945 x226
                                                                    <br />
                                                                    <%--<a href="mailTo:michellejefferson@ymaryland.org">michellejefferson@ymaryland.org</a>--%>

                                                                </address>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="https://www.stayclassy.org/checkout/donation?eid=22445" target="_blank"
                                                                    class="common-btn btn-velvet"><span class="btn-velvet-border">Donate Today</span></a>
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
                        <div class="tab-pane" id="ourmissionvolunteering">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab-02">
                                    <li class="active"><a href="#tabVolunteerWithUs" data-toggle="tab">Volunteer with Us</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabVolunteerWithUs">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subtabVolunteerWithUs" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Volunteer with Us</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabVolunteerWithUs">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    The Y is a charitable mission-driven organization dedicated to social responsibility
                                                                    and community building. Volunteers are critical to our mission and central to all
                                                                    we do. There are many ways to get involved with the Y.
                                                                </p>
                                                                <h3 class="title-03">Mentoring</h3>
                                                                <p>
                                                                    The Y's Reach & Rise mentoring program is in need of positive, responsible adults
                                                                    who want to volunteer their time to make a difference in a young person's life.
                                                                    Just two hours a week is all it takes. Learn more <a href="our-mission.aspx" onclick='SpecialRedirectPartTwo("ourmissionmentoring")'>here</a>.
                                                                </p>

                                                                <h3 class="title-03">Special Event Volunteer</h3>
                                                                <p>
                                                                    Our premier fundraising event is the Y's Annual Turkey Trot Charity 5K. Held on Thanksgiving
                                                                    morning, this fundraising event depends on volunteers to help make it a success.
                                                                    Learn more <a href="http://yturkeytrots.blogspot.com/p/our-cause.html">here </a>
                                                                </p>
                                                                <h3 class="title-03">Program Volunteer</h3>
                                                                <p>
                                                                    You have special talents; why not share them! Volunteer to coach a sports team. Help
                                                                    us run our drop-in workshops. Volunteer at our Y Healthy Kids Day or in a variety
                                                                    of other ways, depending on your time and interests.
                                                                </p>
                                                                 <h3 class="title-03">Community Leadership Board</h3>
                                                                <p>
                                                                    The community we serve is supported by a volunteer board known as a Community Leadership
                                                                    Board (CLB). CLB members' primary responsibility is to help engage the community in the Y's 
                                                                    charitable mission to support children and families in need so they may benefit from quality Y 
                                                                    experiences they otherwise could not afford such as Y camp, preschool, before & afterschool enrichment and membership.
                                                                </p>
                                                                <h3 class="title-03">Corporate Volunteer </h3>
                                                                <p>
                                                                    Corporate volunteer activities are also available and can be tailored to meet the
                                                                    interests of the group. Please contact <a href="mailto:jeffsprinkle@ymaryland.org">Jeff Sprinkle</a> at 443-322-8014 or jeffsprinkle@ymaryland.org.
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="https://www.stayclassy.org/checkout/donation?eid=22445" class="common-btn btn-velvet"><span class="btn-velvet-border">Donate Now</span></a>
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
                        <div class="tab-pane" id="ourmissiondonations">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTabs-03">
                                    <li class="active"><a href="#tabGiveEveryChildChance" data-toggle="tab">Give Every Child
                                        a Chance </a></li>
                                    <li><a href="#tabTheImpact" data-toggle="tab">The Impact </a></li>
                                    <li><a href="#tabDonorFAQs" data-toggle="tab">TESTIMONIALS</a></li>
                                    <li><a href="#tab501" data-toggle="tab">DONOR FAQS </a></li>
                                    <li><a href="#tabTestimonies" data-toggle="tab">TAX EXEMPT </a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabGiveEveryChildChance">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subtabGiveEveryChildChance" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Give Every Child a Chance</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabGiveEveryChildChance">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    Fundamental to our mission is the idea and practice of inclusion for all regardless
                                                                    of race, religion, gender, age or economic circumstance. This practice allows for
                                                                    a Y experience to be richer and more rewarding for the broad and diverse group of
                                                                    people who are Y people. That's why we work hard to raise funds through our <strong>Give Every Child a Chance Annual Campaign </strong>so that financial assistance
                                                                    towards Y programs and services is accessible to those who can’t otherwise afford
                                                                    a Y experience. The end result strengthens our whole community.
                                                                </p>
                                                                <ul style="padding-left:20px;">
                                                                    <li>Every child that enters the world more skilled, knowledgeable, confident and self-aware
                                                                        is on their way to becoming another contributing and well-balanced adult member
                                                                        of society.</li>
                                                                    <li>Every adult who feels healthier and more connected to their community, in turn will
                                                                        help others do the same.</li>
                                                                    <li>Every parent who feels the support of their community, most often are gladly and
                                                                        willingly motivated to support their neighbor.</li>

                                                                </ul>
                                                                <p>
                                                                    The Y gives back what you give to the Y. It's a virtuous cycle of goodness that reaps
                                                                    exponential rewards today and for generations to come. Please give if you can and
                                                                    donate generously to our Give Every Child a Chance campaign.
                                                                </p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="https://www.stayclassy.org/checkout/donation?eid=22445" target="_blank"
                                                                    class="common-btn btn-velvet"><span class="btn-velvet-border">Donate Today</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabTheImpact">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subtabTheImpact" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">The Impact</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabTheImpact">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    You have the ability to make a life-altering, positive impact for a child or family
                                                                    in need. Here are just a few examples of your donations at work.
                                                                </p>
                                                                <p>An average of …</p>
                                                                <ul>
                                                                    <li>$38 provides a young adult with a Y membership for one month</li>
                                                                    <li>$50 supports one day of field trip travel for a teenager in Y Teen Adventure Camp</li>
                                                                    <li>$120 gives a young child seven weeks of swim lessons where he/she can learn a life-saving skill</li>
                                                                    <li>$215 gives a child one week of valuable learning and preparation for school in Y Preschool</li>
                                                                    <li>$300 helps expose a high school student to the legislative process in the Y Youth & Government program</li>
                                                                    <li>$500 keeps a school-age child safe and productively engaged after school, while their parents work, for two months in a Y After School Enrichment program
                                                                    </li>
                                                                    <li>$780 helps a youth gain independence and self-reliance in two weeks of Y Overnight Camp</li>
                                                                    <li>$1,000 helps a family hit by economic hardship stay active and engaged at the Y for one year</li>
                                                                </ul>
                                                                <p>
                                                                    Every dollar donated helps to make a difference. No amount is too little. Please
                                                                    give as generously as you can and donate today.
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="https://www.stayclassy.org/checkout/donation?eid=22445" target="_blank"
                                                                    class="common-btn btn-velvet"><span class="btn-velvet-border">Donate Today</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabDonorFAQs">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subtabDonorFAQs" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Testimonials</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabDonorFAQs">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>Coming soon!</p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="https://www.stayclassy.org/checkout/donation?eid=22445" target="_blank"
                                                                    class="common-btn btn-velvet"><span class="btn-velvet-border">Donate Today</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tab501">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subtab501" data-parent="#collapse-myTab" data-toggle="collapse"
                                                    class="accordion-toggle deco-none misc-class">donor faqs</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtab501">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    Here are a few commonly asked questions many donors may have when considering making
                                                                    a gift to the Y:
                                                                </p>
                                                                <p><strong>Q: Why should I contribute to the Y?</strong></p>
                                                                <p>
                                                                    <strong>A: </strong>The Y of Central Maryland is a volunteer-led, charitable organization
                                                                    that works collaboratively with community partners to improve the lives of children,
                                                                    adults, families, and the entire community. Our purpose is to strengthen and enrich
                                                                    the development of individuals and families through quality programs and services
                                                                    that build a healthy spirit, mind, and body for all. The Y serves people of all
                                                                    backgrounds, ages, capabilities, and income levels, providing financial assistance
                                                                    to those in need.
                                                                </p>
                                                                <p>
                                                                    <strong>Q: Doesn’t my membership support the Y’s philanthropic efforts?</strong>
                                                                </p>
                                                                <p>
                                                                    <strong>A: </strong>No. Membership fees paid to the Y allow us to operate and maintain
                                                                    our centers, pay our staff, etc. These fees do not aid us in our efforts to provide
                                                                    Y experiences to those who otherwise cannot afford them.
                                                                </p>
                                                                <p><strong>Q: Can I direct my gift to stay in my community?</strong></p>
                                                                <p>
                                                                    <strong>A: </strong>Yes! Donors wishing to do so may direct their gift to Baltimore
                                                                    City or Anne Arundel, Baltimore, Carroll, Harford, or Howard County, or they can
                                                                    chose to donate wherever the need is greatest. Donors may also specify a particular
                                                                    program if they wish (summer camp, preschool, before & after school enrichment,
                                                                    etc.).
                                                                </p>
                                                                <p><strong>Q: How will my contribution be used?</strong></p>
                                                                <p>
                                                                    <strong>A: </strong>One hundred percent of donor contributions go to providing financial
                                                                    assistance for children, individuals and families in need who otherwise couldn’t
                                                                    afford our programs and services. Our goal is to provide Y experiences to all those
                                                                    seeking one, regardless of their ability to pay. We subsidize a wide range of programs
                                                                    and services that impact communities and community members throughout Central Maryland.
                                                                    The majority of the contributions we receive are used to provide scholarship for
                                                                    young people to participate in our before- and after-school enrichment programs
                                                                    and summer camp programs.
                                                                </p>
                                                                <p><strong>Q: Where do the contributions go?</strong></p>
                                                                <p>
                                                                    <strong>A: </strong>Contributions vary by region and type each year. Funds are used
                                                                    to send children, who could otherwise not afford it, to Y Preschool, Y Before &
                                                                    After School Enrichment Programs, Y Camp and more. These at-risk children are located
                                                                    in Baltimore City, Anne Arundel County, Baltimore County, Carroll County, Harford
                                                                    County and Howard County. Where donations are allocated is determined by the donor.
                                                                </p>
                                                                <p><strong>Q: Who provides funding to the Y?</strong></p>
                                                                <p>
                                                                    <strong>A: </strong>Our funding is generated from individual and corporate donors,
                                                                    foundations and grants, and the United Way of Central Maryland.
                                                                </p>
                                                                <p><strong>Q: What other fundraising does the Y do?</strong></p>
                                                                <p>
                                                                    <strong>A: </strong>The expansion and/or building of local Family Center Y’s is accomplished
                                                                    through various Y capital development campaigns. These campaigns typically involve
                                                                    naming opportunities for various areas in our Y centers. For more information on
                                                                    capital campaigns, <a href="../footer/capital-campaigns.aspx" onclick='SpecialRedirectPartTwo("capitalcampaigns")'>click here </a>.
                                                                </p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="https://www.stayclassy.org/checkout/donation?eid=22445" target="_blank"
                                                                    class="common-btn btn-velvet"><span class="btn-velvet-border">Donate Today</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabTestimonies">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subtabTestimonies" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">tax exempt</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabTestimonies">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    The Y of Central Maryland is designated as a 501(c)3 tax exempt organization by the
                                                                    Internal Revenue Service. Your contribution is tax deductible in accordance with
                                                                    IRS regulations. For a copy of our current financial statement, please contact us
                                                                    at 303 W. Chesapeake Avenue, Baltimore, MD 21204 or 443-322-9622.
                                                                </p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="https://www.stayclassy.org/checkout/donation?eid=22445" target="_blank"
                                                                    class="common-btn btn-velvet"><span class="btn-velvet-border">Donate Today</span></a>
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
                        <div class="tab-pane " id="ourmissionServing">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTabs-05">
                                    <li class="active"><a href="#tabsOvervie" data-toggle="tab">Overview </a></li>
                                    <li><a href="#tabAfterSchoolPrograms" data-toggle="tab">After School Programs </a></li>
                                    <li><a href="#tabCommunitySchools" data-toggle="tab">Community Schools </a></li>
                                    <li><a href="#tabSummerExperiences " data-toggle="tab">Summer Experiences </a></li>
                                    <%--<li><a href="#tabAlternativeEducation" data-toggle="tab">Alternative Education </a></li>--%>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabsOvervie">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#subtabsOvervie" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Overview</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabsOvervie">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>Outside of our Health and Wellness, Preschools, Head Start, Before & After School Enrichment, Swim and Sport programs, we also offer asset-building programs that engage thousands of at-risk youth in a spectrum of activities that promote academic success, foster connections with family and community, and encourage healthy development and activity. These programs are based on the Search Institute’s model of developmental assets.</p>
                                                                <p>As defined by the Search Institute, developmental assets are the positive experiences young people need to succeed and thrive. The more assets youth have, the more likely they are to have positive attitudes towards school, healthy lifestyles and leadership potential. Our goal is to provide quality programming that intentionally increases and enriches the developmental assets present in children and youth’s lives with a strong emphasis on reinforcing the Y’s core values of caring, honesty, respect, and responsibility, and promoting healthier, more active lifestyles. Through strong community partnerships, we are able to reach these youth and positively influence their lives.</p>
                                                                <p><strong>For more information on how you or your organization can get involved with our programs for at-risk youth and families, please contact </strong><a href="mailTo:orderryckfletcher@ymaryland.org">Derryck Fletcher</a> at 443-322-8082.</strong></p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="mailTo:derryckfletcher@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Inquire About How to Get Involved</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabAfterSchoolPrograms">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#subtabAfterSchoolPrograms" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">After School Programs</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabAfterSchoolPrograms">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p><strong>Y Reach & Rise Mentoring Program</strong></p>
                                                                <p>The Y Reach & Rise Mentoring Program matches adult volunteers to young people who need the presence ofreliable, responsible and caring adults in their lives. The Y provides mentors with all the necessary tools and resources needed, including comprehensive training, hundreds of activities at Y centers or Y staffed events and programs for mentors and mentees, and a free Y membership while participating in the program. For more information on this mentoring program, <a href="our-mission.aspx" onclick='SpecialRedirectPartTwo("ourmissionmentoring")'>click here </a></p>
                                                                <p><strong>Y Boost (Baltimore Out-of-School Time) Achievers& 21st Century Community Learning Centers</strong></p>
                                                                <p>Located in some of the city’s most challenged neighborhoods, these after-school programs are attended by more than 1,000 students in elementary, middle and high schools. Academics focused on reading, writing and math, are taught by certified teachers. The Y works with multiple collaborators to provide the enrichment component of the program such as art instruction, dance, sports, and chess.</p>
                                                                <p><strong>College Gardens</strong></p>
                                                                <p>This after-school and summer program for elementary, middle and high school youth is located in the College Gardens community. Youth receive academic and homework support, participate in enrichment clubs and field trips, interact with community leaders and enjoy family time at specially organized parent nights. The program collaborates with UMBC’s Shriver Center which provides service opportunities for undergraduate and graduate students to make an impact in the lives of young people.</p>
                                                                <p><strong>Y Chess Clubs</strong></p>
                                                                <p>Youth learn the game and strategy of chess, building critical thinking and problem-solving skills along the way. These clubs are located in several Baltimore City Public elementary, middle and high schools and most are offered in conjunction with our Y BOOST Achievers program.</p>
                                                                <p><strong>Fit N fun</strong></p>
                                                                <p>Childhood obesity has become such a serious public health crisis that the CDC now predicts that without dramatic interventions, the next generation could become the first in history to live shorter lives than their parents. Fit 'n Fun, a partnership between the Y of Central Maryland and CareFirst BlueCross BlueShield is a research -based, fun exercise, education and nutrition program intended to impact this alarming trend in Central Maryland. Enrolled children are pre- and post- tested for various indicators of physical fitness and are given homework which engages the whole family in thinking about diet and food choices. 
                                                                    <!--Our <a target="_blank" href="pdf/OUR-MISSION-Serving-at-Risk-Youth-Fit-n-Fun-Results.pdf">results </a>are exciting indications that appropriate  interventions work.--> 
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="mailTo:derryckfletcher@ymaryland.org" class="common-btn btn-velvet"><span class="btn-velvet-border">Inquire About How to Get Involved</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabCommunitySchools">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#tabtabCommunitySchools" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Community Schools</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="tabtabCommunitySchools">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>The Y operates several Community Schools throughout Baltimore City Public Schools. Y staff work with a Coordinating Council to identify assets and needs in local communities and work to bring resources to the schools. Community Schools help provide students and their families with basic needs such as food, shelter and security. Without these resources, many children would be less prepared to take on the challenges of the mind and fulfill their potential.</p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a onclick="SpecialRedirectPartThree('baaspcommon','tabBaltimoreCity')" href="/locations/before-and-after-school-programs/before-and-after-school-programs.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">See Community School Locations</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                                <%--SpecialRedirectPartThree("baaspcommon","tabBaltimoreCity")--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabSummerExperiences">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#subtabSummerExperiences" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Summer Experiences</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabSummerExperiences">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p><strong>Camp New Horizons</strong></p>
                                                                <p>Among the many excellent camp programs the Y runs is Camp New Horizons for homeless middle and high school students. The program is designed to help prevent summer learning loss, increase graduation rates, equip youth with tools to obtain employment, improve self-esteem, and build character. Youth enrolled in this program get 8-weeks of productive summer engagement. They spend their mornings receiving academic support and developing skills, like how to apply for college, how to look for a job, how to prepare for interviews, and other work force development skills. In the afternoons they receive real-world job placements and a stipend. The Y also helps make sure they have the basics for the job like soap, toothpaste and clean clothes so they can arrive at work feeling confident and cared for.</p>
                                                                <p><strong>Super Kids Camp</strong></p>
                                                                <p>In partnership with the Parks and People Foundation, the Y participates in Baltimore’s Super Kids Camp – a <strong>summer reading and literacy enrichment program </strong>. This unique city-wide program seeks to work with primary grade children who are behind in reading skills. Mornings are spent in small group reading instruction and afternoons are designed to extend literacy experiences through enrichment.</p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="mailto:derryckfletcher@ymaryland.org" target="_blank" class="common-btn btn-velvet"><span class="btn-velvet-border">Inquire About How to Get Involved</span></a>
                                                                <%--<img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%--<div class="tab-pane " id="tabAlternativeEducation">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#subtabAlternativeEducation" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Alternative Education</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabAlternativeEducation">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p><strong>Success Academy</strong></p>
                                                                <p>In partnership with Baltimore City Public Schools, Success Academy is an alternative options program that delivers programming to meet the academic, social and emotional needs of middle and high school students placed on long-term suspension. Students spend half of the day receiving academic instruction at Success Academy located in the Baltimore City Public Schools central office, and the other half at the Druid Hill Family Center Y engaging in activities that support their social and emotional growth like conflict resolution sessions, health & well-being programs, manhood and womanhood classes, and service learning.</p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="https://www.stayclassy.org/checkout/donation?eid=22445" target="_blank" class="common-btn btn-velvet"><span class="btn-velvet-border">Donate Today</span></a>
                                                                <img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
