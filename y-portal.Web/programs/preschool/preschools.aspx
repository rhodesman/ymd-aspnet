<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true"
    CodeBehind="preschools.aspx.cs" Inherits="YPortal.Web.programs.preschool.preschools" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container mobile-view-fix">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators mobile-margin-fix">
                    <li class="active" data-slide-to="0" data-target="#carousel-example-captions"><a href="#prehomes" onclick='SpecialRedirectPartTwo("prehomes")'
                        data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/preschool/preschool.png">
                        <span>Preschool </span></a></li>
                    <li data-slide-to="1" data-target="#carousel-example-captions" class=""><a href="#prehead" onclick='SpecialRedirectPartTwo("prehead")'
                        data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/preschool/headstart.png">
                        <span>Head Start </span></a></li>
                </ol>
                <h3 class="carousel-title">Preschool</h3>
                <div class="carousel-inner">

                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/preschool/preschool.png">
                        <div class="carousel-caption">
                            <p>
                                A focus on 
                                <br>
                                school-readiness
                            </p>

                        </div>
                    </div>

                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/preschool/headstart.png">
                        <div class="carousel-caption">
                            <p>
                                Preparing for success
                                <br>
                                in school and life
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
                        <div class="tab-pane active" id="prehomes">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#tabApproach" data-toggle="tab">OUR APPROACH  </a></li>
                                    <li><a href="#tabPreschool" data-toggle="tab">PRESCHOOL LOCATIONS</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabApproach">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subTabApproach" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">OUR APPROACH</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subTabApproach">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    Y Preschool is a trusted program that has provided educational and developmental
                                                                    support to children and families for over 160 years. Our program combines a safe
                                                                    and happy educational environment with a curriculum designed to stimulate intellectual,
                                                                    emotional, and physical growth; all with the focus of preparing children for kindergarten
                                                                    and beyond.
                                                                </p>
                                                                <p>Our program providesdevelopment opportunities for young children to: </p>
                                                                <ul>
                                                                    <li>learn through play</li>
                                                                    <li>develop cognitive and physical health</li>
                                                                    <li>become enthusiastic, inquisitive learners</li>
                                                                    <li>develop character</li>
                                                                    <li>be independent and self-confident</li>
                                                                </ul>
                                                                <p>
                                                                    Using the Core Knowledge Preschool Curriculum and the Creative Curriculum, Y staff
                                                                    teaches skills related to school-readiness as measured by the Maryland State Department
                                                                    of Education. As a result, <strong>children enrolled in our program perform above state
                                                                        averages across all academic measures! </strong>
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="how-to-enroll.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border" onclick='SpecialRedirect("preenroll")'>How to Enroll</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabPreschool">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subTabPreschool" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">PRESCHOOL LOCATIONS</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subTabPreschool">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    We have six preschool locations in Central Maryland serving children who range in
                                                                    age from six weeks to pre K. Select a location below to learn more about the Y Preschool
                                                                    program near you!
                                                                </p>
                                                                <ul>
                                                                    <li><a href="../../locations/preschool/chipmunks-caroll-county.aspx">Y Chipmunks Preschool
                                                                        (Carroll County)</a></li>
                                                                    <li><a href="../../locations/preschool/catonsville-baltimore-county.aspx">Y Preschool
                                                                        in Catonsville (Baltimore County) </a></li>
                                                                    <li><a href="../../locations/preschool/owen-brown-howard-county.aspx">Y Preschool in
                                                                        Owen Brown (Howard County)</a></li>
                                                                    <li><a href="../../locations/preschool/riverside-harford-county.aspx">Y Preschool in
                                                                        Riverside (Harford County) </a></li>
                                                                    <li><a href="../../locations/preschool/towson-baltimore-county.aspx">Y Preschool in
                                                                        Towson (Baltimore County)</a></li>
                                                                    <li><a href="../../locations/preschool/weinberg-baltimore-city.aspx">Y Preschool at
                                                                        Weinberg (Baltimore City) </a></li>
                                                                </ul>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="how-to-enroll.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border" onclick='SpecialRedirect("preenroll")'>How to Enroll</span></a>
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
                        <div class="tab-pane" id="prehead">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="Ul1">
                                    <li class="active"><a href="#tavOverview" data-toggle="tab">OVERVIEW </a></li>
                                    <li><a href="#tabBaltimoreCountyHeadStart" data-toggle="tab">Baltimore County Head Start</a></li>
                                    <li><a href="#tabBaltimoreCityHeadStart" data-toggle="tab">Baltimore City Head Start</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tavOverview">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subTavOverview" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">OVERVIEW</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subTavOverview">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    The Y of Central Maryland is one of the largest providers of Head Start services
                                                                    in Maryland. We are the Grantee for Head Start in Baltimore County and are a Delegate
                                                                    of the Baltimore City Head Start program. Our main objective is to prepare young,
                                                                    economically disadvantaged children for success in school and life. We provide comprehensive
                                                                    early intervention to low-income children and their families and help support parents
                                                                    as the first and primary educator of their children. Collectively, we serve more
                                                                    than 950 infants, toddlers and preschool children through our Head Start programs.
                                                                </p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="how-to-enroll.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border" onclick='SpecialRedirectPartThree("preenroll","profiles")'>How to Enroll</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabBaltimoreCountyHeadStart">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#SubTabBaltimoreCountyHeadStart" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">BALTIMORE COUNTY HEAD START</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="SubTabBaltimoreCountyHeadStart">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    The Y's Baltimore County Head Start program has been designated a National Center
                                                                    of Excellence by the Department of Health Services. Our program is only one of ten
                                                                    Head Start programs in the country, and the only Y in the U.S. to receive this designation.
                                                                </p>
                                                                <p>
                                                                    Throughout Baltimore County, we provide a traditional Head Start program for preschool
                                                                    children ages 3 – 5 and an Early Head Start program for infants and toddlers, age
                                                                    6 months – 3 years. Our goal is to ensure that every child is school-ready. In fact,
                                                                    Baltimore County Head Start children tested 41 – 69% higher in school readiness
                                                                    than other low income children across the state. We work hand-in-hand with low income
                                                                    families and local communities to strengthen the family unit through comprehensive
                                                                    services that include:
                                                                </p>
                                                                <ul>
                                                                    <li>early intervention</li>
                                                                    <li>education</li>
                                                                    <li>parent involvement & family focus</li>
                                                                    <li>community partnerships</li>
                                                                    <li>health & nutrition </li>
                                                                    <li>disabilities (10% of our funded enrollment includes children with disabilities.)
                                                                    </li>
                                                                    <li>transportation</li>

                                                                </ul>
                                                                <a target="_blank" href="pdf/PRESCHOOL-Head-Start-Baltimore-County-Head-Start-Annual-Report.pdf">Baltimore
                                                                    County Head Start/Early Head Start 2011-2012 Annual Report </a>
                                                                <%--<table class="table table-striped">
                                                                    <tr>
                                                                        <th>Early Head Start</th>
                                                                        <th>Head Start</th>
                                                                        <th>Locations</th>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>age 6mos.-3yrs.</td>
                                                                        <td>age 3-5 yrs.</td>
                                                                        <td></td>
                                                                    </tr>
                                                                </table>--%>
                                                                <h3 class="title-03">Early Head Start Curriculum</h3>
                                                                <p>
                                                                    Early Head Start is a free, full-day, year-round program for ages 6 months – 3 years.
                                                                    The program operates Monday – Friday, 9am -3pm. It is also offered as a home-based
                                                                    program where Family Development Specialists work with families in their homes on
                                                                    a weekly basis.
                                                                </p>
                                                                <p>
                                                                    In Early Head Start, we use the Creative Curriculum for Infants and Toddlers. The
                                                                    philosophy behind this curriculum is that in the early years, children explore the
                                                                    world around them by using all their senses. Through use of this curriculum, we
                                                                    aim to:
                                                                </p>
                                                                <ul>
                                                                    <li>Help children become enthusiastic learners</li>
                                                                    <li>Allow children to learn at their own pace and in ways that are best for them
                                                                    </li>
                                                                    <li>In still a positive sense of self, that will make a difference throughout their
                                                                        lives</li>

                                                                </ul>
                                                                <p>We focus on the full development of the whole child: spirit, mind & body.</p>
                                                                <ul>
                                                                    <li>Social Development – helping children feel comfortable, to trust their environment
                                                                    </li>
                                                                    <li>Emotional Development – build self-confidence</li>
                                                                    <li>Physical Development – help children increase their large and small motor skills
                                                                        and feel confident about what their bodies can do</li>
                                                                    <li>Cognitive Development – help children become confident learners by letting them
                                                                        tryout their own ideas and experience success</li>

                                                                </ul>
                                                                <p>Please note: Transportation is not available for this program.</p>
                                                                <%--<a href="">BACK TO TOP</a>--%>

                                                                <h3 class="title-03">Traditional Head Start Curriculum</h3>
                                                                <p>
                                                                    Traditional Head Start is a FREE part-day program operating Monday – Thursday from
                                                                    either 8:30am – 12:00pm or 12:00pm – 3:30pm for children ages 3-5 years. The program
                                                                    runs from September – early June.Transportation is available within a limited area
                                                                    for each location.
                                                                </p>
                                                                <p>
                                                                    In traditional Head Start we use the Core Knowledge Preschool Sequence Curriculum.We
                                                                    teach skills related to school readiness as recommended and measured by the Maryland
                                                                    State Department of Education (MSDE).All Baltimore County Head Start centers are
                                                                    MSDE accredited and licensed.
                                                                </p>
                                                                <p>
                                                                    The Core Knowledge curriculum is skills-based and involves the family as active partners
                                                                    in healthy growth and development. Working with parents, we prepare children to
                                                                    be successful by teaching them age-appropriate fundamentals.
                                                                </p>
                                                                <ul>
                                                                    <li>Reading - letter sounds, word families, reading/being read to, book awareness, etc.
                                                                    </li>
                                                                    <li>Writing - letter shapes, spacing, upper and lower case, punctuation, etc.</li>
                                                                    <li>Math - addition, subtraction, math facts, grouping, counting, etc.</li>

                                                                </ul>
                                                                <p>
                                                                    We believe in developing the whole child: spirit, mind and body. For that, we not
                                                                    only focus on school-readiness, but social development as well.
                                                                </p>
                                                                <ul>
                                                                    <li>Circle/Small Group Time - name recognition, calendar, dramatic play, educational
                                                                        songs, science, library, etc.</li>
                                                                    <li>Health & Wellness - I Am Moving, I Am Learning; a preschool curriculum that teaches
                                                                        and reinforces academic skills through music and movement, daily outdoor play, swimming
                                                                        (where available), physical education and more</li>
                                                                    <li>Arts & Humanities - replicating the work of the masters, finger painting, crafts,
                                                                        etc.</li>

                                                                </ul>
                                                                <%--<a href="">BACK TO TOP</a>--%>
                                                                <h3 class="title-03">Baltimore County Head Start Locations</h3>
                                                                <p>
                                                                    Some centers offer wrap-around care for families that are attending school, working
                                                                    or participating in job training. This is a fee-based service. We accept Purchase
                                                                    of Care (POC) vouchers.
                                                                </p>
                                                                <p>
                                                                    To enroll in a Head Start program, contact the Head Start center closest to your
                                                                    home. Our Family Service Workers will explain the process and arrange a time to
                                                                    meet with you.
                                                                </p>

                                                                <p>
                                                                    Back River Head Start Center
                                                                    <br />
                                                                    799 Back River Neck Rd.
                                                                    <br />
                                                                    Essex, MD 21221
                                                                    <br />
                                                                    410-391-1566
                                                                    <br />
                                                                    <i>Offers part-day morningor afternoon Head Start from 8:30am – 12pm or 12pm – 3:30pm.
                                                                        Serves zip codes 21221 and 21220 </i>

                                                                </p>
                                                                <p>
                                                                    Campfield Head Start Center
                                                                    <br />
                                                                    6838 Alter Rd.
                                                                    <br />
                                                                    Baltimore, MD 21207
                                                                    <br />
                                                                    410-602-8190
                                                                    <br />
                                                                    <i>Offers part-day morning or afternoon Head Start from 8:30am – 12pm or 12pm – 3:30pm.
                                                                        Serves zip codes 21133, 21207, 21208, 21244 and 21215. </i>

                                                                </p>

                                                                <p>
                                                                    Emily Harris Head Start Center
                                                                    <br />
                                                                    27 Main Street
                                                                    <br />
                                                                    Catonsville, MD 21228
                                                                    <br />
                                                                    410-788-8802
                                                                    <br />
                                                                    <i>Offers part-day morning or afternoon Head Start from 8:30am – 12pm or 12pm – 3:30pm.
                                                                        Serves zip codes 21133, 21207, 21228 and 21244. </i>

                                                                </p>
                                                                <p>
                                                                    Fleming Head Start Center
                                                                    <br />
                                                                    641 Main Street
                                                                    <br />
                                                                    Baltimore, MD 21222
                                                                    <br />
                                                                    410-282-6977
                                                                    <br />
                                                                    <i>Offers part-day morning or afternoon Head Start from 8:30am – 12pm or 12pm – 3:30pm.
                                                                        Serves zip code 21222. </i>

                                                                </p>
                                                                <p>
                                                                    Highland Village Head Start/Early Head Start Center
                                                                    <br />
                                                                    4165 McDowell Lane
                                                                    <br />
                                                                    Lansdowne, MD 21227 
                                                                    <br />
                                                                    410-789-4404
                                                                    <br />
                                                                    <i>Offers part-day morning Head Start from 8:30am – 12pm.  
                                                                        
                                                                        Offers full-day Early Head Start from 9am – 3pm. 
                                                                        
                                                                        Wrap-around care is available for both Head Start and Early Head Start families.
                                                                        
                                                                        Serves zip code 21227. </i>

                                                                </p>
                                                                <p>
                                                                    Kenwood Head Start/Early Head Start Center
                                                                    <br />
                                                                    4601 Fullerton Ave.
                                                                    <br />
                                                                    Baltimore, MD 21236
                                                                    <br />
                                                                    410-665-0951
                                                                    <br />
                                                                    <i>Offers part-day morning or afternoon Head Start from 8:30am – 12pm or 12pm – 3:30pm.
                                                                        
                                                                        Offers full-day Early Head Start from 9am-3pm. 
                                                                        
                                                                        Wrap-around care is available for Early Head Start families. 
                                                                        
                                                                        Serves zip codes 21206, 21220, 21237 and 21236. </i>

                                                                </p>

                                                                <p>
                                                                    Merritt Park Head Start Center 
                                                                    <br />
                                                                    1728 Merritt Park Blvd.
                                                                    <br />
                                                                    Baltimore, MD 21222
                                                                    <br />
                                                                    410-288-0706
                                                                    <br />
                                                                    <i>Offers part-day morning Head Start from 8:30am – 12pm.
                                                                        
                                                                        Wrap-around care is available. 
                                                                        
                                                                        Serves zip codes 21219, 21222 and 21224. </i>

                                                                </p>

                                                                <p>
                                                                    Riverview Head Start Center
                                                                    <br />
                                                                    3290 Kessler St.
                                                                    <br />
                                                                    Lansdowne, MD 21227
                                                                    <br />
                                                                    410-536-4611
                                                                    <br />
                                                                    <i>Offers part-day morning or afternoon Head Start from 8:30am – 12pm or 12pm – 3:30pm.
                                                                        <br />
                                                                        Serves zip code 21227.  </i>

                                                                </p>
                                                                <p>
                                                                    Towson Head Start Center
                                                                    <br />
                                                                    1801 Glen Keith Blvd.
                                                                    <br />
                                                                    Towson, MD 21204
                                                                    <br />
                                                                    410-668-8315
                                                                    <br />
                                                                    <i>Offers part-day morning or afternoon Head Start from 8:30am – 12pm or 12pm – 3:30pm.
                                                                        <br />
                                                                        Serves zip codes 21204, 21234, 21239 and 21286. </i>

                                                                </p>
                                                                <p>
                                                                    Administrative Office
                                                                    <br />
                                                                    4375 Ebenezer Rd.
                                                                    <br />
                                                                    Perry Hall, MD 21236
                                                                    <br />
                                                                    410-248-0372

                                                                </p>
                                                                <%--<a href="">BACK TO TOP</a>--%>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="how-to-enroll.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border" onclick='SpecialRedirectPartThree("preenroll","profiles")'>How to Enroll</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabBaltimoreCityHeadStart">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subTabBaltimoreCityHeadStart" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">BALTIMORE CITY HEAD START</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subTabBaltimoreCityHeadStart">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p id="top">
                                                                    The Y Head Start program is a Delegate of the Baltimore
                                                                    City Head Start program. We provide preschool children age 3 and 4, and their families,
                                                                    with comprehensive early intervention services. Our goal is to ensure that every
                                                                    child is school-ready. We work hand-in-hand with low income families and local communities
                                                                    to strengthen the family unit through comprehensive services that include:
                                                                </p>
                                                                <ul>
                                                                    <li>early intervention</li>
                                                                    <li>education</li>
                                                                    <li>parent involvement & family focus</li>
                                                                    <li>community partnerships</li>
                                                                    <li>health & nutrition</li>
                                                                </ul>
                                                                <%--<a href="#bultimore">See Locations</a>--%>
                                                                <br />
                                                                <h3 class="title-03">Baltimore City Head Start Curriculum</h3>
                                                                <p>
                                                                    Baltimore City Head Start is a FREE full-day or part-day program operating Monday
                                                                    – Friday between the hours of 7:30am – 4:00pm for children ages 3-4 years. The program
                                                                    runs from September – early June.
                                                                </p>
                                                                <p>
                                                                    We use the Creative Curriculum; a developmentally appropriate program that promotes
                                                                    children’s social-emotional development and learning in the core areas of:
                                                                </p>
                                                                <ul>
                                                                    <li>literacy</li>
                                                                    <li>mathematics</li>
                                                                    <li>mathematics</li>
                                                                    <li>science</li>
                                                                    <li>social studies</li>
                                                                </ul>
                                                                <p><strong>Education through Movement</strong></p>
                                                                <p>
                                                                    I Am Moving, I Am Learning is an education through movement program that supports
                                                                    health and wellness while teaching/reinforcing academic concepts related to math,
                                                                    science and literacy. I Am Moving, I Am Learning is funded by the PNC Grow Up Great
                                                                    Foundation.
                                                                </p>
                                                                <p>
                                                                    In addition to developing the motor system and laying the foundation for a positive
                                                                    attitude about physical activity, through the use of movement experiences, educators
                                                                    can stimulate problem-solving abilities, critical thinking, and reinforce a variety
                                                                    of academic concepts.
                                                                </p>
                                                                <p>
                                                                    The Head Start program uses monthly unit themes to incorporate
                                                                    the Head Start Performance Outcomes for Math and Science and support the school
                                                                    readiness indicators identified by the Maryland Model for School Readiness. To support
                                                                    classroom instruction, Y Preschool Specialists provide 30 minutes per week of I
                                                                    Am Moving, I Am Learning programming to extend math and science concepts through
                                                                    music and movement.
                                                                </p>
                                                                <p>
                                                                    Additionally, Y Preschool Specialists provide training to parents on a monthly basis
                                                                    so they are familiar with the songs and understand the concepts that are being taught.
                                                                </p>
                                                                <h3 class="title-03">Baltimore City Head Start Locations</h3>
                                                                <p>
                                                                    To participate in Baltimore City Head Start, you must be a Baltimore City resident.
                                                                </p>
                                                                <p>
                                                                    Head Start Center at Eldorado/Administrative Office
                                                                <br />
                                                                    3510 Eldorado Ave.
                                                                    <br />
                                                                    Baltimore, MD 2107
                                                                    <br />
                                                                    410-367-9380
                                                                    <br />
                                                                    <i>Offers full-day Head Start from 8am – 4pm or 7:45am – 2:25pm.</i>
                                                                </p>

                                                                <p>
                                                                    Head Start Center at Windsor
                                                               <br />
                                                                    3305 Winsor Ave.
                                                                    <br />
                                                                    Baltimore, MD 21216<br />
                                                                    410-362-0466<br />
                                                                    <i>Offers full-day Head Start from 8am – 4pm.</i>
                                                                </p>

                                                                <p>
                                                                    Head Start Center at Elgin<br />
                                                                    2030 Elgin Ave. 
                                                                    <br />
                                                                    Baltimore, MD 21217<br />

                                                                    410-669-1470<br />
                                                                    <i>Offers full-day Head Start from 8am – 4pm.</i>
                                                                </p>

                                                                <p>
                                                                    Head Start Center at Payson<br />
                                                                    1600 N. Payson St.
                                                                    
                                                                    <br />
                                                                    Baltimore, MD 21217
                                                                <br />
                                                                    410-523-4582
                                                                    <br />
                                                                    <i>Offers part-day Head Start from 8am – 11:30am or 12:30pm – 4pm.</i>
                                                                </p>
                                                               
                                                                <p>
                                                                    Head Start Center at Chestnut<br />
                                                                    3608 Chestnut Ave. 
                                                                    <br />
                                                                    Baltimore, MD 21211
                                                                <br />
                                                                    410-366-5028<br />
                                                                    <i>Offers part-day Head Start from 7:30am – 10:45am or 11:30am –3:30pm.</i>
                                                                </p>
                                                                <a href="#top">BACK TO TOP</a>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="how-to-enroll.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border" onclick='SpecialRedirectPartThree("preenroll","profiles")'>How to Enroll</span></a>
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
