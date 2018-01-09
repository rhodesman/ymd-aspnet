// necessary for IE8 at least, Array doesn't have indexOf() there.
if (!Array.prototype.indexOf) {
    Array.prototype.indexOf = function (obj, start) {
        for (var i = (start || 0), j = this.length; i < j; i++) {
            if (this[i] === obj) { return i; }
        }
        return -1;
    }
}

$('#myTab a, #myTab1 a, #myTab2 a, #myTab3 a, #myTab4 a, #myTab5 a ').click(function (e) {
    e.preventDefault();
    $(this).tab('show');
});
$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
    e.target;// activated tab
    e.relatedTarget; // previous tab
});

if (typeof String.prototype.trim !== 'function') {
    String.prototype.trim = function () {
        return this.replace(/^\s+|\s+$/g, '');
    };
}

function mobileMenuClick() {
    //debugger;

    if ($('#demo-one').attr('class').indexOf('in') >= 0) {
        $('#demo-one').collapse('hide');
    }

    if ($('#demo').attr('class').indexOf('in') >= 0) {
        $('#demo').collapse('hide');
    }
    else {
        $('#demo').collapse('show');
    }
}

function hideQuickLinksOnSchedulePrint() {
    if ($('#printHeader') && $('#printHeader').is(':visible')) {
        $('#topNavStrip').hide();
    } else {
        $('#topNavStrip').show();
    }
}
function mobileSocialLinkClick() {
    //debugger;

    if ($('#demo').attr('class').indexOf('in') >= 0) {
        $('#demo').collapse('hide');
    }

    if ($('#demo-one').attr('class').indexOf('in') >= 0) {
        $('#demo-one').collapse('hide');
    } else {
        $('#demo-one').collapse('show');
    }
}

var found = false;

var isDesktopView = true;

$(window).resize(function () {
    if ($(window).width() < 992) {
        var activeTab = '';
        if (isDesktopView) {
            $(".tab-pane").each(function () {
                if ($(this).parent().prev().prop("tagName") == "UL") {
                    $(this).addClass('active');
                }
            });

            if ($("#carousel-example").length > 0) {
                if ($("#carousel-example ol li.active a")[0] != null) {
                    activeTab = $("#carousel-example ol li.active a")[0].hash;
                }
            }

            var activeTabIndex = GetActiveTabIndex(activeTab);

            if ($("#carousel-example").length > 0) {
                $(activeTab + " .panel-collapse").each(function (index) {
                    $(this).addClass('collapse');
                    $(this).css('height', 'auto');
                    if (index != activeTabIndex) {
                        $(this).removeClass('in');
                    } else {
                        $(this).addClass('in');
                    }
                });
            } else {
                $(".panel-collapse").each(function (index) {
                    $(this).addClass('collapse');
                    $(this).css('height', 'auto');
                    if (index != activeTabIndex) {
                        $(this).removeClass('in');
                    } else {
                        $(this).addClass('in');
                    }
                });
            }


            isDesktopView = false;
        }

    } else {
        if (!isDesktopView) {
            var activeAccordionIndex = GetActiveAccordionIndex();

            if (!activeAccordionIndex) {
                activeAccordionIndex = 0;
            }

            if ($("#carousel-example").length > 0) {

                if ($("#carousel-example ol li.active a")[0] != null) {
                    activeTab = $("#carousel-example ol li.active a")[0].hash;
                }


                var tabLocation;
                $(activeTab + " .panel-collapse").each(function (index) {
                    if ($(this).hasClass('in')) {
                        tabLocation = index;
                    }
                });

                if (!tabLocation) {
                    tabLocation = 0;
                }

                $(activeTab + " #myTab li").removeClass("active");
                $(activeTab + " #myTab li").eq(tabLocation).children().click();

                if (activeTab != null) {
                    SpecialRedirectPartTwo(activeTab.replace('#', ''));
                }

            } else {


                $(".tab-pane").each(function (index) {
                    if (index != activeAccordionIndex) {
                        $(this).removeClass('active');
                    } else {
                        $(this).addClass('active');
                    }
                });

                $($('#myTab a')[activeAccordionIndex]).tab('show');
            }

            $(".panel-collapse").each(function (index) {
                $(this).removeClass('collapse');
                $(this).css('height', 'auto');
                $(this).addClass('in');
            });

            $('.location-specific .tab-content').first().children().each(function (index) {
                if ($(this).css('display') == 'block') {
                    $(this).css('display', '');
                };
            });

            isDesktopView = true;
        }
    }
});

function GetActiveTabIndex(activeTab) {
    var tabList = {};
    if (activeTab) {
        tabList = $(activeTab + ' #myTab li');
    } else {
        tabList = $('#myTab li');
    }

    var activeTabIndex;
    $(tabList).each(function (index) {
        if ($(this).attr('class') == "active") {
            activeTabIndex = index;
        }
    });
    return activeTabIndex;
}

function GetActiveAccordionIndex() {
    var accordionList = $('.panel-collapse');
    var activeaccordionIndex;
    $(accordionList).each(function (index) {
        if ($(this).hasClass('in')) {
            activeaccordionIndex = index;
        }
    });
    return activeaccordionIndex;
}

$(document).ready(function () {
    //quick fix ticket - didn't want to play with having the top nav as an asp control
    hideQuickLinksOnSchedulePrint();
    $('body,html').click(function () {
        $(".dropdown-menu").hide();
        if ($('#demo').attr('class').indexOf('in') >= 0) {
            $('#demo').collapse('hide');
        }
        if ($('#demo-one').attr('class').indexOf('in') >= 0) {
            $('#demo-one').collapse('hide');
        }
    });

    $(".accordion-toggle").each(function () {
        if ($(this).attr('data-parent') == '#collapse-myTab??') {
            $(this).attr('data-parent', '#collapse-myTab');
        }
    });

    $(".panel-collapse").each(function (index) {
        var targetDiv = $(this).parent().prev().children().children();
        $(targetDiv).attr('href', '#' + $(this).attr('id'));
    });

    if ($(window).width() < 992) {
        isDesktopView = false;
        $(".tab-pane").each(function () {
            if ($(this).parent().prev().prop("tagName") == "UL") {
                $(this).addClass('active');
            }
        });

        $(".accordion-toggle").each(function () {
            $(this).click();
        });
    };

    $('#myTab a, #myTab1 a, #myTab2 a, #myTab3 a, #myTab4 a, #myTab5 a').click(function (e) {
        e.preventDefault();
        $(this).tab('show');
        $('.main-slider').carousel($(this).parent().index());
        $('.main-slider').carousel('pause');
    });

    $('.dropdown-menu').click(function (e) {
        e.stopPropagation();
    });

    $("li.dropdown a").click(function (e) {
        var display = $(this).next('div').css("display");
        if (display != 'block') {
            $(this).next('div').css("display", "block");
        }
        else {
            $(this).next('div').css("display", "none");
        }
        //hide other dropdown menu
        $(this).parent().siblings(".dropdown").each(function () {
            $(this).find('div').first().css("display", "none");
        });
        //hide other mobile buttons


        e.stopPropagation();
    });

    $(".accordion-header").click(function (e) {
        if ($(this).children().hasClass("plus-ico")) {
            $(this).children().removeClass("plus-ico");
            $(this).children().addClass("minus-ico");
        }
        else if ($(this).children().hasClass("minus-ico")) {
            $(this).children().removeClass("minus-ico");
            $(this).children().addClass("plus-ico");
        }
    });

    var parentTabId = readCookie("parentTabId");
    var innerTabId = readCookie("tabId");

    if (parentTabId !== undefined && parentTabId != null && parentTabId != "") {

        ActiveInnerTabLineForPartTwo(parentTabId);
        ActiveInnerTabForParticularTabForPartTwo(parentTabId);
    } else if (innerTabId !== undefined && innerTabId != null && innerTabId != "") {
        ActiveInnerTab();
        ActiveInnerTabLine();
        ActiveInnerTabForParticularTab();
    }

    return;

    if (found == false) {

        $('ul.nav[id!="yTopMenu"] li:first').addClass('active');

        $('ul.nav li:first').addClass('active');
        $('div.tab-pane').first().addClass('active');
    }
   
});

function ActiveInnerTabLineForPartTwo(parentTabId) {

    if (parentTabId != null && parentTabId != "") {
        $('ol').children('li').each(function () {
            var href = $(this).children('a').attr('href');
            if (href == '#' + parentTabId) {
                $(this).addClass('active');
                found = true;
            } else {
                $(this).removeClass('active');
            }
        });
    }
}

function ActiveInnerTabForParticularTabForPartTwo(parentTabId) {

    var tabId = readCookie("tabId");
    if ((parentTabId != null && parentTabId != "") && (tabId != null && tabId != "")) {


        $('.tab-pane').each(function (i, obj) {
            if ($(this).attr('id') == parentTabId) {
                $(this).addClass('active');
                found = true;
            }
            else if ($(this).attr('id') == tabId) {
                $(this).addClass('active');
                found = true;
            }
            else {
                $(this).removeClass('active');
            }
        });

        $('ul#my-tab-01').children('li').each(function () {
            var href = $(this).children('a').attr('href');
            if (href == '#' + tabId) {
                $(this).addClass('active');
                found = true;
            } else {
                $(this).removeClass('active');
            }
        });
        $('ul#my-tab').children('li').each(function () {
            var href = $(this).children('a').attr('href');
            if (href == '#' + tabId) {
                $(this).addClass('active');
                found = true;
            } else {
                $(this).removeClass('active');
            }
        });
        $('ul#myTab').children('li').each(function () {
            // alert(tabId);
            var href = $(this).children('a').attr('href');
            if (href == '#' + tabId) {
                $(this).addClass('active');
                found = true;
            } else {
                $(this).removeClass('active');
            }
        });
        $('ul#Mytab-02').children('li').each(function () {
            var href = $(this).children('a').attr('href');
            if (href == '#' + tabId) {
                $(this).addClass('active');
                found = true;
            } else {
                $(this).removeClass('active');
            }
        });
        $('ul#myTab-01').children('li').each(function () {
            var href = $(this).children('a').attr('href');
            if (href == '#' + tabId) {
                $(this).addClass('active');
                found = true;
            } else {
                $(this).removeClass('active');
            }
        });
        $('ul#myTab-01').children('li').each(function () {
            var href = $(this).children('a').attr('href');
            if (href == '#' + tabId) {
                $(this).addClass('active');
                found = true;
            } else {
                $(this).removeClass('active');
            }
        });
        $('ul#Ul1').children('li').each(function () {
            //alert(tabId);
            var href = $(this).children('a').attr('href');
            //alert(href);
            if (href == '#' + tabId) {
                //alert('Hi');
                $(this).addClass('active');
                found = true;
            } else {
                $(this).removeClass('active');
            }
        });
    }
}

function ActiveInnerTab() {

    var tabId = readCookie("tabId");
    if (tabId != null && $("#" + tabId).length > 0) {
        var tabIndex = $("#" + tabId).index();
        $("#myTab").children().eq(tabIndex).find("a").click();
        found = true;
    }
}

function ActiveInnerTabLine() {

    var tabId = readCookie("tabId");
    if (tabId != null && $("#" + tabId).length > 0) {
        $('ol').children('li').each(function () {
            var href = $(this).children('a').attr('href');
            if (href == '#' + tabId) {
                $(this).click();
                //$(this).addClass('active');
                found = true;
            } else {
                $(this).removeClass('active');
            }
        });
    }
}

function ActiveInnerTabForParticularTab() {

    var tabId = readCookie("tabId");
    if (tabId != null && $("#" + tabId).length > 0) {
        $('.tab-pane').each(function (i, obj) {

            if ($(this).attr('id') == tabId) {

                $(this).addClass('active');
                if ($(this).find('.tab-content').children('div')[0] != undefined) {
                    $(this).find('.tab-content').children('div')[0].addClass('active');
                    found = true;
                }
            } else {
                $(this).removeClass('active');
            }
        });

    }
}

function SpecialRedirect(elemId) {
    eraseCookie("parentTabId");
    eraseCookie("tabId");
    createCookie("tabId", elemId, 1);
    //window.location.href = url;
}

function ActiveInnerTabForParticularTabOnClick(tabId) {
    if (tabId != null && !$("#" + tabId).hasClass("active")) {
        //activate tab-content
        $("#" + tabId).addClass('active');
        //activate tab-pane
        if ($(window).width() < 992) {
            $("#" + tabId + ' div.tab-pane').addClass('active');
        }
        else {
            $("#" + tabId + ' div.tab-pane').removeClass('active');
            $("#" + tabId + ' div.tab-pane:first').addClass('active');
        }
        //activate tab-pane-menu
        $("#" + tabId + ' ul:first li').removeClass('active');
        $("#" + tabId + ' ul:first li:first').addClass('active');

        found = true;
    }
}

function SpecialRedirectPartTwo(elemId) {
    ActiveInnerTabForParticularTabOnClick(elemId);

    if ($(window).width() < 992) {
        $('#' + elemId + " .panel-collapse").each(function (index) {
            $(this).removeClass('in');
            $(this).addClass('collapse');
            $(this).css('height', '0px;');
        });
    }
}

function SpecialRedirectPartThree(parentId, elemId) {
    eraseCookie("parentTabId");
    createCookie("parentTabId", parentId, 1);

    eraseCookie("tabId");
    createCookie("tabId", elemId, 1);

    //window.location.href = url;
}

function GetProgramsMegaMenu() {
    //alert($("ul#yTopMenu li"));
    //$("li.dropdown").first().addClass("open");
}

function MyLocationCtrl($scope, $http) {
    GetTopLocations($scope, $http);

    $scope.SetLocationToCookie = function () {
        // eraseCookie("myLocation");
        // createCookie("myLocation", $scope.location.Name, 30);

        window.location = $scope.location.LocationPage;
    };
}

function GetTopLocations($scope, $http) {
    var location_api = "/api/location";

    $http.get(location_api).
    success(function (data) {
        $scope.locationList = data;

        if (readCookie("myLocation") != null) {
            for (i = 0; i < $scope.locationList.length; i++) {
                if ($scope.locationList[i].Name.trim() == readCookie("myLocation")) {
                    $scope.location = $scope.locationList[i];
                    break;
                }
            }
        }

    }).error(function (msg) {
        ShowMessage(msg.Message, true);
    });
}

var prevActiveIndex = -1;
var carouselMenuIndex = 0;
var carouselMenuSize = 0;
var carouselMenuList = [];

function showASinglePanel(idx, flag) {
    var i, sz, contentList, j;
    for (j = 0; j < carouselMenuSize; j++) {
        contentList = $($($('.content-area-bg')[j]).children()[1]).children();
        sz = contentList.length;
        for (i = 0; i < sz; i++) {
            if (j != carouselMenuIndex) {
                if ($($($($(contentList[i]).children()[0]).children()[0]).children()[0]).hasClass('collapsed') == false) {
                    $($($($(contentList[i]).children()[0]).children()[0]).children()[0]).addClass('collapsed');
                }
            }
            else if (i != idx && $($($($(contentList[i]).children()[0]).children()[0]).children()[0]).hasClass('collapsed') == false) {
                $($($($(contentList[i]).children()[0]).children()[0]).children()[0]).addClass('collapsed');
                //$( $( $( contentList[i] ).children()[1] ).children()[0] ).removeClass( 'in' );
                //$( $( $( contentList[i] ).children()[1] ).children()[0] ).css( 'height' , '0px' );
            }
        }
        if (j == carouselMenuIndex) {
            $($($($(contentList[idx]).children()[0]).children()[0]).children()[0]).removeClass('collapsed');
            if (flag == true) {
                $($($(contentList[idx]).children()[1]).children()[0]).addClass('in');
                $($($(contentList[idx]).children()[1]).children()[0]).css('height', 'auto');
            }
        }
    }
}

$(document).ready(function () {
    $(window).resize(function () {
        if ($(window).width() > 990) {
            var i, sz1, j, menuList, contentList, l;
            $($($('.tab-content')[0]).children()[carouselMenuIndex]).show();
            for (i = 0; i < carouselMenuSize; i++) {
                menuList = $($($('.content-area-bg')[i]).children()[0]).children();
                contentList = $($($('.content-area-bg')[i]).children()[1]).children();
                sz1 = menuList.length;
                if (prevActiveIndex != -1) {
                    for (j = 0; j < sz1; j++) {
                        $(menuList[j]).removeClass('active');
                        $(contentList[j]).removeClass('active');
                        $(contentList[j]).removeAttr("style");
                    }
                    $(menuList[prevActiveIndex]).addClass('active');
                    $(contentList[prevActiveIndex]).addClass('active');
                    prevActiveIndex = -1;
                    break;
                }
                else {
                    l = -1;
                    for (j = 0; j < sz1; j++) {
                        if ($(menuList[j]).hasClass('active') == true) {
                            l = j;
                            break;
                        }
                    }
                    if (l == -1) {
                        l = 0;
                    }
                    for (j = 0; j < sz1; j++) {
                        $(menuList[j]).removeClass('active');
                        $(contentList[j]).removeClass('active');
                        $(contentList[j]).removeAttr("style");
                    }
                    $(menuList[l]).addClass('active');
                    $(contentList[l]).addClass('active');
                }
            }

            $('.location-specific .tab-content').first().children().each(function (index) {
                if ($(this).css('display') == 'block') {
                    $(this).css('display', '');
                };
            });

        }
    });
    $('.accordion-toggle').click(function (e) {
        var divId, contentList, i, sz, idx;
        divId = $($($($(e.target).parent()).parent()).parent()).attr('id');
        contentList = $($($($($(e.target).parent()).parent()).parent()).parent()).children();
        sz = contentList.length;
        idx = 0;
        for (i = 0; i < sz; i++) {
            if ($(contentList[i]).attr('id') == divId) {
                idx = i;
                break;
            }
        }
        //console.log(idx);
        if ($(window).width() <= 990) {
            prevActiveIndex = idx;
            showASinglePanel(idx, false);
        }
    });
    //carousel index bind and initial load value
    var k, sz3;
    carouselMenuList = $($($('.custom-container').children()[0]).children()[0]).children();
    sz3 = carouselMenuList.length;
    carouselMenuSize = sz3;
    for (k = 0; k < sz3; k++) {
        $($(carouselMenuList[k]).children()[0]).on('click', function (e) {
            carouselMenuIndex = $($($(e.target).parent()).parent()).attr('data-slide-to');
            if ($(window).width() <= 990) {
                showASinglePanel(0, true);
            }
        });
        if ($(carouselMenuList[k]).hasClass('active') == true) {
            carouselMenuIndex = k;
        }
    }
    //console.log( carouselMenuIndex );
    if ($(window).width() <= 990) {
        showASinglePanel(0, true);
    }
});

// fitquest login activator
$(document).ready(function () {
    if ($('#tabmyfitquestlogin').length > 0) {        
        var activtraxHtml = '<div id="activtrax-login-box" class="activtrax-tall"><img class="activtrax-mpftext" src="/App_Resources/App_Style/images/activtrax/activtrax-my-personal-fitness.png" width="207" height="17" alt="My Personal Fitness" /><form class="activtrax-tall" action="https://www.activtrax.com/Clubs_Login.php" method="post">   <input type="hidden" name="InitialLogin" value="true"  /><label class="activtrax-labeltext" for="UserName">Username</label> <input class="activtrax-text" type="text" name="UserName" /><label class="activtrax-labeltext" for="Password">Password</label> <input class="activtrax-text" type="password" name="Password" /><input class="activtrax-submit" alt="Log In" src="/App_Resources/App_Style/images/activtrax/log-in.gif" type="image" style="width:104px; height:34px;"></form><p class="activtrax-forgotlogin"><a href="http://www.activtrax.com/ResetPassword.php">Forgot<br />Login?</a></p><a href="http://www.activtrax.com"><img class="activtrax-poweredby" src="/App_Resources/App_Style/images/activtrax/activtrax-powered-by-logo.png" width="138" height="19" alt="POWERED BY ActivTrax" /></a></div>';

        var placeholder = $('#tabmyfitquestlogin .main-body p:contains(insert 240 x 170 widget here)');
        if (placeholder.length > 0) {
            $(activtraxHtml).insertBefore(placeholder);
            placeholder.remove();
        } else {
            $('#tabmyfitquestlogin  .main-body').append(activtraxHtml);
        }
    }
});