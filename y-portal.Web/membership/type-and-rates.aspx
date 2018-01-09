<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="type-and-rates.aspx.cs" Inherits="YPortal.Web.membership.type_and_rates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators">
                    <li class="" data-slide-to="0" data-target="#carousel-example-captions"><a href="#homes" data-toggle="tab">
                        <img src="../App_Style/images/banner/inner-page-banner/indicator-01.png" />
                        <span>TYPES & RATES </span></a></li>


                </ol>
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
                                    <li class="active"><a href="#home" data-toggle="tab">FLEXIBLE MEMBERSHIP OPTIONS</a></li>

                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">FLEXIBLE MEMBERSHIP OPTIONS</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>We promise ourselves to get in shape. But what if we also vow to spend more quality time with our kids, or reach out to someone with a simple act of kindness, or even just sit and enjoy the forgotten art of conversation?  You can do all this and more at the Y!</p>
                                                                <p>Our flexible membership options make healthy living accessible to all!</p>
                                                                <p>Be a member of something bigger.</p>
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
                                                                <p>Military memberships are also available. Please contact your nearest <a href=""> Family Center Y </a> for details. </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                         

                                                              <div class="side-bar">
                                                                <a href="how-to-become-a-member.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Become a Y Member</span></a>
                                                                <img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
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
