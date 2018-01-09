<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="options-and-fees.aspx.cs" Inherits="YPortal.Web.programs.camps.options_and_fees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators">
                    <li class="" data-slide-to="0" data-target="#carousel-example-captions"><a href="#homes" data-toggle="tab">
                        <img src="../../App_Style/images/banner/inner-page-banner/indicator-01.png" />
                        <span>OPTIONS & FEES 
                        </span></a></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../../App_Style/images/banner/camps/option-and-fees.png">
                        <div class="carousel-caption">
                            <p>
                                Discover what you 
                                    <br>
                                love this summer
                            </p>
                            
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="dux-content-area dux-content-area-margin-02">
        <div class="location-specific container">
            <div class="row">
                <div class="col-md-12">
                    <div class="tab-content">
                        <div class="tab-pane active" id="homes">
                            <div class="content-area-bg">
                                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                                    <li class="active"><a href="#home" data-toggle="tab">YOUTH CAMPS </a></li>
                                    <li><a href="#profiles" data-toggle="tab">TEEN CAMPS </a></li>
                                    <li><a href="#messages" data-toggle="tab">CARROLL COUNTY CAMP </a></li>
                                    <li><a href="#settings" data-toggle="tab">OVERNIGHT CAMP </a></li>
                                    <li><a href="#BEFORE-AFTER" data-toggle="tab">SPECIALTY CAMPS </a></li>
                                    <li><a href="#Give-Back" data-toggle="tab">SUMMER LEARNING FOR PRESCHOOLERS </a></li>

                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Affordable Summer Fun</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <a href="genenral-information.aspx">Brochures, Forms & Manuals</a>
                                                                <p>Y camps for children entering grades K - 6 are available in three different camp settings. Campers are divided by grade and participate in age-appropriate activities. The activities available vary by camp setting.</p>
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
                                                                        <td>Our "Great Outdoors" camps offer a unique camp experience in beautiful, outdoor, natural camp settings. Activities include nature hikes, outdoor camping and life skills such as pitching a tent and cooking over a fire, confidence course challenges, archery, and more. Waterfront locations add endless water fun like swimming, canoeing, crabbing, and fishing! Campers also participate in reading and journaling, and weekly themed events and/or field trips. Activities vary by location.
                                                                        </td>
                                                                        <td>Our "The Lodge" camps offer a variety of fun activities. Some locations offer mainly indoor activities with some outdoor camp opportunities, while others offer mainly outdoor activities with some indoor camp opportunities. Activities include creative projects, skits and songs, games, sports, week-long projects like murals, giant puzzles and more. Weekly swim opportunities are available. Campers also participate in reading and journaling, and weekly themed events and/or field trips. Activities vary by location.
                                                                        </td>
                                                                        <td>Our "Activity Central" camps offer a variety of outdoor activities such as crafts, songs and games, sports, science projects, nature walks, and more. Water and cooling activities occur daily. Weekly swim opportunities are available and limited indoor time is rotated throughout the day at some locations. Campers also participate in reading and journaling, and weekly themed events and/or field trips. Activities vary by location.
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
                                                                            Open Rate         $217/wk
                                                                            <br />
                                                                            <br />
                                                                            <i>(Anne Arundel County)</i><br />
                                                                            Family Member  $157/wk
                                                                            <br />
                                                                            Youth Member  $170/wk
                                                                            <br />
                                                                            Open Rate        $178/wk
                                                                        </td>
                                                                        <td>Family Member  $163/wk
                                                                            <br />
                                                                            Youth Member   $205/wk
                                                                            <br />
                                                                            Open Rate         $214/wk
                                                                            <br />
                                                                            <br />
                                                                            <i>(Anne Arundel County)</i><br />
                                                                            Family Member  $148/wk
                                                                            <br />
                                                                            Youth Member   $162/wk
                                                                            <br />
                                                                            Open Rate         $170/wk
                                                                        </td>
                                                                        <td>Family Member  $158/wk
                                                                            <br />
                                                                            Youth Member   $197/wk
                                                                            <br />
                                                                            Open Rate         $208/wk
                                                                        </td>
                                                                    </tr>
                                                                </table>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Registration is ONLY available online. Sign up now!</span></a>
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
                                            <div class="panel-title"><a href="#collapse-how-to1" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Youth Camps </a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to1">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <a href="genenral-information.aspx">Brochures, Forms & Manuals</a>
                                                                <p>Teens can register for our regular Adventures (entering grades 6-8), Grand Adventures (entering grades 9-11) and Mission Adventurers (entering grades 9-12) teen camps. These camps will follow our regular teen camp program. Activity tracks are not available with teen camps. </p>
                                                                <p><strong>Adventurers </strong>(entering grades 7 – 8)</p>
                                                                <p><strong>Grand Adventurers </strong>(entering grades 9 – 11)</p>
                                                                <p>Teens travel off-site three times a week to destinations like water parks, museums, miniature golf, tubing, hiking trails, movies and more! Several trips may involve opportunities to purchase food and souvenirs (see Camp Parent Manual). Most trips take place between 9am - 4pm, but some may require departure as early as 7am and return as late as 6:30pm. Prices include trips and admission fees.</p>
                                                                <h3 class="title-03">Adventurer/Grand Adventurer Fees</h3>
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
                                                                <p>Learn new skills, explore possible career choices and earn service learning hours. Teens receive training and hands-on experience working alongside Y camp staff in one or more camp roles that are matched to their interests and skills. Up to 25 hours per week may be earned for service learning credits. Mission Adventurer camp roles are available in all Y camps, including specialty camps.</p>
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
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Registration is ONLY available online. Sign up now!</span></a>
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
                                            <div class="panel-title"><a href="#collapse-how-to3" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Teen Camps </a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to3">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <a href="genenral-information.aspx">Brochures, Forms & Manuals</a>
                                                                <p>We've taken our traditional camp program and merged it with the fun of our summer sports, creative and science programs to create a new summer experience only available at the Hill Family Center Y in Carroll County! </p>
                                                                <p>Customize your day with the fun activity tracks, plus enjoy special add-on's like swimming, archery and summer robotics. Not to mention our full-day golf specialty camp and new batting cages, ga-ga pit and more! Free extended morning and afternoon hours available. <a href="pdf/Hill-sample-schedule.pdf" target="_blank">See what a sample day looks like! </a></p>
                                                                <h3 class="title-03">Activity Track Choices</h3>
                                                                <p><strong>Camp Fun</strong></p>
                                                                <p>Enjoy all of our regular day camp activities for Buccaneers (entering kindergarten), Pioneers (entering grades 1-2), Voyagers (entering grades 3-4) and Rangers (entering grades 5-6). Field trips are not available. </p>
                                                                <p><strong>Basketball</strong></p>
                                                                <p>Learn and develop basketball skills and technique. Each day we will build on the past days skills through fun exciting games.</p>
                                                                <p><strong>Gardening</strong></p>
                                                                <p>Campers will cultivate a patch of ground and nurture plants through the summer.</p>
                                                                <p><strong>Football</strong></p>
                                                                <p>We will work on passing, catching, blocking and kicking. Campers will rotate through fun stations that develop their skills.</p>
                                                                <p><strong>Jewelry Making</strong></p>
                                                                <p>Campers will create wonderful works of wearable art using natural and synthetic materials. </p>
                                                                <p><strong>Soccer</strong></p>
                                                                <p>Campers will learn and develop soccer skills designed to improve their individual skills and their ability to play within a team.</p>
                                                                <p><strong>Up, Up & Away</strong></p>
                                                                <p>Campers will learn how objects fly independently. They will build rockets, gliders and learn the real art of paper airplane making.</p>
                                                                <p><strong>Scrapbooking</strong></p>
                                                                <p>Using their own pictures, campers will learn how to tell their life's storry through scrapbooking. Sports Mix Engage in a variety of fun sports like basketball, soccer, kickball and more while learning the value of teamwork and sportsmanship.   </p>
                                                                <p><strong>Skits & Songs</strong></p>
                                                                <p>Campers will learn songs and develop a daily skit to perform for the entire camp. Who will win the "Academy Award" this week?</p>
                                                                <p><strong>Floor Hockey</strong></p>
                                                                <p>Campers will work on stick skills, passing, receiving and shooting through a variety of fun games.</p>
                                                                <p><strong>Character Puppets</strong></p>
                                                                <p>Campers will learn the art of puppetry and perform a skit that promotes the Y's character values of caring, honesty, respect and responsibility.</p>
                                                                <p><strong>Original Writings by...</strong></p>
                                                                <p>Campers will learn to use their creative writing skills to write poems, short stories, crazy mad-libs and more!</p>
                                                                <p><strong>Backyard Games</strong></p>
                                                                <p>Enjoy old-school backyard games like spud, capture the flag, wiffle ball, horse shoes and more! Learn new games like “Gaga Pit” and “Box Ball”.</p>
                                                                <p><strong>Tape It Up</strong></p>
                                                                <p>Campers will have a blast making wallets, bracelets, purses, head bands and more out of colorfull, decorative tape. </p>
                                                                <p><strong>Fizzy, Fuzzy, Slimy, Sticky</strong></p>
                                                                <p>Campers will have fun mixing and creating their own concoctions. Silly putty anyone?</p>
                                                                <p><strong>Chirps & Crawlers</strong></p>
                                                                <p>Insects, birds and snakes are fascinating! Learn how these creatures add to our quality of life. Even create your own "bug"!</p>
                                                                <h3 class="title-03">How Does It Work?</h3>
                                                                <p>Within each weekly session, there are multiple AM and PM activity track options. Customize your camp experience by choosing the tracks that interest you for that week. For example, choose the Camp Fun activity track for the morning and the Sports Mix track for the afternoon. It's all up to you! <i>Activity tracks run Monday - Thursday. Fridays are Spirit Day/Special Event Days!</i></p>
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
                                                                <p><i>Please Note: children entering kindergarten (Buccaneers) can only participate in the Camp Fun activity tracks.</i></p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="settings">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to8" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Carroll County Camp Program</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to8">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <a href="genenral-information.aspx">Brochures, Forms & Manuals</a>
                                                                <p>Enjoy the ultimate overnight camping experience at Camp Hashawha! Located in Carroll County, Camp Hashawha offers so many exciting activities, your child won't know what to do first! Click the Quick Link to check out our 2014 Overnight Camp brochure!</p>
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
                                                                            <p>Enjoy endless fun during the day and party like a Y star at night! During the day participate in activities such as campfires, canoeing, swimming, a challenge course, and even the famous mud hike! Every evening will include festivities like talent shows, camp fires and dancing!</p>
                                                                            <p><strong>7/7 - 7/11: Mud, Sweat, and Glory</strong></p>
                                                                            <p>Each cabin is transformed into a country that competes for all the glory in the Hashawha Summer Games. Campers will participate in a "parade of nations", relays, canoeing, and a camp-wide marathon, as well as some non-traditional sports like toilet seat discuss, cannon ball plunge, and extreme green bean curling! </p>
                                                                            <p><strong>7/21 - 7/25: Super Hero All-Stars</strong></p>
                                                                            <p>Find your inner super hero and help the camp defeat Captain Chaos! Create your own super powers, costume, and name and showcase them at the Super Hero Talent Show. Show your super hero strength on the challenge course designed by the super villain himself, Captain Chaos! Celebrate your success at the Super Hero Dance Party!</p>
                                                                            <p><strong>8/4 - 8/8: Myths and Legends</strong></p>
                                                                            <p>The Renaissance has arrived at Camp Hashawha! Travel back to medieval times and help the Blue Knights defend the Kingdom of Hashawha! Defeat the evil Silver Knight. Save the princess. Compete in medieval adventures such as jousting. Participate in a knighting ceremony. Join us as we celebrate the legend of the Hashawha Blue Knights! </p>
                                                                            <p><strong>8/11 - 8/15: Survivor Reunion Week</strong></p>
                                                                            <p>Our most popular camp theme, Survivor, is joined with our Reunion theme! Campers from previous weeks or years are encouraged to come back and reunite with old friends. Each cabin team will join forces to win the Survivor Challenges. Create a tribal flag and participate in survivor-themed activities including fire building, capture the flag, swimming, tribal dance, and more! New this year – our Survivor Twilight Night Hike where campers will take their flashlights and hike through the forbidden forest to reach the council ring and find out who is the ultimate survivor!</p>

                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <p><strong>Add-On’s</strong></p>
                                                                        </td>
                                                                        <td>
                                                                            <p>Daily activities at Camp Hashawha are full of adventure! But now you can tailor your week by adding on one of our focused activity stations for an additional $30 per week.</p>
                                                                            <ul>
                                                                                <li><strong>Drama </strong>- Learn techniques and skills to create your own variety show of songs, dances, and skits. Perform for camp and for parents!</li>
                                                                                <li><strong>STEM</strong>  - Build a balloon rocket! Engineer a boat! Create a flinker (an object that neither sinks nor floats). Explore the natural camp setting through environmental science and unique outdoor games.</li>
                                                                                <li><strong>Archery </strong>- Channel your inner Katniss from The Hunger Games, or Hawk from Avengers! Learn archery safety and technique as you practice on a variety of targets.</li>
                                                                            </ul>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <strong>Amenities</strong>
                                                                        </td>
                                                                        <td>Modern Cabins, Outdoor Pool, Sports Fields, Hiking Trails, Lake Hashawha, Nature Center, Pavilions, Dining Hall, Shower/Toilet Facilities and more!
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <strong>Activities</strong>
                                                                        </td>
                                                                        <td>Archery, Canoeing, Hiking, Fishing, Low Ropes Course, Swimming, Sports and Games, Campfires, Crafts, Environmental Education, Team Building <i>Activities, and more! Activities are subject to change. </i>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <strong>Meals</strong>
                                                                        </td>
                                                                        <td>
                                                                            <p>Breakfast: French toast, sausage, fruit, scrambled eggs, pancakes, cereal, milk, juice, bacon, yogurt, and more.</p>
                                                                            <p>Lunch/Dinner: Fajitas, nachos, meatball subs, veggies, chicken tenders, tacos, hamburgers, hot dogs, salad, and more.</p>
                                                                            <p><i>Every effort will be made to accommodate special dietary needs.</i></p>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <strong>Safety</strong>
                                                                        </td>
                                                                        <td>All activities are designed with safety in mind. All Y staff are CPR and First Aid certified.</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <strong>Drop-off/Pick-up</strong>
                                                                        </td>
                                                                        <td>
                                                                            <p>For your added convenience, campers can now be dropped off and picked up at several locations:</p>
                                                                            <ul>
                                                                                <li><strong>Camp Hashawha </strong>- Campers can be dropped off at Camp Hashawha on day 1 at 9:00am and picked up on the last day at 11:00am.</li>
                                                                                <li><strong>Hill Family Center Y </strong>- Campers can be dropped off at the Hill Family Center Y on day 1 between 7am - 10am and picked up on the last day by 6pm. Transportation is provided to and from Camp Hashawha at no extra charge!</li>
                                                                                <li><strong>Other Y Centers </strong>- The Dancel, Parkville, Ward and Greater Annapolis Family Center Y will provide transportation to and from Camp Hashawha. Fee: $20 each way per child per week.</li>
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
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane " id="BEFORE-AFTER">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to11" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Overnight Camp</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to11">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <a href="genenral-information.aspx">Brochures, Forms & Manuals</a>
                                                                <h3 class="title-03">Add-On Specialty Camp</h3>
                                                                <p>Choose to add Summer Robotics (a Y-STEM* Pathway) to the end of your child's camp day or register for it as a stand-alone activity. Summer Robotics camp hours are Monday - Thursday, 4pm - 6pm. If you need camp services the remainder of the day, you must enroll your child in a youth camp program. </p>
                                                                <p>*STEM: science, technology, engineering, math</p>
                                                                <p>
                                                                    <strong>Summer Robotics </strong>(entering grades 3 – 6)
                                                                    <br />
                                                                    Enter the world of robotics with a hands-on approach to programming. Assemble LEGO NXT MINDSTORM® robots with a partner or small team, program the robots to navigate an obstacle course, carry out small missions and more! Programs, assembly and missions become more advanced with each level.
                                                                </p>
                                                                <ul>
                                                                    <li>Summer Robotics - Level1
                                                                        <br />
                                                                        Focus on using the program and navigation. No experience necessary.
                                                                    </li>
                                                                    <li>Summer Robotics - Level 2
                                                                        <br />
                                                                        Focus on advanced tasks like using switches and building sumo-bots. Pre-requisite: Level 1

                                                                    </li>
                                                                    <li>Summer Robotics - Level3
                                                                        <br />
                                                                        Focus on sophisticated sensors, multiple motors and custom attachments. Pre-requisite: Level 1 & 2

                                                                    </li>

                                                                </ul>
                                                                <h3 class="title-03">Summer Robotics Fees</h3>
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
                                                                <p>Expose your child to specific areas of interest in our full-day, stand-alone specialty camps. Camp hours are 9:00am - 4:00pm with free extended hours available.</p>
                                                                <h3 class="title-03">Y Sports Camps (entering grades 1-6)</h3>
                                                                <p>Y sports camps focus on skill development, practice and fun! Campers will learn fundamentals, develop and improve skills, build confidence, play games and participate in sports-themed traditional camp activities like crafts and science. </p>
                                                                <ul>
                                                                    <li>Basketball Camp
                                                                        <br />
                                                                        Practice specific basketball fundamentals to develop good habits on the basketball court. Players will rotate through specific skill stations. We stress the importance of hard work, communication and a positive attitude while maintaining a fun environment!
                                                                    </li>
                                                                    <li>Flag Football Camp
                                                                        <br />
                                                                        Learn about various field positions like lineman, receiver, special teams and backs. We will build skills through fun drills, clear instruction and game play.
                                                                    </li>
                                                                    <li>Soccer Camp
                                                                        <br />
                                                                        In the morning, we focus on building skills. In the afternoon, enjoy game play and exciting soccer challenges. Your child will come home happy, tired and ready for more the next day!
                                                                    </li>
                                                                    <li>Sports Mix Camp
                                                                        <br />
                                                                        Players will be introduced to a variety of individual sports and team play like soccer, lacrosse, and more! They'll also have fun with non-traditional games like whiffle ball!
                                                                    </li>
                                                                </ul>
                                                                <h3 class="title-03">Y Sports Camp Fees</h3>
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
                                                                <h3 class="title-03">Creative Expression (entering grades 1-6) </h3>
                                                                <p>Express yourself through different creative mediums like acting, drawing, painting and poetry. Led by Y camp counselors.</p>
                                                                <ul>
                                                                    <li>Art
                                                                        <br />
                                                                        Do you like to doodle on your papers or have you ever wondered what made Leonardo Da Vinci or Pablo Picasso tick? If so, join us for a week of creative exploration that we promise will be ARTRAGEOUS!
                                                                    </li>
                                                                    <li>Drama
                                                                        <br />
                                                                        If you believe "all the world is a stage" then this camp is right up your alley! Spend the week improving skills, performing skits and having fun with simple set designs. Take center stage in the Y Spotlight and let your inner star shine! 
                                                                    </li>
                                                                    <li>Journaling
                                                                        <br />
                                                                        Explore the written word and express yourself through poetry, creative writtings and drawings. You may find that the pen is indeed mightier than the sword!
                                                                    </li>
                                                                </ul>
                                                                <h3 class="title-03">Creative Expression Fees</h3>
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
                                                                <h3 class="title-03">Y Science (entering grades 1 – 5)
                                                                </h3>
                                                                <p>Led by Y camp counselors, campers will experience the ultimate in edutainment!</p>
                                                                <ul>
                                                                    <li>Environmental Explorers
                                                                        <br />
                                                                        A natural fit for budding scientists! From the water we drink to the food we eat, the earth's environment affects every aspect  of our lives. Learn about the web of life and our special place among the plants and animals!
                                                                    </li>
                                                                    <li>Weird Science
                                                                        <br />
                                                                        Let's get weird! Explore the science behind scientific curiosities. Investigate the eerie and learn why sometimes truth is even stranger than fiction.
                                                                    </li>
                                                                    <li>Jolts & Volts
                                                                        <br />
                                                                        Light up your summer with an electrifying week at the Y! Campers will experiment with circuits, switches, games and challenges. 
                                                                    </li>
                                                                </ul>
                                                                <h3 class="title-03">Y Science Fees </h3>
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
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <div class="side-bar">
                                                                <a href="registernow.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Registration is ONLY available online. Sign up now!</span></a>
                                                                <img src="../../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane " id="Give-Back">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to12" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Specialty Camps</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to12">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>Summer learning and summer fun is available for preschoolers. Age-appropriate activities include arts & crafts, science experiments, nature walks, cooking projects, sports, field trips, water activities and more! Enroll your little one in our summer preschool program today! Weekly sessions are available. For more information, contact a Y Preschool center below.</p>
                                                                <p><strong>Summer Y Preschool Centers</strong></p>
                                                                <ul>
                                                                    <li>Y Preschool in Catonsville
                                                                        <br />
                                                                        850 South Rolling Road
                                                                        <br />
                                                                        Catonsville, MD 21228
                                                                        <br />
                                                                        410-747-4951
                                                                    </li>
                                                                    <li>Y Preschool in Owen Brown<br />
                                                                        9270 Homespun Drive<br />
                                                                        Columbia, MD 21045<br />
                                                                        410-290-6505
                                                                    </li>
                                                                </ul>
                                                                <p><i>Summer learning for preschoolers is not a Y Camp program. It operates under the Y Preschool program.</i></p>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">

                                                            <div class="side-bar">
                                                                <a href="../preschool/preschool.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Learn more about Y Preschool</span></a>
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
