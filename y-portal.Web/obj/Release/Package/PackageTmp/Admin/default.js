/// <reference path="../App_Resources/client-scripts/framework/angular/angular.v1.2.min.js" />

$(document).ready(function () {

    if (document.URL.indexOf("googleAnalytics") != -1) {
        SetMenuActive($("#navMenu").find("li").eq(1));
    }
    else if (document.URL.indexOf("blastData") != -1) {
        SetMenuActive($("#navMenu").find("li").eq(2));
    }

    $("#navMenu li").click(function () {
        SetMenuActive($(this));
    });
});

function SetMenuActive(elem) {
    $(elem).addClass("active");
    $(elem).prevAll().removeClass("active");
    $(elem).nextAll().removeClass("active");
}

var pageSize = 10;
var PagerSize = 5;

var apiUrl = '../api/Dashboard/';
var apiUrlForCampaign = '../api/Campaign/';
var defaultImageLocation = "../no-image.jpg";
var dashboard = angular.module("dashboard", ["ngRoute", "ngAnimate"]);

dashboard.filter('secondsTohhmmss', function () {
    return function (secondnumber) {

        if (secondnumber && !isNaN(secondnumber)) {

            var tohhmmss;

            var totalSecond = Math.round(secondnumber);

            var hours = Math.floor(totalSecond / (60 * 60));
            if (hours.toString().length == 1 || hours.toString().length == 0) {
                hours = '0' + hours;
            }

            var divisor_for_minutes = totalSecond % (60 * 60);

            var minutes = Math.floor(divisor_for_minutes / 60);

            if (minutes.toString().length == 1 || minutes.toString().length == 0) {
                minutes = '0' + minutes;
            }

            var divisor_for_seconds = divisor_for_minutes % 60;
            var seconds = Math.ceil(divisor_for_seconds);
            if (seconds.toString().length == 1 || seconds.toString().length == 0) {
                seconds = '0' + seconds;
            }

            return hours + ':' + minutes + ':' + seconds;
        }

        return "00:00:00";
    };
});



dashboard.config(['$routeProvider',
  function ($routeProvider) {
      $routeProvider.
        when('/touch/:touchId', {
            templateUrl: 'touch.html',
            //controller: 'TouchCtrl'
        }).
       when('/googleAnalytics/analytics', {
           templateUrl: 'analytics.html',
           //controller: 'AnalyticCtrl'
       }).
       when('/googleAnalytics/analytics-geo-location', {
           templateUrl: 'analytics-geo-location.html',
       }).
       when('/googleAnalytics/analytics-mobile-overview', {
           templateUrl: 'analytics-mobile-overview.html',
       }).
       when('/googleAnalytics/analytics-all-traffic', {
           templateUrl: 'analytics-all-traffic.html',
       }).
      when('/googleAnalytics/analytics-top-visited-pages', {
          templateUrl: 'analytics-top-visited-pages.html',
      }).
      when('/blastData', {
          templateUrl: 'blast-overview.html'
      }).
      when('/blastData/:CampaignId/:BlastId', {
          templateUrl: 'blast-data-edit.html'
      }).
      when('/membershipCampaign2015', {
          templateUrl: 'membership-overview.html'
      }).
      when('/membershipCampaignAnalytics', {
          templateUrl: 'membership-analytics-pageview.html'
      }).
        otherwise({
            templateUrl: 'overview.html',
            //controller: 'OverViewCtrl'
        });
  }]);


dashboard.controller("OverViewCtrl", function ($scope, campaignFactory) {
    $scope.pageNumber = 1;
    $scope.emailOverviews = '';
    campaignFactory.GetCampaigns($scope);

    $scope.range = function (min, max, step) {
        step = (step === undefined) ? 1 : step;
        var input = [];
        for (var i = min; i <= max; i += step) input.push(i);
        return input;
    };

    $scope.PagerNext = function () {
        $scope.startPager = $scope.startPager + PagerSize;
        $scope.endPager = ($scope.endPager + PagerSize) >= $scope.totalCount ? $scope.totalCount : $scope.endPager + PagerSize;

        $scope.pageNumber = $scope.startPager;

        var begin = ($scope.pageNumber - 1) * pageSize;
        var end = begin + pageSize;
        $scope.dataList = $scope.dataListTotal.slice(begin, end);
    };

    $scope.PagerPrev = function () {
        debugger;
        $scope.endPager = $scope.startPager - (PagerSize + 1);
        $scope.startPager = $scope.startPager - PagerSize;
        $scope.endPager = ($scope.endPager + PagerSize) >= $scope.totalCount ? $scope.totalCount : $scope.endPager + PagerSize;

        $scope.pageNumber = $scope.startPager;

        var begin = ($scope.pageNumber - 1) * pageSize;
        var end = begin + pageSize;
        $scope.dataList = $scope.dataListTotal.slice(begin, end);
    };

    $scope.PagerLast = function () {
        $scope.endPager = $scope.totalCount;
        $scope.startPager = $scope.totalCount % PagerSize == 0 ? $scope.totalCount - $scope.totalCount % (PagerSize + 1) : $scope.totalCount - $scope.totalCount % PagerSize + 1;
        alert($scope.startPager);
        $scope.GetResultPaged($scope.totalCount);
    };

    $scope.PagerFirst = function () {
        $scope.startPager = 1;
        $scope.endPager = PagerSize >= $scope.totalCount ? $scope.totalCount : PagerSize;

        $scope.GetResultPaged(1);
    };

    $scope.GetResultPaged = function (n) {
        $scope.pageNumber = n;

        var begin = ($scope.pageNumber - 1) * pageSize;
        var end = begin + pageSize;
        $scope.dataList = $scope.dataListTotal.slice(begin, end);

    };

});

dashboard.controller("TouchCtrl", function ($scope, $routeParams, touchFactory) {
    $scope.touchOverview = '';
    $scope.touchLoaded = true;
    $scope.touchName = $routeParams.touchId;
    touchFactory.GetTouchOverview($scope);
});

dashboard.factory("messageFactory", messageFactory);
dashboard.factory("campaignFactory", campaignFactory);
dashboard.factory("touchFactory", touchFactory);

function touchFactory($http, messageFactory) {
    return {
        GetEmailOverview: function ($scope) {
            $http.get(apiUrl + "?campaignIdEmailOverview=" + $scope.CampaignId)
            .success(function (data) {
                //$scope.emailOverviews = data;
                $scope.dataListTotal = data;
                $scope.totalCount = Math.ceil(data.length / pageSize);

                $scope.dataList = $scope.dataListTotal.slice(0, pageSize);

                $scope.startPager = 1;
                $scope.endPager = $scope.totalCount >= PagerSize ? PagerSize : $scope.totalCount;
            })
            .error(function (msg) {
                $scope.emailOverviews = "";
                messageFactory.error("Cannot get data for Email Overview.");
            });
        },
        GetTouchOverview: function ($scope) {
            $http.get(apiUrl + "?blastId=" + $scope.touchName)
                .success(function (data) {

                    $scope.touchOverview = data;

                    if (data.ThumbnailUrl == "") {
                        $scope.touchOverview.ThumbnailUrl = defaultImageLocation;
                    }

                    $scope.touchLoaded = true;
                })
                .error(function (msg) {
                    $scope.touchOverviews = "";
                    $scope.touchLoaded = false;
                    messageFactory.error("Cannot get data for Touch Overview.");
                });
        },
        GetEmailTotal: function ($scope) {
            $http.get(apiUrl + "?campaignIdEmailTotal=" + $scope.CampaignId)
                .success(function (data) {
                    $scope.emailTotal = data;
                })
                .error(function (msg) {
                    $scope.emailTotal = "";
                    messageFactory.error("Cannot get data for Email Total.");
                });
        },
    };
}

function campaignFactory($http, messageFactory, touchFactory) {
    return {
        GetCampaigns: function ($scope) {
            $http.get(apiUrlForCampaign)
                .success(function (data) {
                    if (data && data[0]) {
                        $scope.CampaignId = data[0].CampaignId;
                        touchFactory.GetEmailOverview($scope);
                        touchFactory.GetEmailTotal($scope);
                        //new added IWSD-9169
                        //membershipCampaign.GetDetails($scope);
                    }
                })
                .error(function (msg) {
                    $scope.touchOverviews = false;
                    messageFactory.error("Cannot get data for Campaign.");
                });
        },
    };
}

function messageFactory() {
    return {
        success: function (text) {
            $("#divMessage").attr("class", "alert alert-success").html(text).slideDown("slow").delay(5000).slideUp("slow");
        },
        error: function (text) {
            $("#divMessage").attr("class", "alert alert-danger").html(text).slideDown("slow").delay(5000).slideUp("slow");
        }
    };
}


