<%@ Control Language="C#"
    AutoEventWireup="true"
    CodeBehind="YDMenuControlV2.ascx.cs" Inherits="YPortal.Web.User_Control.YDMenuControlV2" %>
<%@ Register Src="YDMenuSectionUC.ascx" TagName="YMenuSection" TagPrefix="YContAPI" %>
<div class="top-nav collapse" id="demo">
    <div class="navbar">

        <div class=" " id="">
            <ul id="yTopMenu" class="nav navbar-nav ">
                <li class="dropdown active"><a href="" class="dropdown-toggle" data-toggle="dropdown">Programs <b class="caret"></b></a>
                    <div class="dropdown-menu max-width positions">
                        <div class="common-left-float">
                            <ul>
                                <label>CAMPS</label>
                                <YContAPI:YMenuSection ID="ProgsCampsMnu1" runat="server" DataSource="Programs.Camps" />
                            </ul>
                            <ul>
                                <label>PRESCHOOL</label>
                                <YContAPI:YMenuSection ID="ProgPreschoolMnu1" runat="server" DataSource="Programs.Preschool" />
                            </ul>
                        </div>
                        <div class="common-left-float">
                            <ul>
                                <label>SWIM</label>
                                <YContAPI:YMenuSection ID="ProgSwimMnu1" runat="server" DataSource="Programs.Swim" />
                            </ul>
                            <ul>
                                <label>SPORTS</label>
                                <YContAPI:YMenuSection ID="ProgSportsMnu1" runat="server" DataSource="Programs.Sports" />
                            </ul>
                        </div>
                        <div class="common-left-float">
                            <ul>
                                <label>
                                    BEFORE &amp; AFTER SCHOOL<br />
                                    ENRICHMENT</label>
                                <YContAPI:YMenuSection ID="ProgBaseMnu1" runat="server" DataSource="Programs.Before &amp; After School&lt;br/&gt; Enrichment" />
                            </ul>
                            <ul>
                                <label>COMMUNITY PROGRAMS</label>
                                <YContAPI:YMenuSection ID="ProgComProgMnu1" runat="server" RoutingOverride="/Our_Mission" DataSource="Programs.Community Programs" />
                            </ul>
                        </div>
                        <div class="common-left-float">
                            <ul>
                                <label>PERSONAL TRAINING</label>
                                <YContAPI:YMenuSection ID="ProgPersonalTrainingMnu1" runat="server" DataSource="Programs.Personal Training" />
                            </ul>

                        </div>
                    </div>
                </li>
                <li class="dropdown"><a href="/schedule" class="dropdown-toggle" target="_self">Schedules </a>
                </li>
                <li class="dropdown"><a href="" class="dropdown-toggle" data-toggle="dropdown">Locations <b class="caret"></b></a>
                    <div class="dropdown-menu max-width position">
                        <div class="common-left-float">
                            <ul>
                                <label>FAMILY CENTERS</label>
                                <label class="subLabel">ANNE ARUNDEL COUNTY</label>
                                <YContAPI:YMenuSection ID="YMenuLocationFamCenters1" runat="server" DataSource="Locations.Family Center YS" CityCounty="Anne Arundel County" />
                                <label class="subLabel">BALTIMORE CITY</label>
                                <YContAPI:YMenuSection ID="YMenuLocationFamCenters2" runat="server" DataSource="Locations.Family Center YS" CityCounty="Baltimore City" />
                                <label class="subLabel">BALTIMORE COUNTY</label>
                                <YContAPI:YMenuSection ID="YMenuLocationFamCenters3" runat="server" DataSource="Locations.Family Center YS" CityCounty="Baltimore County" />
                                <label class="subLabel">CARROLL COUNTY</label>
                                <YContAPI:YMenuSection ID="YMenuLocationFamCenters4" runat="server" DataSource="Locations.Family Center YS" CityCounty="Carroll County" />
                                <label class="subLabel">HARFORD COUNTY</label>
                                <YContAPI:YMenuSection ID="YMenuLocationFamCenters5" runat="server" DataSource="Locations.Family Center YS" CityCounty="Harford County" />
                                <label class="subLabel">HOWARD COUNTY</label>
                                <YContAPI:YMenuSection ID="YMenuLocationFamCenters6" runat="server" DataSource="Locations.Family Center YS" CityCounty="Howard County" />
                            </ul>
                        </div>
                        <div class="common-left-float">
                            <ul>
                                <label>PRESCHOOL</label>
                                <label class="subLabel">BALTIMORE CITY</label>
                                <YContAPI:YMenuSection ID="YMenuLocationPreschool1" runat="server" RoutingOverride="/Locations/Preschool" DataSource="Locations.Preschool" CityCounty="Baltimore City" />
                                <label class="subLabel">BALTIMORE COUNTY</label>
                                <YContAPI:YMenuSection ID="YMenuLocationPreschool2" runat="server" RoutingOverride="/Locations/Preschool" DataSource="Locations.Preschool" CityCounty="Baltimore County" />
                                <label class="subLabel">CARROLL COUNTY</label>
                                <YContAPI:YMenuSection ID="YMenuLocationPreschool3" runat="server" RoutingOverride="/Locations/Preschool" DataSource="Locations.Preschool" CityCounty="Carroll County" />
                                <label class="subLabel">HARFORD COUNTY</label>
                                <YContAPI:YMenuSection ID="YMenuLocationPreschool4" runat="server" RoutingOverride="/Locations/Preschool" DataSource="Locations.Preschool" CityCounty="Harford County" />
                            </ul>
                            <ul>
                                <label>HEAD START</label>
                                <YContAPI:YMenuSection ID="YMenuLocationHeadStart1" runat="server" DataSource="Locations.Head Start" />
                            </ul>
                        </div>

                        <div class="common-left-float">
                            <ul>
                                <label>
                                    BEFORE &amp; AFTER SCHOOL<br>
                                    ENRICHMENT</label>
                                <YContAPI:YMenuSection ID="YMenuLocationBASE1" runat="server" RoutingOverride="/Locations/BASE" DataSource="Locations.Before &amp; After School&lt;br/&gt; Enrichment" />
                            </ul>

                        </div>
                        <div class="common-left-float">
                            <ul>
                                <label>CAMPS</label>
                                <YContAPI:YMenuSection ID="YMenuLocationsCamps1" runat="server" RoutingOverride="/Programs/Camps/Locations" DataSource="Locations.Camps" />
                            </ul>

                            <ul>
                                <label>ASSOCIATION OFFICE</label>
                                <YContAPI:YMenuSection ID="YMenuLocationsAO1" runat="server" DataSource="Locations.Associate Office" />
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="dropdown"><a href="" class="dropdown-toggle" data-toggle="dropdown">Membership <b class="caret"></b></a>
                    <div class="dropdown-menu max-width-01 position-01">
                        <div class="common-left-float">
                            <ul>
                                <YContAPI:YMenuSection ID="YMembershipSection1" runat="server" DataSource="Membership..1" />
                            </ul>
                        </div>
                        <div class="common-left-float">
                            <ul>
                                <YContAPI:YMenuSection ID="YMembershipSection2" runat="server" DataSource="Membership..2" />
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="dropdown "><a href="" class="dropdown-toggle" data-toggle="dropdown">Our Mission <b class="caret"></b></a>
                    <div class="dropdown-menu max-width-01 position-02">
                        <div class="common-left-float">
                            <ul>
                                <YContAPI:YMenuSection ID="YMenuSectionOurMission1" runat="server" DataSource="Our Mission..1" />
                            </ul>
                        </div>
                        <div class="common-left-float">
                            <ul>
                                <YContAPI:YMenuSection ID="YMenuSectionOurMission2" runat="server" DataSource="Our Mission..2" />
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="dropdown"><a href="https://fundraise.ymaryland.org/campaign/send-a-kid-to-camp-2017/c124714" target="_blank" class="dropdown-toggle donate">DONATE
                </a></li>
                <li class="dropdown last"><a href="http://joinymaryland.org/online" target="_blank" class="dropdown-toggle join">JOIN ONLINE</a></li>
                <%--<li class="dropdown mturkeylink"><a href="http://www.ymdturkeytrot.org/" target="_blank" class="dropdown-toggle donate">Register for the Y Turkey Trot</a></li>--%>
            </ul>
        </div>

    </div>
</div>
