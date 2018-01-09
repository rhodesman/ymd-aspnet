<%@ Page Title="" Language="C#" MasterPageFile="~/App_Resources/default.Master" AutoEventWireup="true" CodeBehind="personal-training.aspx.cs" Inherits="YPortal.Web.membership.personal_training" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dux-show-case clearfix">
        <div class="custom-container">
            <div data-ride="carousel" class="carousel slide" id="carousel-example-captions">
                <ol class="carousel-indicators">
                    <li class="" data-slide-to="0" data-target="#carousel-example-captions"><a href="#homes" data-toggle="tab">
                        <img src="../App_Style/images/banner/inner-page-banner/indicator-01.png" />
                        <span>PERSONAL TRAINING                            
                        </span></a></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="More than a  membership" data-src="holder.js/900x500/auto/#777:#777" src="../App_Style/images/banner/membership/personal-training.png">
                        <div class="carousel-caption">
                            <p>
                                Be a better version 
                                    <br>
                                of yourself
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
                                    <li class="active"><a href="#home" data-toggle="tab">Overview</a></li>
                                    <li><a href="#profiles" data-toggle="tab">Why Personal Training </a></li>

                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class">Overview</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <p>Y Personal Training is intentionally designed to fit your lifestyle and desired health & well-being goals. Our certified Personal Trainers work with you to develop an exercise routine that is tailored to your specific needs including cardio, strength training, endurance, flexibility, plyometrics, agility and more.</p>
                                                                <p>We embrace the holistic approach to training – spirit, mind and body, and our family-friendly atmosphere allows you to feel comfortable and confident in the skin you’re in.</p>
                                                                <p>We offer:</p>
                                                                <ul>
                                                                    <li><a href="../programs/personal-training/one-on-one-training.aspx">One-on-One Training</a></li>
                                                                    <li><a href="../programs/personal-training/small-group-training.aspx">Small Group Training</a></li>
                                                                    <li><a href="../programs/personal-training/cancer-exercise-program.aspx">Cancer Exercise Program</a></li>
                                                                </ul>
                                                                <p>We’re sure you’ll find a personal training program that fits you!</p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            
                                                              <div class="side-bar">
                                                                <a href="../programs/personal-training/how-to-get-started.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Get Started Today</span></a>
                                                                <img src="../App_Style/images/banner/side-bar/sidebar-banner.png" alt="sidebar banner">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane " id="profiles">
                                        <div class="panel-heading visible-xs visible-sm">
                                            <div class="panel-title"><a href="#collapse-how-to1" data-parent="#collapse-myTab" data-toggle="collapse" class="accordion-toggle deco-none misc-class ">Why Personal Training</a></div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div style="height: auto;" class="panel-collapse in" id="collapse-how-to1">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="main-body">
                                                                <h3 class="title-03">Motivation</h3>
                                                                <p>If you’re not seeing the results you want, it always seems easier to throw in the towel. With a trainer by your side, you’ll have a certified, experienced guide to motivate you through all the ups and downs of physical fitness, making sure you meet your goals.</p>

                                                                <h3 class="title-03">Challenge</h3>
                                                                <p>Your body can adapt to a workout routine in 4 to 6 weeks. Exercises that were effective a month ago may not be today. A personal trainer will provide a variety of options to keep your spirit, mind and body challenged.</p>

                                                                <h3 class="title-03">Change</h3>
                                                                <p>Boredom is one of the top reasons people stray from their workout routine. A personal trainer will not only notice the early warning signs of burnout, but can provide new challenges to keep your mind interested and your body engaged.</p>

                                                                <h3 class="title-03">Safety</h3>
                                                                <p>Even if you’re 100% dedicated to physical fitness, doing exercises incorrectly can lead to injury and disappointing results. All of our personal trainers have gone through rigorous exercise and safety certifications to be sure that your program is not only effective, but safe.</p>

                                                                <h3 class="title-03">Accountability</h3>
                                                                <p>The temptation is always strong to sleep in or go home early rather than workout—unless you know someone is at the gym waiting for you. By simply being there at a designated time each day, your personal trainer gives you the extra push you need to meet your personal fitness goals.</p>


                                                            </div>
                                                        </div>
                                                        <div class="col-lg-5">
                                                           <div class="side-bar">
                                                                <a href="../programs/personal-training/how-to-get-started.aspx" class="common-btn btn-velvet"><span class="btn-velvet-border">Get Started Today</span></a>
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
