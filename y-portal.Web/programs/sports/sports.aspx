<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true"
    CodeBehind="sports.aspx.cs" Inherits="YPortal.Web.programs.sports.sports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container mobile-view-fix">
            <div data-ride="carousel" data-interval="false" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators mobile-margin-fix">
                    <li class="active" data-slide-to="0" data-target="#carousel-example-captions"><a href="#sportsyouth" onclick='SpecialRedirectPartTwo("sportsyouth")'
                        data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/sports/youth-sports.png">
                        <span>Youth Sports </span></a></li>
                    <li data-slide-to="1" data-target="#carousel-example-captions" class=""><a href="#sportsadult" onclick='SpecialRedirectPartTwo("sportsadult")'
                        data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/sports/adult-sports.png">
                        <span>Adult Sports </span></a></li>
                    <li data-slide-to="2" data-target="#carousel-example-captions" class=""><a href="#sportsclinics" onclick='SpecialRedirectPartTwo("sportsclinics")'
                        data-toggle="tab">
                        <img src="../../App_Style/images/banner/thumbnails/programs/sports/summer-sports-clinic.png">
                        <span>Summer Sports Clinics  </span></a></li>
                </ol>
                <h3 class="carousel-title">Sports</h3>
                <div class="carousel-inner">

                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/sports/ProgramsYouthSports.png">
                        <div class="carousel-caption">
                            <p>
                                We build skills. We build character. 
                                    <br>
                                We have fun!
                            </p>

                        </div>
                    </div>
                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/sports/adult-sports.png">
                        <div class="carousel-caption">
                            <p>
                                Be a kid 
                                    <br>
                                at heart
                            </p>

                        </div>
                    </div>
                    <div class="item">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/sports/summer-sports-clinic.png">
                        <div class="carousel-caption">
                            <p>
                                For the love 
                                    <br>
                                of the game
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
                        <div class="tab-pane active" id="sportsyouth">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#tabYSportsPhilosophy" data-toggle="tab">Y Sports Philosophy
                                    </a></li>
                                    <li><a href="#tabYouthSportsPrograms" data-toggle="tab">Youth Sports Programs </a>
                                    </li>
                                    <li><a href="#tabYouthSportsLeagues" data-toggle="tab">Youth Sports Leagues </a>
                                    </li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabYSportsPhilosophy">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subTabYSportsPhilosophy" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Y Sports Philosophy
                                                </a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subTabYSportsPhilosophy">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    At the Y, we understand that before children can be great athletes, they need to
                                                                    be great at the fundamentals. That's where we fit in - shaping tomorrow's athletes
                                                                    today.
                                                                </p>
                                                                <p>
                                                                    Competition is inevitable, but we believe there will be plenty of time for serious
                                                                    competition as children get older. Right now, kids just want to have fun! That's
                                                                    why we focus on skill development, fun drills, game play and confidence-building.
                                                                </p>
                                                                <p>Other program components include...</p>
                                                                <ul>
                                                                    <li>Coordination</li>
                                                                    <li>Teamwork</li>
                                                                    <li>Safety</li>
                                                                    <li>Sportsmanship & Fair Play</li>
                                                                    <li>Character Development</li>
                                                                    <li>Enjoyment of the Game</li>
                                                                </ul>
                                                            </div>

                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a onclick="SpecialRedirectPartThree('sportsregistration','home')" href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Register for Youth Sports</span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabYouthSportsPrograms">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subTabYouthSportsPrograms" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Youth Sports
                                                Programs</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subTabYouthSportsPrograms">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Traditional Sports </h3>
                                                                <p><i>Classes, age ranges and program availability vary by location.</i></p>
                                                                <h3 class="title-04">Basketball</h3>
                                                                <p>
                                                                    Hit nothing but net as you improve your basketball skills, including ball control,
                                                                    dribbling, passing, shooting and court position.
                                                                </p>
                                                                <ul>
                                                                    <li>Bitty Basketball (age range: 3-6)</li>
                                                                    <li>Basketball Skills (ages range: 6-12)</li>
                                                                </ul>
                                                                <h3 class="title-04">Flag Football</h3>
                                                                <p>
                                                                    Enhance your skills with drills and games that focus on passing, catching, kicking,
                                                                    field position and more!
                                                                </p>
                                                                <ul>
                                                                    <li>Pee Wee Passers (age range: 3-6)</li>
                                                                    <li>Football Skills (ages range: 6-12)</li>
                                                                </ul>
                                                                <h3 class="title-04">Girls Volleyball (age range: 7-12)</h3>
                                                                <p>
                                                                    Enjoy the sport of volleyball as you learn fundamental skills such as serving, passing,
                                                                    hitting and formations. 
                                                                </p>
                                                                <h3 class="title-04">Individual Sports Instruction (age range: 6+)</h3>
                                                                <p>
                                                                    Get individualized attention as you enhance and improve your sports skills. Sports
                                                                    instruction may include soccer, basketball, lacrosse and more (determined by the
                                                                    skills and ability of the instructor).
                                                                </p>
                                                                <h3 class="title-04">Lacrosse</h3>
                                                                <p>
                                                                    Learn and improve fundamental lacrosse skills such as cradling, passing, catching,
                                                                    scooping and shooting.
                                                                </p>
                                                                <ul>
                                                                    <li>Little Lax (age range: 3-6)</li>
                                                                    <li>Lacrosse Skills (age range: 6-12)</li>
                                                                </ul>
                                                                <h3 class="title-04">Soccer</h3>
                                                                <p>
                                                                    Have a blast as you improve your soccer skills, including dribbling, passing, shooting,
                                                                    ball control, field position, and offensive and defensive strategies.
                                                                </p>
                                                                <ul>
                                                                    <li>Kinder Kicks (age range: 2-6)</li>
                                                                    <li>Soccer Skills (age range: 6-12)</li>
                                                                </ul>
                                                                <h3 class="title-04">Sports Mix</h3>
                                                                <p>Enjoy a variety of sports like basketball, soccer, flag football and more!</p>
                                                                <ul>
                                                                    <li>Sports Mix (age range: 3-6)</li>
                                                                    <li>Youth Sports Mix (age range: 6-12)</li>
                                                                    <li>Family Sports Mix (parent/child class, up to age 5)</li>
                                                                </ul>
                                                                <h3 class="title-04">T-ball</h3>
                                                                <p>
                                                                    Have fun on the diamond as you play t-ball and learn basic skills such as batting,
                                                                    throwing, catching and base running!
                                                                </p>
                                                                <ul>
                                                                    <li>Tiny Tees (age range: 3-6)</li>
                                                                </ul>
                                                                <h3 class="title-03">Non-Sport Specific Classes</h3>
                                                                <p><i>Classes, age ranges and program availability vary by location.</i></p>
                                                                <h3 class="title-04">Cheerleading (age range: 5-8)</h3>
                                                                <p>
                                                                    Flash your spirit fingers as you’re introduced to basic cheer movements and body
                                                                    positions, chants, jumps and more!
                                                                </p>
                                                                <h3 class="title-04">Fitnastics (age range: 6-12)</h3>
                                                                <p>
                                                                    Improve balance, coordination and strength through use of appropriate gymnastics
                                                                    equipment.
                                                                </p>
                                                                <h3 class="title-04">Gym Games (age range: 2-4)</h3>
                                                                <p>
                                                                    Enjoy a variety of fun activities and games designed to help you prepare for kindergarten
                                                                    gym.
                                                                </p>
                                                                <h3 class="title-04">Gym & Swim (age range: varies)</h3>
                                                                <p>
                                                                    A combination of fun recreational gym games and sports followed by open swim time.
                                                                    Depending on the child’s age, hands-on parent involvement may be required in the
                                                                    pool and with games.
                                                                </p>
                                                                <h3 class="title-04">Home School PE (age range: 5-12)</h3>
                                                                <p>
                                                                    The Y offers a physical education program to children who are home schooled. Participate
                                                                    in general fitness, learn basic skills for various sports and more!
                                                                </p>
                                                                <h3 class="title-04">Miniastics (age range: 3-6)</h3>
                                                                <p>
                                                                    Improve your motor skills, balance and coordination as you explore basic gymnastics
                                                                    skills through the use of an obstacle course, age-appropriate equipment and fun
                                                                    games! 
                                                                </p>
                                                                <h3 class="title-04">Toddler Playtime(parent/child class, infants to age 3)</h3>
                                                                <p>
                                                                    Increase the activity level of your infant or toddler through fun parent interactions.
                                                                </p>
                                                                <h3 class="title-04">Tumbling</h3>
                                                                <p>
                                                                    Enjoy a fun class that keeps kids moving! Body awareness is developed through the
                                                                    use of obstacle courses and other fun equipment. The concept of taking turns, class
                                                                    order and sequence is introduced with a strong emphasis on socialization and motor
                                                                    skills, listening and group involvement.
                                                                </p>
                                                                <ul>
                                                                    <li>Busy Bees (parent/child class, age range: 1-3)</li>
                                                                    <li>Tumble Bees (parent/child class, age range: 3-5)</li>

                                                                </ul>
                                                            </div>

                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a onclick="SpecialRedirectPartThree('sportsregistration','home')" href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Register for Youth Sports</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabYouthSportsLeagues">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subTabYouthSportsLeagues" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Youth Sports
                                                Leagues </a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subTabYouthSportsLeagues">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p><i>Leagues, age ranges and program availability vary by location.</i></p>
                                                                <p>
                                                                    Boys and girls will be placed on coed teams according to age. Skill development,
                                                                    teamwork and sportsmanship are key.  Kids will improve sport-specific technique
                                                                    and ability in a game environment and further develop the fundamentals of the game
                                                                    through fun activities and league play. Score will not be kept during league games.
                                                                    Team shirts will be provided.
                                                                </p>
                                                                <ul>
                                                                    <li>Basketball League (ages 4-14)</li>
                                                                    <li>T-Ball League (ages 4-14)</li>
                                                                    <li>Soccer League (ages 4-14)</li>
                                                                    <li>Lacrosse League (ages 4-14)<br />
                                                                        Some Y centers may offer specific boys lacrosse leagues and girls lacrosse leagues.
                                                                    </li>
                                                                </ul>
                                                               
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a onclick="SpecialRedirectPartThree('sportsregistration','home')" href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Register for Youth Sports</span></a>
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
                        <div class="tab-pane " id="sportsadult">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="Ul1">
                                    <li class="active"><a href="#tabAdultSportsLeagues" data-toggle="tab">Adult Sports Leagues</a>
                                    </li>
                                    <li><a href="#tabtabAdultSportsLeagues" data-toggle="tab">Drop-in Sports </a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabAdultSportsLeagues">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subTabAdultSportsLeagues" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Adult Sports
                                                Leagues</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subTabAdultSportsLeagues">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p><i>Age 16 and up. League availability and rules vary by location.</i></p>
                                                                <p>
                                                                    Our adult leagues are fun and competitive, but always in a respectful, non-aggressive
                                                                    manner. All abilities and skill levels welcome!
                                                                </p>
                                                                <h3 class="title-03">Coed Volleyball League
                                                                </h3>
                                                                <p>
                                                                    Register as a “free agent” and we’ll place you on a team with other individuals! Get
                                                                    friends together and register as a team! Session includes games plus playoffs. All
                                                                    games are played at the Y. Individual or team rates apply. Referee fees are included.
                                                                </p>
                                                                <h3 class="title-03">Men’s Futsal League</h3>
                                                                <p>
                                                                    Futsal is a modified form of indoor soccer played with five players per side. Session
                                                                    includes games plus playoffs. Shin guards are required. Teams must have matching
                                                                    uniforms. Referee fees are included. All games areplayed at the Y.
                                                                </p>
                                                                <h3 class="title-03">Coming Soon…</h3>
                                                                <p>Coed Outdoor Soccer</p>
                                                            </div>

                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a onclick="SpecialRedirectPartThree('sportsregistration','home')" href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Register for Adult Sports</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabtabAdultSportsLeagues">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subTabtabAdultSportsLeagues" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Drop-in Sports</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subTabtabAdultSportsLeagues">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p><i>Age 16 and up. Drop-in availability and rules vary by location.</i></p>
                                                                <p>
                                                                    For those sports fans who want to stay active, but can’t commit to league play; we
                                                                    offer you drop-in sports!  No need to form a team; just drop-in at the Y and get
                                                                    in on a game. All abilities and skill levels welcome!
                                                                </p>
                                                                <ul>
                                                                    <li>Dodgeball</li>
                                                                    <li>Basketball</li>
                                                                </ul>
                                                            </div>

                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <%--<a href="" data-toggle="modal" data-target=".bs-example-modal-lg" class="common-btn btn-velvet">--%>
                                                                <a onclick="SpecialRedirectPartThree('sportsregistration','home')" href="registernow.aspx" class="common-btn btn-velvet">
                                                                    <span class="btn-velvet-border">Search for
                                                                    Drop-in Sports</span></a>
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
                        <div class="tab-pane" id="sportsclinics">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="Ul2">
                                    <li class="active"><a href="#tabOptionsFes" data-toggle="tab">Options & Fees </a>
                                    </li>
                                    <li><a href="#tabLoocations" data-toggle="tab">Locations </a></li>
                                    <li><a href="#tabGeneralInformations" data-toggle="tab">General Information </a>
                                    </li>
                                    <li><a href="#tabBrochuresForms" data-toggle="tab">Brochure & Forms </a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabOptionsFes">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subTabOptionsFes" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Options & Fees
                                                </a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subTabOptionsFes">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    Summer sports clinics focus on skill development, game play, drills, teamwork, sportsmanship
                                                                    and having FUN! Principles like everyone plays, positive competition, safety first
                                                                    and fair play are the foundation of our program. Players are grouped by age and
                                                                    ability. Ultimately, our goal is to help prepare children for the next level of
                                                                    sports and teach them that strong character is just as important as a strong game!
                                                                </p>
                                                                <p>
                                                                    To see a schedule of sports clinic offerings by location, please view our <a target="_blank" href="pdf/SPORTS-Summer-Sports-Clinics-Sport-Clinics-Selection-Chart.pdf">2014 summer clinic selection chart </a>.
                                                                </p>
                                                                <h3 class="title-03">SPORTS</h3>
                                                                <p><strong>Adventure Clinic </strong>(ages 7-12)</p>
                                                                <p>
                                                                    Are you ready for an adventure?! Participants focus on team building through a variety
                                                                    of outdoor challenges.
                                                                </p>
                                                                <p><strong>Baseball Clinic </strong>(ages 7-12)</p>
                                                                <p>
                                                                    Hey batter, batter, batter; sa-wing batter! Improve your batting, throwing, catching,
                                                                    pitching, base running and field position skills this summer.
                                                                </p>
                                                                <p>
                                                                    <strong>Basketball Clinic </strong>(ages 7 -12)/ <strong>Bitty Basketball Clinic
                                                                    </strong>(ages 4-6)
                                                                </p>
                                                                <p>
                                                                    Are you the next NBA All-Star in the making? Refine your basketball skills to help
                                                                    you get to the next level of the game.
                                                                </p>
                                                                <p><strong>Cheerleading/Gymnastics Clinic </strong>(ages 7-12)</p>
                                                                <p>
                                                                    For all you budding tumblers, we offer our cheerleading/gymnastics clinic! Half the
                                                                    day will focus on developing cheerleading skills like body positions, chants and
                                                                    jumps. The other half will focus on basic gymnastics like tumbling and cartwheels.
                                                                </p>
                                                                <p><strong>Flag Football Clinic </strong>(ages 7 – 12, ages vary by location)</p>
                                                                <p>
                                                                    Down, set, hike! Participants are divided into position-specific groups of linemen,
                                                                    backs, receivers, and special teams. Each group will rotate through stations working
                                                                    on fundamentals, conditioning, strength and skills.
                                                                </p>
                                                                <p><strong>Floor Hockey Clinic </strong>(ages 7-12)</p>
                                                                <p>Skills include passing, shooting, field position, keeper and stick control.</p>
                                                                <p><strong>Girls Volleyball Clinic </strong>(ages 7-12)</p>
                                                                <p>
                                                                    Participants will work on serving, passing, setting, hitting, blocking, and offensive
                                                                    and defensive positions.
                                                                </p>
                                                                <p><strong>Health & Wellness Clinic </strong>(ages 7 – 12)</p>
                                                                <p>
                                                                    Participants will learn that a healthy lifestyle is a fun lifestyle! Clinic will
                                                                    include fitness games, healthy eating information, team building activities and
                                                                    more!
                                                                </p>
                                                                <p>
                                                                    <strong>Sports Mix Clinic </strong>(ages 7 – 12)/ <strong>Kinder Sports Mix Clinic
                                                                    </strong>(ages 4 - 6)
                                                                </p>
                                                                <p>
                                                                    Get a little bit of everything in our sports mix clinic! Participants will play a
                                                                    variety of sports like basketball, soccer, flag football and more.
                                                                </p>
                                                                <p>
                                                                    <strong>Soccer Clinic </strong>(ages 7-12)/ <strong>Kinder Kicks Clinic </strong>
                                                                    (ages 4-6)
                                                                </p>
                                                                <p>
                                                                    It's the #1 sport in the world for a reason! Have a blast this summer as you improve
                                                                    your soccer skills including dribbling, passing, shooting, and offensive and defensive
                                                                    strategies/techniques.
                                                                </p>
                                                                <p><strong>FEES </strong>(half-day rates; double the price for full-day rates)</p>
                                                                <ul>
                                                                    <li>Family Member: $79/wk</li>
                                                                    <li>Youth Member: $99/wk</li>
                                                                    <li>Open Rate: $104/wk</li>
                                                                </ul>
                                                                <h3 class="title-03">ROCK WALL</h3>
                                                                <p><strong>Rock Wall Clinic </strong>(ages 7-12) </p>
                                                                <p>
                                                                    Learn basic climbing techniques while being challenged with drills and games. Focus
                                                                    will be on safety and learning proper climbing skills.
                                                                </p>
                                                                <p><strong>FEES</strong> (half-day rates; double the price for full-day rates)</p>
                                                                <ul>
                                                                    <li>Family Member: $93/wk</li>
                                                                    <li>Youth Member: $108/wk</li>
                                                                    <li>Open Rate: $143/wk</li>
                                                                </ul>
                                                                <h3 class="title-03">DANCE</h3>
                                                                <p>Available only at the Greater Annapolis Family Center Y</p>
                                                                <p><strong>Princess Fairytopia </strong>(ages 3-6)</p>
                                                                <p>
                                                                    Participants will learn fun dances to well-known princess songs. Make a princess
                                                                    outfit, have a princess tea party, swim and make fun princess crafts! No dance experience
                                                                    needed.
                                                                </p>
                                                                <p>Session:  Week 8 (8/4-8/8)</p>
                                                                <p>Time:      Half-day only, 9am - 1pm</p>
                                                                <p>
                                                                    Note:      Bring a lunch and water bottle, wear comfortable clothes and wear your
                                                                    hair up and back. Dance shoes optional.
                                                                </p>
                                                                <h3 class="title-03">FEES</h3>
                                                                <ul>
                                                                    <li>Family Member: $250/wk</li>
                                                                    <li>Youth Member: $250/wk</li>
                                                                    <li>Open Rate: $300/wk</li>
                                                                </ul>
                                                                <p><strong>American Girl Doll </strong>(ages 5-11)</p>
                                                                <p>
                                                                    For all you American Girl doll lovers! Bring your American Girl doll (or any favorite
                                                                    doll) to the Y. Make crafts for yourself and your doll, learn dances, play games,
                                                                    learn an American Girl skit and have a tea party! There will be a performance on
                                                                    the last day!
                                                                </p>
                                                                <p>Sessions:   Week 1 (6/16-6/20), Week 7 (7/28-8/1)</p>
                                                                <p>Time:        Full-day only, 9am - 4pm</p>
                                                                <p>
                                                                    Note:        Bring your lunch and a water bottle, wear comfortable clothes and wear
                                                                    your hair up and back.
                                                                </p>
                                                                <h3 class="title-03">FEES</h3>
                                                                <ul>
                                                                    <li>Family Member: $300/wk</li>
                                                                    <li>Youth Member: $300/wk</li>
                                                                    <li>Open Rate: $325/wk</li>
                                                                </ul>
                                                                <p><strong>Dancing on Broadway </strong>(ages 6-17)</p>
                                                                <p>
                                                                    Participants will be broken out into older and younger age groups where they will
                                                                    learn different dances of different styles (ballet, jazz, modern, choreography,
                                                                    lyrical, hip hop) to four popular Broadway shows. Participants will have daily stage
                                                                    make-up assignments, make their costumes, props and backdrops. There will be a performance
                                                                    on the last day.
                                                                </p>
                                                                <p>
                                                                    Sessions:  Week 3 (6/30-7/3), Week 4 (7/7-7/11), Week 5 (7/14-7/18), Week 6 (7/21-7/25)
                                                                </p>
                                                                <p>Time:       Full day only, 9am - 4pm</p>
                                                                <p>
                                                                    Note:       Bring your lunch and a water bottle, make-up remover, hand towel, and
                                                                    wear comfortable clothes with your hair pulled up and back. No previous dance experience
                                                                    needed!
                                                                </p>
                                                                <h3 class="title-03">FEES</h3>
                                                                <ul>
                                                                    <li>Family Member: $350/wk</li>
                                                                    <li>Youth Member: $350/wk</li>
                                                                    <li>Open Rate: $400/wk</li>
                                                                </ul>
                                                                <p><strong>Project Funway </strong>(ages 8-14)</p>
                                                                <p>
                                                                    Based on the hit TV show "Project Runway", participants will design a head-to-toe
                                                                    look and model it in an age appropriate fashion show. Participants will learn different
                                                                    sewing techniques, have daily challenges, learn how to sketch their ideas, and learn
                                                                    how to walk the cat walk! There will be a fashion show on the last day.
                                                                </p>
                                                                <p>Sessions:  Week 2 (6/23-6/27)</p>
                                                                <p>Time:       Full day only, 9am - 4pm</p>
                                                                <p>
                                                                    Note:       Bring your lunch and a water bottle, sharp scissors, and wear comfortable
                                                                    clothes with your hair up and back.
                                                                </p>
                                                                <h3 class="title-03">FEES</h3>
                                                                <ul>
                                                                    <li>Family Member: $300/wk</li>
                                                                    <li>Youth Member: $300/wk</li>
                                                                    <li>Open Rate: $325/wk</li>
                                                                </ul>

                                                            </div>

                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a onclick="SpecialRedirectPartThree('sportsregistration','profiles')" href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Register for Summer Sports Clinics</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabLoocations">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subtabLoocations" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Locations</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabLoocations">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>
                                                                    To see a schedule of sports clinic offerings by location, please view our <a target="_blank" href="pdf/SPORTS-Summer-Sports-Clinics-Sport-Clinics-Selection-Chart.pdf">2014 summer clinic selection chart</a>.
                                                                </p>
                                                                <h3 class="title-03">Anne Arundel County</h3>
                                                                <p><strong>Greater Annapolis Family Center Y</strong></p>
                                                                <p>
                                                                    1209 Ritchie Hwy.
                                                                    <br />
                                                                    Arnold, MD 21012
                                                                    <br />
                                                                    410-544-2525 
                                                                </p>
                                                                <br />
                                                                <h3 class="title-03">Baltimore City</h3>
                                                                <p><strong>Weinberg Family Center Y</strong></p>
                                                                <p>
                                                                    900 E. 33rd St.
                                                                    <br />
                                                                    Baltimore, MD 21218<br />
                                                                    410-889-9622
                                                                </p>
                                                                <br />
                                                                <h3 class="title-03">Baltimore County</h3>
                                                                <p><strong>Catonsville Family Center Y</strong></p>
                                                                <p>
                                                                    850 S. Rolling Rd.
                                                                    <br />
                                                                    Catonsville, MD 21228<br />
                                                                    410-747-9622
                                                                </p>
                                                                <br />
                                                                <p><strong>Orokawa Family Center Y in Towson</strong></p>
                                                                <p><i>(formerly Towson Family Center Y)</i></p>
                                                                <p>
                                                                    600 W. Chesapeake Ave.<br />
                                                                    Towson, MD 21204<br />
                                                                    410-823-8870
                                                                </p>

                                                                <br />

                                                                <p><strong>Perry Hall Family Center Y</strong></p>
                                                                <p>
                                                                    4375 Ebenezer Rd.<br />
                                                                    Perry Hall, MD 21236<br />
                                                                    410-529-1999
                                                                </p>

                                                                <br />

                                                                <p><strong>Y Swim Center in Dundalk</strong></p>
                                                                <p>
                                                                    120 Trading Pl.<br />
                                                                    Dundalk, MD 21222<br />
                                                                    410-285-7616
                                                                </p>

                                                                <br />
                                                                <h3 class="title-03">Carroll County</h3>
                                                                <p><strong>Hill Family Center Y</strong></p>
                                                                <p>
                                                                    1719 Sykesville Rd.<br />
                                                                    Westminster, MD 21157<br />
                                                                    410-848-3660
                                                                </p>
                                                                <p>
                                                                    <a href="../camps/camps.aspx" onclick='SpecialRedirectPartThree("campsmessagess","sub-tab-12")'>Click here</a> to learn about our new summer
                                                                    experience only available at the Hill Family Center Y!
                                                                </p>

                                                                <br />
                                                                <h3 class="title-03">Harford County</h3>
                                                                <p><strong>Ward Family Center Y</strong></p>
                                                                <p>
                                                                    101 Walter Ward Blvd.<br />
                                                                    Abingdon, MD 21009<br />
                                                                    410-679-9622
                                                                    <br />
                                                                    <i>(Off Rte. 924 behind Wegman’s)</i>
                                                                </p>

                                                                <br />
                                                                <h3 class="title-03">Howard County</h3>
                                                                <p><strong>Dancel Family Center Y</strong></p>
                                                                <p>
                                                                    4331 Montgomery Rd.<br />
                                                                    Ellicott City, MD 21043<br />
                                                                    410-465-4334
                                                                    
                                                                </p>
                                                            </div>

                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a onclick="SpecialRedirectPartThree('sportsregistration','profiles')" href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Register for Summer Sports Clinics</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabGeneralInformations">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subtabGeneralInformations" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">General Information</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabGeneralInformations">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Availability</h3>
                                                                <p>
                                                                    Summer clinics run in weekly sessions from June 16th to August 22nd. Clinics are
                                                                    offered in half-day morning or afternoon times.  You have the option of customizing
                                                                    your own full-day clinic by signing up for a half-day morning clinic and a half-day
                                                                    afternoon clinic. Clinics vary by location and are subject to change. To see a schedule
                                                                    of clinic offerings, including location and available weeks, view our <a href="pdf/SPORTS-Summer-Sports-Clinics-Sport-Clinics-Selection-Chart.pdf" target="_blank">2014 summer clinics selection chart </a>.
                                                                </p>
                                                                <h3 class="title-03">Hours</h3>
                                                                <p>
                                                                    Half-day morning clinics: 9am - 12pm
                                                                    <br />
                                                                    Half-day afternoon clinics: 1pm – 4pm
                                                                    <br />
                                                                    Full-day clinics: 9am – 4pm (child must bring lunch)
                                                                </p>
                                                                <h3 class="title-03">Extended Hours</h3>
                                                                <p>
                                                                    Morning and afternoon extended hours are not included in the cost of clinics. Each
                                                                    is an additional $15 per week per child; $30 per week per child for both morning
                                                                    and afternoon.
                                                                </p>
                                                                <p>
                                                                    Morning: 7am – 9am, additional $15 per week per child
                                                                    <br />
                                                                    Afternoon: 4pm – 6pm, additional $15 per week per child
                                                                </p>
                                                                <h3 class="title-03">Sibling Discounts</h3>
                                                                <p>
                                                                    A $5 fee reduction per morning or afternoon session will be given for each additional
                                                                    child when registered for the same weeks of clinics. Discounts are available online.
                                                                </p>
                                                                <h3 class="title-03">Deposits</h3>
                                                                <p>
                                                                    A $25 per week per child deposit is required for all half-day sports & swim clinics
                                                                    and a $50 per week per child deposit is required for all full-day sports & swim
                                                                    clinics. Deposits are non-refundable and are applied towards the total weekly fee.
                                                                    Even when the clinic is paid in full, $25 or $50 per week is considered a non-refundable
                                                                    deposit. (Not subject to sibling discounts).
                                                                </p>
                                                                <h3 class="title-03">Balance of Weekly Clinic Fees</h3>
                                                                <p>
                                                                    The balance of all weekly clinic fees are due two weeks prior to the start of that
                                                                    week of clinics. If the balance is not received, the child will not be allowed to
                                                                    attend and the slot will be reassigned.
                                                                </p>
                                                                <h3 class="title-03">Cancellation Policy</h3>
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
                                                                <a onclick="SpecialRedirectPartThree('sportsregistration','profiles')" href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Register for Summer Sports Clinics</span></a>
                                                                <%--<img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="tabBrochuresForms">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title">
                                                <a href="#subtabBrochuresForms" data-parent="#collapse-myTab"
                                                    data-toggle="collapse" class="accordion-toggle deco-none misc-class">Brochure & Forms</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="subtabBrochuresForms">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <ul>
                                                                    <li><a href="pdf/SPORTS-Summer-Sports-Clinics-Sport-Clinics-Brochure.pdf" target="_blank">2014 Summer
                                                                        Clinics Brochure (PDF)</a></li>
                                                                    <li><a href="pdf/SPORTS-Summer-Sports-Clinics-Sport-Clinics-Parent-Manual.pdf" target="_blank">2014
                                                                        Clinic Parent Manual (PDF)</a></li>
                                                                    <li><a href="pdf/SPORTS-Summer-Sports-Clinics-Parent-Emergency-Form.pdf" target="_blank">Emergency Information
                                                                        Form (PDF)</a></li>
                                                                    <li><a href="pdf/SPORTS-Summer-Sports-Clinics-Medication-Form.pdf" target="_blank">Medication Form (PDF)</a>
                                                                    </li>
                                                                    <li><a href="pdf/FIN-APP-2014.pdf" target="_blank">Financial Assistance Form  (PDF)</a></li>
                                                                    <li><a href="pdf/SPORTS-Summer-Sports-Clinics-FAQs.pdf" target="_blank">Sports Clinic FAQs (PDF)</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a onclick="SpecialRedirectPartThree('sportsregistration','profiles')" href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Register for Summer Sports Clinics</span></a>
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
