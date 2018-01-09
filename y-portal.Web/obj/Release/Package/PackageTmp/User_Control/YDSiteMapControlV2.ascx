<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="YDSiteMapControlV2.ascx.cs" Inherits="YPortal.Web.User_Control.YDSiteMapControlV2" %>

<%@ Register Src="YDMenuSectionUC.ascx" TagName="YMenuSection" TagPrefix="YContAPI" %>

<div class="main-body">


    <div id="accordion" class="panel-group">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a href="#collapseOne" data-parent="#accordion" data-toggle="collapse" class="collapsed">PROGRAMS </a>
                </h4>
            </div>
            <div class="panel-collapse collapse" id="collapseOne" style="height: 0px;">
                <div class="panel-body">
                    <h3 class="title-03">CAMPS</h3>
                    <ul>
                        <YContAPI:YMenuSection ID="ProgsCampsMnu1" runat="server" DataSource="Programs.Camps" />
                    </ul>

                    <h3 class="title-03">PRESCHOOL</h3>
                    <ul>
                        <YContAPI:YMenuSection ID="ProgPreschoolMnu1" runat="server" DataSource="Programs.Preschool" />
                    </ul>

                    <h3 class="title-03">SWIM</h3>
                    <ul>
                        <YContAPI:YMenuSection ID="ProgSwimMnu1" runat="server" DataSource="Programs.Swim" />
                    </ul>

                    <h3 class="title-03">SPORTS</h3>
                    <ul>
                        <YContAPI:YMenuSection ID="ProgSportsMnu1" runat="server" DataSource="Programs.Sports" />
                    </ul>

                    <h3 class="title-03">BEFORE &amp; AFTER SCHOOL PROGRAMS</h3>
                    <ul>
                        <YContAPI:YMenuSection ID="ProgBaseMnu1" runat="server" DataSource="Programs.Before &amp; After School&lt;br/&gt; Enrichment" />
                    </ul>

                    <h3 class="title-03">COMMUNITY PROGRAMS</h3>
                    <ul>
                        <YContAPI:YMenuSection ID="ProgComProgMnu1" runat="server" RoutingOverride="/Our_Mission" DataSource="Programs.Community Programs" />
                    </ul>

                    <h3 class="title-03">PERSONAL TRAINING</h3>
                    <ul>
                        <YContAPI:YMenuSection ID="ProgPersonalTrainingMnu1" runat="server" DataSource="Programs.Personal Training" />
                    </ul>
                </div>
            </div>
        </div>



        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a href="#collapseTwo" data-parent="#accordion" data-toggle="collapse" class="collapsed">SCHEDULES </a>
                </h4>
            </div>
            <div class="panel-collapse collapse" id="collapseTwo" style="height: 0px;">
                <div class="panel-body">
                    <ul>
                        <li><a href="/schedule">Schedule</a></li>
                    </ul>
                </div>
            </div>
        </div>



        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a href="#collapseThree" data-parent="#accordion" data-toggle="collapse" class="collapsed">LOCATIONS </a>
                </h4>
            </div>
            <div class="panel-collapse collapse" id="collapseThree" style="height: 0px;">
                <div class="panel-body">
                    <h3 class="title-03">FAMILY CENTER Ys</h3>
                    <ul>
                        <YContAPI:YMenuSection ID="YMenuLocationFamCenters1" runat="server" DataSource="Locations.Family Center YS" />
                    </ul>

                    <h3 class="title-03">PRESCHOOL</h3>
                    <ul>
                        <YContAPI:YMenuSection ID="YMenuLocationPreschool1" runat="server" RoutingOverride="/Locations/Preschool" DataSource="Locations.Preschool" />
                    </ul>

                    <h3 class="title-03">HEAD START</h3>
                    <ul>
                        <YContAPI:YMenuSection ID="YMenuLocationHeadStart1" runat="server" DataSource="Locations.Head Start" />
                    </ul>

                    <h3 class="title-03">BEFORE &amp; AFTER SCHOOL PROGRAMS</h3>
                    <ul>
                        <YContAPI:YMenuSection ID="YMenuLocationBASE1" runat="server" RoutingOverride="/Locations/BASE" DataSource="Locations.Before &amp; After School&lt;br/&gt; Enrichment" />
                    </ul>

                    <h3 class="title-03">ASSOCIATION OFFICE</h3>
                    <ul>
                        <YContAPI:YMenuSection ID="YMenuLocationsAO1" runat="server" DataSource="Locations.Associate Office" />
                    </ul>

                    <h3 class="title-03">CAMPS</h3>
                    <ul>
                        <YContAPI:YMenuSection ID="YMenuLocationsCamps1" runat="server" RoutingOverride="/Programs/Camps/Locations" DataSource="Locations.Camps" />
                    </ul>
                </div>
            </div>
        </div>


        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a href="#collapseFour" data-parent="#accordion" data-toggle="collapse" class="collapsed">MEMBERSHIP </a>
                </h4>
            </div>
            <div class="panel-collapse collapse" id="collapseFour" style="height: 0px;">
                <div class="panel-body">
                    <ul>
                        <YContAPI:YMenuSection ID="YMembershipSection1" runat="server" DataSource="Membership..1" />
                        <YContAPI:YMenuSection ID="YMembershipSection2" runat="server" DataSource="Membership..2" />
                    </ul>
                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a href="#collapseFive" data-parent="#accordion" data-toggle="collapse" class="collapsed">OUR MISSION </a>
                </h4>
            </div>
            <div class="panel-collapse collapse" id="collapseFive" style="height: 0px;">
                <div class="panel-body">
                    <ul>
                        <YContAPI:YMenuSection ID="YMenuSectionOurMission1" runat="server" DataSource="Our Mission..1" />
                        <YContAPI:YMenuSection ID="YMenuSectionOurMission2" runat="server" DataSource="Our Mission..2" />
                    </ul>
                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a href="#collapseSix" data-parent="#accordion" data-toggle="collapse" class="collapsed">DONATE </a>
                </h4>
            </div>
            <div class="panel-collapse collapse" id="collapseSix" style="height: 0px;">
                <div class="panel-body">
                    <ul>
                        <li><a href="https://www.classy.org/events/send-kid-to-camp-2015/e44883" target="_blank">Donate</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a href="#collapseSeven" data-parent="#accordion" data-toggle="collapse" class="collapsed">RESOURCES</a>
                </h4>
            </div>
            <div class="panel-collapse collapse" id="collapseSeven" style="height: 0px;">
                <div class="panel-body">
                    <ul>
                        <li><a href="/financialassistance">Financial Assistance </a></li>
                        <li><a href="/billinginquiries">Billing Inquiries </a></li>
                        <li><a href="/employment">Employment </a></li>
                        <li><a href="/leadership">Leadership </a></li>
                        <li><a href="/mediacenter">Media Center </a></li>
                        <li><a href="/sponsors">Sponsors </a></li>
                        <li><a href="/partnershipopportunities">Partnership Opportunities </a></li>
                        <li><a href="/volunteerlogin">Volunteer Login </a></li>
                        <li><a href="/capitalcampaigns">Capital Campaigns </a></li>
                        <li><a href="/privacypolicy">Privacy Policy </a></li>
                        <li><a href="/sitemap">Sitemap </a></li>
                        <li><a href="/contactus">Contact Us </a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
