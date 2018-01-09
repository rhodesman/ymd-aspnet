<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true"
    CodeBehind="swim.aspx.cs" Inherits="YPortal.Web.programs.swim.swim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container mobile-view-fix">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators mobile-margin-fix">
                    <li class="active" data-slide-to="0" data-target="#carousel-example-captions"><a href="#swimlessons" onclick='SpecialRedirectPartTwo("swimlessons")'
                        data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/swim/swim-lessons.png">
                        <span>SWIM LESSONS </span></a></li>
                    <li data-slide-to="1" data-target="#carousel-example-captions" class=""><a href="#swimexercise" onclick='SpecialRedirectPartTwo("swimexercise")'
                        data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/swim/water-exercise.png">
                        <span>Water Exercise </span></a></li>
                    <li data-slide-to="2" data-target="#carousel-example-captions" class=""><a href="#swimclinics" onclick='SpecialRedirectPartTwo("swimclinics")'
                        data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/swim/summer-swim-clinic.png">
                        <span>SUMMER SWIM CLINICS  </span></a></li>
                    <li class="" data-slide-to="3" data-target="#carousel-example-captions"><a href="#swimteams" onclick='SpecialRedirectPartTwo("swimteams")'
                        data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/swim/swim-team.png">
                        <span>Swim Teams </span></a></li>
                    <%--         <li data-slide-to="4" data-target="#carousel-example-captions" class=""><a href="#youth"
                        data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/swim/register-now.png">
                        <span>Register Now </span></a></li>--%>
                </ol>
                <h3 class="carousel-title">Swim</h3>
                <div class="carousel-inner">

                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/swim/swim-lessions.png">
                        <div class="carousel-caption">
                            <p>
                                Learn to swim. 
                                    <br>
                                Be safe in the water.
                            </p>

                        </div>
                    </div>
                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/swim/water-exercise.png">
                        <div class="carousel-caption">
                            <p>
                                Exercises your  
                                    <br>
                                joints will love
                            </p>

                        </div>
                    </div>
                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/swim/swim-summer-clinic.png">
                        <div class="carousel-caption">
                            <p>
                                Swimming skills,  
                                    <br>
                                safety and fun
                            </p>

                        </div>
                    </div>
                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/swim/swim-teams.png">
                        <div class="carousel-caption">
                            <p>
                                Developing individual 
                                    <br>
                                and team character  
                            </p>

                        </div>
                    </div>
                    <%--    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/swim/register-now.png">
                        <div class="carousel-caption">
                            <p>
                                How to  
                                    <br>
                                Register
                            </p>

                        </div>
                    </div>--%>
                </div>

            </div>
        </div>
    </div>
    <div class="dux-content-area  dux-content-area-margin-02">
        <div class="short container">
            <div class="row">
                <div class="col-md-12">
                    <div class="tab-content">
                        <div class="tab-pane active" id="swimlessons">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#tabYSWIMPHILOSOPHY" data-toggle="tab">Y SWIM PHILOSOPHY
                                    </a></li>
                                    <li><a href="#tabGROUPSWIMLESSONS" data-toggle="tab">GROUP SWIM LESSONS </a></li>
                                    <li><a href="#tabINDIVIDUALSWIMLESSONS" data-toggle="tab">INDIVIDUAL SWIM LESSONS</a>
                                    </li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabYSWIMPHILOSOPHY">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subtabYSWIMPHILOSOPHY" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Y SWIM PHILOSOPHY
                                                </a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabYSWIMPHILOSOPHY">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    The Y has a long, rich history in swimming. We pioneered the practice of swim lessons
                                                                    over 160 years ago and have taught generations of families how to swim. Our expertise
                                                                    and leadership in swimming sets us apart and our warm, patient approach to teaching
                                                                    sets you at ease.
                                                                </p>
                                                                <p>
                                                                    We believe learning how to swim and being safe in the water go hand-in-hand. Whether
                                                                    you're new to swimming or refining your skills, all participants from age 6 months
                                                                    to 60+ years can comfortably learn at their own pace, progress at their own pace,
                                                                    and become strong, safe swimmers at their own pace!
                                                                </p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="register-now.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("swimregistration")'><span class="btn-velvet-border">Register for Swim Lessons</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabGROUPSWIMLESSONS">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subtabGROUPSWIMLESSONS" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">GROUP SWIM
                                                LESSONS</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabGROUPSWIMLESSONS">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    The Y offers a progressive swim lesson program for all ages so that no matter your
                                                                    skill level, you are always developing as a swimmer.  If you are unsure of your
                                                                    skill level, swim evaluations are available.
                                                                </p>
                                                                <h3 class="title-03">PARENT/CHILD LESSONS </h3>
                                                                <i>(Parents must accompany child in the water)</i>
                                                                <p><strong>Skipper (6 mos. – 3 yrs.) </strong></p>
                                                                <p>
                                                                    Parent and child enjoy water movements and games accompanied by songs. Basic skills
                                                                    will be developed using water toys and play.
                                                                </p>
                                                                <p><strong>Perch (2 – 3 yrs.) </strong></p>
                                                                <p>
                                                                    Child works more directly with instructor (parents are still required to get in the
                                                                    water) to learn breath control, floating, kicking, paddling and water entry skills.
                                                                </p>
                                                                <h3 class="title-03">PRESCHOOL LESSONS (3 - 5 yrs.)</h3>
                                                                <p><strong>Pike </strong></p>
                                                                <p>
                                                                    Develop safe pool behavior. Adjust to water. Develop independent movement in the
                                                                    water with a float belt.
                                                                </p>
                                                                <p><strong>Eel </strong></p>
                                                                <p>
                                                                    Children are taught to sit dive, float and perform the progressive paddle stroke.
                                                                </p>
                                                                <p><strong>Ray</strong></p>
                                                                <p>
                                                                    Improve stroke skills.Build endurance on front and back. Learn to tread water and
                                                                    perform kneeling dives.
                                                                </p>
                                                                <p><strong>Starfish </strong></p>
                                                                <p>
                                                                    Improve front and back crawl endurance, develop modified breaststroke and butterfly,
                                                                    personal safety and rescue skills.
                                                                </p>
                                                                <h3 class="title-03">YOUTH LESSONS (6 – 12 yrs.)</h3>
                                                                <p><strong>Polliwog </strong></p>
                                                                <p>
                                                                    Basic skill instruction includes front paddle and flutter kick, breath control, floating
                                                                    and horizontal body position.
                                                                </p>
                                                                <p><strong>Guppy </strong></p>
                                                                <p>
                                                                    Participants will work on swimming front crawl and backstroke for 25 yards with an
                                                                    introduction to rotary breathing.
                                                                </p>
                                                                <p><strong>Minnow </strong></p>
                                                                <p>
                                                                    Work on front and back crawl endurance with an introduction to breaststroke. Participants
                                                                    will begin to learn diving skills.
                                                                </p>
                                                                <p><strong>Fish </strong></p>
                                                                <p>
                                                                    Dolphin kick or butterfly kick will be introduced while continuing to develop front
                                                                    crawl, backstroke, breaststroke and standing dives.
                                                                </p>
                                                                <p><strong>Flying Fish </strong></p>
                                                                <p>
                                                                    Continue refining front crawl, backstroke, breaststroke and standing dives.  Butterfly
                                                                    arms will be introduced with a focus on timing, as well as an introduction to flip
                                                                    turns.
                                                                </p>

                                                                <h3 class="title-03">PRE-COMPETITIVE LESSONS(9 – 15 yrs.)</h3>
                                                                <p><strong>Shark</strong></p>
                                                                <p>
                                                                    Refine stroke technique, increase endurance, introduction to proper competitive starts
                                                                    and turns. Participants will work on flip turns and underwater pullouts for breaststroke.
                                                                </p>
                                                                <p><strong>Porpoise Club </strong></p>
                                                                <p>
                                                                    Develop competitive stroke technique. Introduction to water safety techniques.Continue
                                                                    developing flip turns and underwater pullouts for breaststroke.
                                                                </p>

                                                                <h3 class="title-03">TEEN/ADULT LESSONS (13 yrs. & up)</h3>
                                                                <p><strong>Teen/Adult I</strong></p>
                                                                <p>
                                                                    Floating on front and back, kicking, arm stroking and treading water.  Introduction
                                                                    to rotary breathing and overcoming the fear of deep water.  Start to develop swimming
                                                                    without the aid of a floatation device.
                                                                </p>

                                                                <p><strong>Teen/Adult II</strong></p>
                                                                <p>
                                                                    Develop front crawl with rotary breathing. Introduction to basic backstroke, breaststroke
                                                                    and butterfly drills.
                                                                </p>

                                                                <p><strong>Teen/Adult III</strong></p>
                                                                <p>
                                                                    Triathlon training with a heavy focus on freestyle using front quadrant swimming
                                                                    techniques with the development of all four competitive stokes through technique
                                                                    reviews.
                                                                </p>

                                                                <p><strong>Teen/Adult IV</strong></p>
                                                                <p>
                                                                    Main focus will be development of competitive strokes and techniques including starts
                                                                    and turns.  Workouts will include practice sets and intervals while continuing to
                                                                    develop triathlon training, overall swimming endurance and speed in preparation
                                                                    for Master level swimming.
                                                                </p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="register-now.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("swimregistration")'><span class="btn-velvet-border">Register for Swim Lessons</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabINDIVIDUALSWIMLESSONS">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subtabINDIVIDUALSWIMLESSONS" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">INDIVIDUAL
                                                SWIM LESSONS</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabINDIVIDUALSWIMLESSONS">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>One-on-one swim instruction is available in four, eight or twelve sessions. </p>
                                                                <p>
                                                                    Individual swim lessons give you the freedom to work with a swim instructor on the
                                                                    specific skills you need to focus on.
                                                                </p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="register-now.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("swimregistration")'><span class="btn-velvet-border">Register for Swim Lessons</span></a>
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
                        <div class="tab-pane " id="swimexercise">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="mytabs-03">
                                    <li class="active"><a href="#tabWaterExerciseClasses" data-toggle="tab">Water Exercise
                                        Classes </a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabWaterExerciseClasses">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subTabWaterExerciseClasses" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Water Exercise
                                                Classes</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subTabWaterExerciseClasses">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    Vary your exercise routine with our water exercise classes. They’re sure to be easy
                                                                    on the joints, reinvigorating for the soul and even therapeutic!
                                                                </p>
                                                                <p><strong>Aqua Arthritis</strong></p>
                                                                <p>
                                                                    Co-sponsored by the Arthritis Foundation. Non-clinical, recreational swim program.
                                                                </p>
                                                                <p><strong>Aqua Zumba</strong></p>
                                                                <p>
                                                                    A pool-based fusion of body sculpting movements with easy to follow dance steps to
                                                                    the tune of R & B and international music. Featuring aqua aerobic/fitness interval
                                                                    training, instructed by a Zumba certified instructor.
                                                                </p>
                                                                <p><strong>Deep Water Jog</strong></p>
                                                                <p>
                                                                    A challenging, high-intensity workout done in deep water to focus on strength, endurance
                                                                    and aerobic fitness.
                                                                </p>
                                                                <p><strong>Masters Swim Team</strong></p>
                                                                <p>
                                                                    A competitive workout for individuals 18 and up who are interested in improving their
                                                                    stroke technique and development.
                                                                </p>
                                                                <p><strong>Swim Fit</strong></p>
                                                                <p>
                                                                    A high level fitness program that incorporates lap swimming, aqua jogging & kicking.
                                                                    Must be able to swim freestyle.
                                                                </p>
                                                                <p><strong>Water Fitness</strong></p>
                                                                <p>
                                                                    Moderate intensity workout focusing on toning, conditioning and strengthening. Performed
                                                                    in shallow water.
                                                                </p>
                                                                <p><strong>Water Fitness Challenge</strong></p>
                                                                <p>
                                                                    A cardiovascular workout with toning exercises. The class will use noodles and dynabands
                                                                    to tone upper & lower torso.
                                                                </p>
                                                                <p><strong>Water Fitness Combo</strong></p>
                                                                <p>
                                                                    Shallow and deep water exercising to music with concentrated exercises to strengthen
                                                                    and tone the upper & lower torso.
                                                                </p>
                                                                <p><strong>Wet & Sweat</strong></p>
                                                                <p>Perform gentle activities in warm water for ages 50+.</p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="register-now.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("campsregistration")'><span class="btn-velvet-border">Register for Water Exercise Classes</span></a>
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
                        <div class="tab-pane" id="swimclinics">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTabs-04">
                                    <li class="active"><a href="#tabOptionsFees" data-toggle="tab">Options & Fees </a></li>
                                    <li><a href="#tabLocations" data-toggle="tab">Locations</a></li>
                                    <li><a href="#tabGeneralInformation" data-toggle="tab">General Information </a></li>
                                    <li><a href="#tabBrochureForms" data-toggle="tab">Brochure & Forms  </a></li>

                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabOptionsFees">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subTabOptionsFees" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Options & Fees
                                                </a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subTabOptionsFees">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    Summer swim clinics are designed to give children within moderate to advanced swim
                                                                    levels a fun water experience while gaining worthwhile knowledge about swimming
                                                                    and safety. Children will need to bring with them a towel, bathing suit, goggles,
                                                                    water, a snack, and gym clothes and sneakers. <i>Please note: Before registering, you
                                                                        must complete a swim test with the Swim Director. </i>
                                                                </p>
                                                                <p>
                                                                    To see a schedule of swim clinic offerings by location, please view our <a target="_blank" href="pdf/SWIM-Summer-Swim-Clinics-Swim-Clinics-Selection-Chart.pdf">2014 summer clinic selection chart. </a>
                                                                </p>
                                                                <h3 class="title-03">Swim Clinics (ages 4 – 12, varies by location)</h3>
                                                                <p><strong>Begin to Swim </strong></p>
                                                                <p>
                                                                    For children with little or no swimming experience. We will focus on an introduction
                                                                    to swimming skills, such as floating, body position, breath control and paddle stroke.
                                                                    Other activities include land activities, water games and water safety education.
                                                                </p>
                                                                <p><strong>Competitive Swimming </strong></p>
                                                                <p>
                                                                    For children interested or involved in competitive swimming. We will focus on stroke
                                                                    development, building endurance, flip turns, and diving. Other activities include
                                                                    land activities, water games and relays. Children must be able to pass a deep water
                                                                    test to enroll.
                                                                </p>
                                                                <p><strong>Water Games </strong></p>
                                                                <p>
                                                                    Jump in and soak up the fun! We will enjoy fun water games, stroke development, water
                                                                    sports and more! Children must be able to pass a deep water test to enroll.
                                                                </p>
                                                                <p><strong>FEES </strong>(half-day rates; double the price for full-day rates)</p>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <td>Family Member: $79/wk</td>
                                                                        <td>Youth Member: $99/wk</td>
                                                                        <td>Open Rate: $104/wk</td>
                                                                    </tr>
                                                                </table>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="register-now.aspx" class="common-btn btn-velvet" onclick='SpecialRedirectPartThree("swimregistration","profiles")'><span class="btn-velvet-border">Register for Summer Swim Clinics</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabLocations">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subTabLocations" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Locations</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subTabLocations">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    To see a schedule of swim clinic offerings by location, please view our <a target="_blank" href="pdf/SWIM-Summer-Swim-Clinics-Swim-Clinics-Selection-Chart.pdf">2014 summer clinic selection chart. </a>
                                                                </p>
                                                                <address>
                                                                    <u>Baltimore City</u>
                                                                    <br />
                                                                    <strong>Weinberg Family Center Y</strong>
                                                                    <br />
                                                                    900 E. 33rd St.
                                                                    <br />
                                                                    Baltimore, MD 21218
                                                                    <br />
                                                                    410-889-9622
                                                                </address>

                                                                <address>
                                                                    <u>Baltimore County</u>
                                                                    <br />
                                                                    <strong>Catonsville Family Center Y</strong>
                                                                    <br />
                                                                    850 S. Rolling Rd.
                                                                    <br />
                                                                    Catonsville, MD 21228<br />
                                                                    410-747-9622
                                                                </address>

                                                                <address>
                                                                    <strong>The Orokawa Family Center Y in Towson</strong>
                                                                    <br />
                                                                    <i>(formerly Towson Family Center Y)</i>
                                                                    <br />
                                                                    600 W. Chesapeake Ave.<br />
                                                                    Towson, MD 21204<br />
                                                                    410-823-8870
                                                                </address>

                                                                <address>
                                                                    <strong>Y Swim Center in Dundalk</strong>
                                                                    <br />
                                                                    120 Trading Pl.<br />
                                                                    Dundalk, MD 21222<br />
                                                                    410-285-7616
                                                                </address>

                                                                <address>
                                                                    <u>Carroll County</u>
                                                                    <br />
                                                                    <strong>Hill Family Center Y</strong>
                                                                    <br />
                                                                    1719 Sykesville Rd.<br />
                                                                    Westminster, MD 21157<br />
                                                                    410-848-3660
                                                                </address>

                                                                <p>
                                                                    <a href="../camps/camps.aspx" onclick='SpecialRedirectPartThree("campsmessagess","sub-tab-12")'>Click here </a>to learn about our new summer experience only available
                                                                    at the Hill Family Center Y!
                                                                </p>

                                                                <address>
                                                                    <u>Harford County</u>
                                                                    <br />
                                                                    <strong>Ward Family Center Y</strong>
                                                                    <br />
                                                                    101 Walter Ward Blvd.<br />
                                                                    Abingdon, MD 21009<br />
                                                                    410-679-9622
                                                                </address>

                                                                <address>
                                                                    <u>Howard County</u>
                                                                    <br />
                                                                    <strong>Dancel Family Center Y</strong>
                                                                    <br />
                                                                    4331 Montgomery Rd.<br />
                                                                    Ellicott City, MD 21043<br />
                                                                    410-465-4334
                                                                </address>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="register-now.aspx" class="common-btn btn-velvet" onclick='SpecialRedirectPartThree("swimregistration","profiles")'><span class="btn-velvet-border">Register for Summer Swim Clinics</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabGeneralInformation">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subTabGeneralInformation" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">General Information
                                                </a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subTabGeneralInformation">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p><strong>Availability</strong></p>
                                                                <p>
                                                                    Summer clinics run in weekly sessions from June 16th to August 22nd. Clinics are
                                                                    offered in half-day morning or afternoon times.  You have the option of customizing
                                                                    your own full-day clinic by signing up for a half-day morning clinic and a half-day
                                                                    afternoon clinic. Clinics vary by location and are subject to change. To see a schedule
                                                                    of clinic offerings, including location and available weeks, view our <a target="_blank" href="pdf/SWIM-Summer-Swim-Clinics-Swim-Clinics-Selection-Chart.pdf">2014 summer clinics selection chart. </a>
                                                                </p>
                                                                <p><strong>Hours</strong></p>
                                                                <p>Half-day morning clinics: 9am -12pm</p>
                                                                <p>Half-day afternoon clinics: 1pm – 4pm</p>
                                                                <p>Full-day clinics: 9am – 4pm (child must bring lunch)</p>
                                                                <p><strong>Extended Hours</strong></p>
                                                                <p>
                                                                    Morning and afternoon extended hours are not included in the cost of clinics. Each
                                                                    is an additional $15 per week per child; $30 per week per child for both morning
                                                                    and afternoon.
                                                                </p>
                                                                <p>Morning: 7am – 9am, additional $15 per week per child</p>
                                                                <p>Afternoon: 4pm – 6pm, additional $15 per week per child</p>
                                                                <p><strong>Sibling Discounts</strong></p>
                                                                <p>
                                                                    A $5 fee reduction per morning or afternoon session will be given for each additional
                                                                    child when registered for the same weeks of clinics. Discounts are available online.
                                                                </p>
                                                                <p><strong>Deposits</strong></p>
                                                                <p>
                                                                    A $25 per week per child deposit is required for all half-day sports & swim clinics
                                                                    and a $50 per week per child deposit is required for all full-day sports & swim
                                                                    clinics. Deposits are non-refundable and are applied towards the total weekly fee.
                                                                    Even when the clinic is paid in full, $25 or $50 per week is considered a non-refundable
                                                                    deposit. (Not subject to sibling discounts).
                                                                </p>
                                                                <p><strong>Balance of Weekly Clinic Fees</strong></p>
                                                                <p>
                                                                    The balance of all weekly clinic fees are due two weeks prior to the start of that
                                                                    week of clinics. If the balance is not received, the child will not be allowed to
                                                                    attend and the slot will be reassigned.
                                                                </p>
                                                                <p><strong>Cancellation Policy</strong></p>
                                                                <p>
                                                                    All changes and cancellations must be made in writing and include the dates of the
                                                                    weeks and a description of the request. All requests must be submitted to the Billing
                                                                    Office either via fax at 410-779-9426, or by email to billing@ymaryland.org. Registration
                                                                    fees are non-refundable and non-transferable.
                                                                </p>
                                                                <p>
                                                                    If a camp week is cancelled the Friday before payment is due, the deposit will be
                                                                    left as a credit (less a $5 per week/per child processing fee) on your account for
                                                                    one year and any balance paid will be refunded. Cancellations made after the Friday
                                                                    before payment is due will not be accepted; all fees are non-refundable. For more
                                                                    information please review the financial policy in the Camp Parent Manual and Camp
                                                                    Financial Agreement.
                                                                </p>
                                                                <p><i>Please save receipts for tax purposes. The Y tax ID# is 52-059-1699.</i></p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="register-now.aspx" class="common-btn btn-velvet" onclick='SpecialRedirectPartThree("swimregistration","profiles")'><span class="btn-velvet-border">Register for Summer Swim Clinics</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabBrochureForms">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subTabBrochureForms" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Brochure & Forms
                                                </a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subTabBrochureForms">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <ul>
                                                                    <li><a target="_blank" href="../sports/pdf/SPORTS-Summer-Sports-Clinics-Sport-Clinics-Brochure.pdf">2014 Summer Clinics Brochure (PDF)</a></li>
                                                                    <li><a target="_blank" href="../sports/pdf/SPORTS-Summer-Sports-Clinics-Sport-Clinics-Parent-Manual.pdf">2014 Clinic Parent Manual (PDF)</a></li>
                                                                    <li><a target="_blank" href="../sports/pdf/SPORTS-Summer-Sports-Clinics-Parent-Emergency-Form.pdf">Emergency
                                                                        Information Form (PDF)</a></li>
                                                                    <li><a target="_blank" href="../sports/pdf/SPORTS-Summer-Sports-Clinics-Medication-Form.pdf">Medication
                                                                        Form (PDF)</a></li>
                                                                    <li><a target="_blank" href="pdf/FIN-APP-2014.pdf">Financial Assistance Form (PDF)</a></li>
                                                                    <li><a target="_blank" href="pdf/SWIM-Summer-Swim-Clinics-FAQs.pdf">Swim Clinic FAQs (PDF)</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="register-now.aspx" class="common-btn btn-velvet" onclick='SpecialRedirectPartThree("swimregistration","profiles")'><span class="btn-velvet-border">Register for Summer Swim Clinics</span></a>
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
                        <div class="tab-pane" id="swimteams">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="Ul1">
                                    <li class="active"><a href="#tabSwimTeamOverview" data-toggle="tab">Swim Team Overview</a></li>
                                    <li><a href="#tabSwimTeams" data-toggle="tab">Swim Teams </a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabSwimTeamOverview">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subTabSwimTeamOverview" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Swim Team Overview
                                                </a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subTabSwimTeamOverview">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    Y Swim Teams are competitive swimming programs focused on individual and team improvement
                                                                    in a positive, family environment. Our swimmers, coaches and families follow the
                                                                    Y core values of caring, honesty, respect and responsibility. We are committed to
                                                                    developing our swimmers as both athletes and people to achieve their fullest potential
                                                                    as healthy, caring individuals.
                                                                </p>
                                                                <p>
                                                                    Y Swim Teams compete in the Chesapeake & Potomac Swimming League. The competitive
                                                                    season runs from September to March. Swim team youth participate in local, regional
                                                                    and in some cases, national swim meets. Practice is held at Y centers. You must
                                                                    be a Y member to participate on a Y swim team.
                                                                </p>
                                                                <p>
                                                                    We are proud of our swim teams and swim team families. They are a very important
                                                                    part of the Y and our rich history in swimming. Although winning is not our main
                                                                    focus, members of our swim teams have enjoyed a great deal of success, including:
                                                                </p>
                                                                <ul>
                                                                    <li>US Olympic Trial Qualifiers</li>
                                                                    <li>US Open Qualifiers</li>
                                                                    <li>Nationals Finalists</li>
                                                                    <li>USA Swimming Top 16</li>
                                                                    <li>Maryland Swimming Top 5</li>
                                                                    <li>NCAA Division I Scholarship recipients</li>

                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="register-now.aspx" class="common-btn btn-velvet" onclick='SpecialRedirectPartThree("swimregistration","messages")'><span class="btn-velvet-border">Swim Team Tryouts</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabSwimTeams">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subTabSwimTeams" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Swim Teams
                                                </a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subTabSwimTeams">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    Swim team members are grouped by age ranging from 5 – 18 years old. For more information
                                                                    on swim teams, please contact the Swim Director at a participating Y center below.
                                                                </p>
                                                                <table class="table table-striped">
                                                                    <tr>
                                                                        <th>Y Center</th>
                                                                        <th>Team Mascot</th>
                                                                        <th>More Information</th>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Catonsville Family Center  Y </td>
                                                                        <td>Barracudas</td>
                                                                        <td>410-747-9622
                                                                            <br />
                                                                            <a href="mailTo:catyswimteam@ymaryland.org">catyswimteam@ymaryland.org</a>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Dancel Family Center Y	 </td>
                                                                        <td>Manta Rays</td>
                                                                        <td>410-465-4334
                                                                            <br />
                                                                            <a href="mailTo:adamrutz@ymaryland.org">adamrutz@ymaryland.org</a>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Hill Family Center Y</td>
                                                                        <td>Piranhas</td>
                                                                        <td>410-848-3660
                                                                            <br />
                                                                            <a href="mailTo:ccyswimteam@gmail.com">ccyswimteam@gmail.com</a>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>The Orokawa Family Center Y in Towson (formerly Towson Family Center Y)

                                                                        </td>
                                                                        <td>Frogs</td>
                                                                        <td>410-823-8870
                                                                            <br />
                                                                            <a href="mailTo:towsonyswimteam@gmail.com">towsonyswimteam@gmail.com</a>
                                                                        </td>
                                                                    </tr>


                                                                    <tr>
                                                                        <td>Ward Family Center Y

                                                                        </td>
                                                                        <td>Blue Crabs</td>
                                                                        <td>410-679-9622
                                                                            <br />
                                                                            <a href="mailTo:miguelmejia@ymaryland.org">miguelmejia@ymaryland.org</a>
                                                                        </td>
                                                                    </tr>


                                                                    <tr>
                                                                        <td>Y Swim Center in Randallstown

                                                                        </td>
                                                                        <td>Sharks</td>
                                                                        <td>410-496-4272
                                                                            <br />
                                                                            <a href="mailTo:samuelburrell@ymaryland.org">samuelburrell@ymaryland.org</a>
                                                                        </td>
                                                                    </tr>

                                                                </table>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="register-now.aspx" class="common-btn btn-velvet" onclick='SpecialRedirectPartThree("swimregistration","messages")'><span class="btn-velvet-border">Swim Team Tryouts</span></a>
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
                        <div class="tab-pane" id="youth">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="Ul2">
                                    <li class="active"><a href="#tabSWIMLESSONSWATEREXERCISE" data-toggle="tab">SWIM LESSONS
                                        & WATER EXERCISE </a></li>
                                    <li><a href="#tabSWIMCLINICS" data-toggle="tab">SWIM CLINICS </a></li>
                                    <li><a href="#tabSWIMTEAMS" data-toggle="tab">SWIM TEAMS </a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabSWIMLESSONSWATEREXERCISE">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subTabSWIMLESSONSWATEREXERCISE" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">SWIM LESSONS
                                                & WATER EXERCISE </a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subTabSWIMLESSONSWATEREXERCISE">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Things to Know Before Registering</h3>
                                                                <p>(If you already know, click the REGISTER NOW button to get started.)</p>
                                                                <h3 class="title-03">Sessions</h3>
                                                                <p>
                                                                    Registration for swim lessons and water exercise classes are available online or
                                                                    in person at any Family Center Y.
                                                                </p>
                                                                <p>
                                                                    Programs are offered in six, seven-week sessions throughout the year. An eighth week
                                                                    is available for make-up classes only. Classes that are cancelled due to inclement
                                                                    weather are not made up.
                                                                </p>
                                                                <p>
                                                                    As a member benefit, Y members have priority registration and may sign up for classes
                                                                    up to two-three weeks prior to the start of the session. The general public may
                                                                    register for classes up to one week prior (also called “open registration”).
                                                                </p>
                                                                <p><strong>2014 SESSION & REGISTRATION DATES</strong></p>
                                                                <table class="table table-striped">
                                                                    <tr>
                                                                        <th>Session
                                                                        </th>
                                                                        <th>Member Registration Begins…
                                                                        </th>
                                                                        <th>Open Registration Begins…
                                                                        </th>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Winter 1/6 – 3/2
                                                                        </td>
                                                                        <td>12/9/13 at 6:00am
                                                                        </td>
                                                                        <td>12/16/13 at 6:00am
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Spring I 3/3 – 4/27
                                                                        </td>
                                                                        <td>2/17/14 at 6:00am
                                                                        </td>
                                                                        <td>2/24/14 at 6:00am
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Spring II 4/28 – 6/22
                                                                        </td>
                                                                        <td>4/14/14 at 6:00am
                                                                        </td>
                                                                        <td>4/21/14 at 6:00am
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Summer 6/23 – 8/17
                                                                        </td>
                                                                        <td>6/9/14 at 6:00am
                                                                        </td>
                                                                        <td>6/16/14 at 6:00am
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Fall I 9/2 – 10/26
                                                                        </td>
                                                                        <td>8/11/14 at 6:00am
                                                                        </td>
                                                                        <td>8/18/14 at 6:00am
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Fall II 10/27 – 12/21
                                                                        </td>
                                                                        <td>10/13/14 at 6:00am
                                                                        </td>
                                                                        <td>10/20/14 at 6:00am
                                                                        </td>
                                                                    </tr>
                                                                </table>

                                                                <p>
                                                                    Note: Dancel Family Center Y members must sign up using an <a href="">adjusted registration
                                                                    schedule. </a>
                                                                </p>

                                                                <h3 class="title-03">Online Registration</h3>
                                                                <p>
                                                                    If you are a first-time user of online registration, you will need to submit a request
                                                                    to have an online account set-up. This request must be submitted at least 48 business
                                                                    hours prior to the registration begin date.
                                                                </p>
                                                                <p>To submit your request:</p>
                                                                <ul>
                                                                    <li>STEP 1	   Click the purple REGISTER NOW button</li>
                                                                    <li>STEP 2     Click the green LOGIN button under the Easy to Enroll logo and click
                                                                        the appropriate link under First Time Users</li>
                                                                    <li>STEP 3     Fill in the requested information and click the SUBMIT button. If you
                                                                        have a membership card, you will be asked to type in the access code from the back
                                                                        of your membership. The access number and date of birth must be that of the primary
                                                                        member.</li>
                                                                    <li>STEP 4     Once your request has been processed, you will receive an email.  At
                                                                        that point, you’re free to register online for any available Y program!</li>
                                                                </ul>
                                                                <p>Note: You may search for Y classes without setting up an online account.</p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="register-now.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("swimregistration")'><span class="btn-velvet-border">Register Now</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabSWIMCLINICS">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subTabSWIMCLINICS" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">SWIM CLINICS</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subTabSWIMCLINICS">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Things to Know Before Registering</h3>
                                                                <p>(If you already know, click the REGISTER NOW button to get started.)</p>
                                                                <p>
                                                                    <i>Please read before registering to ensure the smoothest online registration experience!</i>
                                                                </p>
                                                                <p>
                                                                    Registration for summer swim clinics is ONLY AVAILABLE ONLINE. Discounts are now
                                                                    available online as well. Sign up early as space is limited and enrollment is on
                                                                    a first-come, first-served basis. All registrations must be accompanied by applicable
                                                                    deposits and forms. If you need assistance with your online registration, please
                                                                    contact your nearest Y center. Y front desk staff is available to answer any questions.
                                                                    Anyone with special financial considerations must contact Y Customer Billing at
                                                                    <a href="mailTo:billing@ymaryland.orgor">billing@ymaryland.orgor </a>call 443-322-8000
                                                                    for help.
                                                                </p>
                                                                <p>BEFORE LOGGING ON TO REGISTER</p>
                                                                <ul>
                                                                    <li>Confirm your account by clicking the link within the confirmation email sent from
                                                                        "Billing" to the address provided (check your Spam folder if you do not see the
                                                                        email right away).</li>
                                                                    <li>Have all emergency contact and medical/allergy information ready, including the
                                                                        date of your child's last tetanus shot (use 1st of the month if the day is not known).
                                                                    </li>
                                                                    <li>If you are a Y member, have your membership keytag handy to enter the access number.
                                                                        Only a parent or legal guardian of the child can register for camp and must have
                                                                        an active family membership to qualify for the family rates.</li>

                                                                </ul>

                                                                <p>DURING REGISTRATION</p>
                                                                <ul>
                                                                    <li>Register and pay for ONE WEEK FIRST per child to save your child's medical information
                                                                        and prevent having to enter it for each week separately. </li>
                                                                    <li>To take advantage of our sibling discount, complete the registration process for
                                                                        all children at one time for each week separately. The sibling discount will automatically
                                                                        be deducted and show up on your receipt. </li>
                                                                    <li>To take advantage of our payment plan and only pay a $25 (half-day clinics) or $50
                                                                        (full-day clinics) deposit at time of registration, be sure to click "Payment Plan"
                                                                        BEFORE proceeding to the Shopping Cart.</li>

                                                                </ul>



                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <%--<a href="https://apm.activecommunities.com/ymaryland" target="_blank" class="common-btn btn-velvet">--%>
                                                                <a href="register-now.aspx" class="common-btn btn-velvet" onclick='SpecialRedirect("swimregistration")'>
                                                                    <span class="btn-velvet-border">Register Now</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabSWIMTEAMS">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subTabSWIMTEAMS" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">SWIM TEAMS</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subTabSWIMTEAMS">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    Most of our swim teams maintain a wait list of youth interested in joining. When
                                                                    openings on the team are available, coaches pull from the wait list to evaluate
                                                                    swimmers and/or hold tryouts. This is done during the summer months.
                                                                </p>
                                                                <p>
                                                                    To find out if a participating Y center is holding evaluations or tryouts, call or
                                                                    email using the information below.
                                                                </p>
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <td>Catonsville Family Center  Y</td>
                                                                        <td>410-747-9622, <a href="mailTo:catyswimteam@ymaryland.org">catyswimteam@ymaryland.org</a>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Dancel Family Center Y</td>
                                                                        <td>410-465-4334, <a href="mailTo:adamrutz@ymaryland.org">adamrutz@ymaryland.org </a>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Hill Family Center Y</td>
                                                                        <td>410-848-3660, <a href="mailTo:ccyswimteam@gmail.com">ccyswimteam@gmail.com </a>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>The Orokawa Family Center Y in Towson (formerly Towson Family Center Y)</td>
                                                                        <td>410-823-8870, <a href="mailTo:towsonyswimteam@gmail.com">towsonyswimteam@gmail.com
                                                                        </a></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Ward Family Center Y</td>
                                                                        <td>410-679-9622, <a href="mailTo:philipsconzert@ymaryland.org">philipsconzert@ymaryland.org
                                                                        </a></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Y Swim Center in Randallstown</td>
                                                                        <td>410-496-4272, <a href="mailTo:samuelburrell@ymaryland.org">samuelburrell@ymaryland.org</a>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="swim-lessons.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">View Swim Lessions</span></a>
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
