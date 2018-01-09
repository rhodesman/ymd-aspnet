<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="youth-sports.aspx.cs" Inherits="YPortal.Web.programs.sports.youth_sports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators">
                    <li class="" data-slide-to="0" data-target="#carousel-example-captions"><a href="#homes" data-toggle="tab">
                        <img src="../../App_Style/images/banner/inner-page-banner/indicator-01.png" />
                        <span>YOUTH SPORTS                             
                        </span></a></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/sports/youth-sports.png">
                        <div class="carousel-caption">
                            <p>
                                We build skills. We build character. 
                                    <br>
                                We have fun!
                            </p>
                             
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="dux-content-area dux-content-area-margin-02">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="tab-content">
                        <div class="tab-pane active" id="homes">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#home" data-toggle="tab">Y Sports Philosophy </a></li>
                                    <li><a href="#profiles" data-toggle="tab">Youth Sports Programs </a></li>
                                    <li><a href="#messages" data-toggle="tab">Youth Sports Leagues </a></li>                                    
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Y Sports Philosophy </a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>At the Y, we understand that before children can be great athletes, they need to be great at the fundamentals. That's where we fit in - shaping tomorrow's athletes today. </p>
                                                                <p>Competition is inevitable, but we believe there will be plenty of time for serious competition as children get older. Right now, kids just want to have fun! That's why we focus on skill development, fun drills, game play and confidence-building. </p>
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
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Register for Youth Sports</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="profiles">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to1" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Youth Sports Programs</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to1">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                               <h3 class="title-03">Traditional Sports </h3>
                                                                <p>Classes, age ranges and program availability vary by location.</p>
                                                                <h3 class="title-03">Basketball</h3>
                                                                <p>Hit nothing but net as you improve your basketball skills, including ball control, dribbling, passing, shooting and court position.</p>
                                                                <ul>
                                                                    <li>Bitty Basketball (age range: 3-6)</li>
                                                                    <li>Basketball Skills (ages range: 6-12)</li>
                                                                </ul>
                                                                <h3 class="title-03">Flag Football</h3>
                                                                <p>Enhance your skills with drills and games that focus on passing, catching, kicking, field position and more!</p>
                                                                <ul>
                                                                    <li>Pee Wee Passers (age range: 3-6)</li>
                                                                    <li>Football Skills (ages range: 6-12)</li>
                                                                </ul>
                                                                <h3 class="title-03">Girls Volleyball (age range: 7-12)</h3>
                                                                <p>Enjoy the sport of volleyball as you learn fundamental skills such as serving, passing, hitting and formations.  </p>
                                                                <h3 class="title-03">Individual Sports Instruction (age range: 6+)</h3>
                                                                <p>Get individualized attention as you enhance and improve your sports skills. Sports instruction may include soccer, basketball, lacrosse and more (determined by the skills and ability of the instructor). </p>
                                                                <h3 class="title-03">Lacrosse</h3>
                                                                <p>Learn and improve fundamental lacrosse skills such as cradling, passing, catching, scooping and shooting. </p>
                                                                <ul>
                                                                    <li>Little Lax (age range: 3-6)</li>
                                                                    <li>Lacrosse Skills (age range: 6-12)</li>
                                                                </ul>
                                                                <h3 class="title-03">Soccer</h3>
                                                                <p>Have a blast as you improve your soccer skills, including dribbling, passing, shooting, ball control, field position, and offensive and defensive strategies.</p>
                                                                <ul>
                                                                    <li>Kinder Kicks (age range: 2-6)</li>
                                                                    <li>Soccer Skills (age range: 6-12)</li>
                                                                </ul>
                                                                <h3 class="title-03">Sports Mix</h3>
                                                                <p>Enjoy a variety of sports like basketball, soccer, flag football and more!</p>
                                                                <ul>
                                                                    <li>Sports Mix (age range: 3-6)</li>
                                                                    <li>Youth Sports Mix (age range: 6-12)</li>
                                                                    <li>Family Sports Mix (parent/child class, up to age 5)</li>
                                                                </ul>
                                                                <h3 class="title-03">T-ball</h3>
                                                                <p>Have fun on the diamond as they play t-ball and learn basic skills such as batting, throwing, catching and base running!</p>
                                                                <ul>
                                                                    <li>Tiny Tees (age range: 3-6)</li>
                                                                </ul>
                                                                <h3 class="title-03">Non-Sport Specific Classes</h3>
                                                                <p>Classes, age ranges and program availability vary by location.</p>
                                                                <h3 class="title-03">Cheerleading (age range: 5-8)</h3>
                                                                <p>Flash your spirit fingers as you’re introduced to basic cheer movements and body positions, chants, jumps and more!</p>
                                                                <h3 class="title-03">Fitnastics (age range: 6-12)</h3>
                                                                <p>Improve balance, coordination and strength through use of appropriate gymnastics equipment.</p>
                                                                <h3 class="title-03">Gym Games (age range: 2-4)</h3>
                                                                <p>Enjoy a variety of fun activities and games designed to help you prepare for kindergarten gym.</p>
                                                                <h3 class="title-03">Gym & Swim (age range: varies)</h3>
                                                                <p>A combination of fun recreational gym games and sports followed by open swim time. Depending on the child’s age, hands-on parent involvement may be required in the pool and with games.</p>
                                                                <h3 class="title-03">Home School PE (age range: 5-12)</h3>
                                                                <p>The Y offers a physical education program to children who are home schooled. Participate in general fitness, learn basic skills for various sports and more!</p>
                                                                <h3 class="title-03">Miniastics (age range: 3-6)</h3>
                                                                <p>Improve your motor skills, balance and coordination as you explore basic gymnastics skills through the use of an obstacle course, age-appropriate equipment and fun games!  </p>
                                                                <h3 class="title-03">Toddler Playtime(parent/child class, infants to age 3)</h3>
                                                                <p>Increase the activity level of your infant or toddler through fun parent interactions. </p>
                                                                <h3 class="title-03">Tumbling</h3>
                                                                <p>Enjoy a fun class that keeps kids moving! Body awareness is developed through the use of obstacle courses and other fun equipment. The concept of taking turns, class order and sequence is introduced with a strong emphasis on socialization and motor skills, listening and group involvement.</p>
                                                                <ul>
                                                                    <li>Busy Bees (parent/child class, age range: 1-3)</li>
                                                                    <li>Tumble Bees (parent/child class, age range: 3-5)</li>

                                                                </ul>
                                                            </div>

                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Register for Youth Sports</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="messages">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to2" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Youth Sports Leagues </a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to2">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>Leagues, age ranges and program availability vary by location.</p>
                                                                <p>Boys and girls will be placed on coed teams according to age. Skill development, teamwork and sportsmanship are key.  Kids will improve sport-specific technique and ability in a game environment and further develop the fundamentals of the game through fun activities and league play. Score will not be kept during league games. Team shirts will be provided. </p>
                                                                <ul>
                                                                    <li>Basketball League (ages 4-14)</li>
                                                                    <li>T-Ball League (ages 4-14)</li>
                                                                    <li>Soccer League (ages 4-14)</li>
                                                                    <li>Lacrosse League (ages 4-14)</li>
                                                                    <li>Some Y centers may offer specific boys lacrosse leagues and girls lacrosse leagues.</li>

                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Register for Youth Sports</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
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
