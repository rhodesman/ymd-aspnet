﻿
var apiGoogletrafficAnalyticUrl = "../api/googleanalytic/custom/GetGoogleAnalytics/";
var pageSize = 10;
var PagerSize = 5;

dashboard.controller('AnalyticAllTrafficCtrl', function ($scope, analyticAllTrafficFactory, messageFactoryTraffic) {
    $scope.pageNumber = 1;
    $scope.isCompare = false;
    var isFirstTime = true;
    var date = new Date();
    $scope.dateRangesModel = 'Last 30 Days';
    $scope.dateRanges = ['Custom', 'Today', 'Yesterday', 'Last Week', 'Last Month', 'Last 7 Days', 'Last 30 Days'];
    $scope.dateCompareModel = 'Previous Period';
    $scope.dateCompares = ['Previous Period', 'Previous Year'];

    $scope.$watch('dateRangesModel', function (dateRange) {
        $scope.isCompare = false;

        fillRegularDateField($scope);

        if ($scope.isCompare) {
            fillCompareToDateField($scope);
        }
        if (isFirstTime) {
            analyticAllTrafficFactory.GetGoogleAnalytics('sourceMedium', $scope);
            isFirstTime = false;
        }

    });

    $scope.$watch('dateCompareModel', function (compareTo) {
        if ($scope.dateRangesModel != "Custom") {
            fillCompareToDateField($scope);
        }
        else if ($scope.dateRangesModel == "Custom") {
            fillCompareToCustomDateField($scope);
        }
    });

    $scope.ChangeCompareTo = function () {
        if ($scope.isCompare && $scope.dateRangesModel != "Custom") {
            fillCompareToDateField($scope);
        }
        else if ($scope.isCompare && $scope.dateRangesModel == "Custom") {
            fillCompareToCustomDateField($scope);
        }
    };


    $scope.Search = function () {
        var monthDifference = moment($scope.endDate).diff($scope.startDate, 'months');

        if ($scope.startDate == '' || $scope.endDate == '') {
            messageFactoryTraffic.error("Date field cann't be empty.");
        }
        else if (monthDifference > 11) {
            messageFactoryAnalytic.error("Date difference cann't be greater than 12 months.");
        }
        else {

            if (monthDifference > -1) {
                $scope.GoogleAnalytics = false;
                analyticAllTrafficFactory.GetGoogleAnalytics('sourceMedium', $scope);
            }
            else
            {
                messageFactoryTraffic.error("Invalid date range. Please try again.");
            }
        }     
    }

    $scope.range = function (min, max, step) {
        step = (step === undefined) ? 1 : step;
        var input = [];
        for (var i = min; i <= max; i += step) input.push(i);
        return input;
    };

    $scope.PagerNext = function() {
        $scope.startPager = $scope.startPager + PagerSize;
        $scope.endPager = ($scope.endPager + PagerSize) >= $scope.totalCount ? $scope.totalCount : $scope.endPager + PagerSize;

        $scope.pageNumber = $scope.startPager;

        var begin = ($scope.pageNumber - 1) * pageSize;
        var end = begin + pageSize;
        $scope.GoogleAnalytics = $scope.GoogleAnalyticsTotal.slice(begin, end);
    };

    $scope.PagerPrev = function() {
        $scope.endPager = $scope.startPager - (PagerSize + 1);
        $scope.startPager = $scope.startPager - PagerSize;
        $scope.endPager = ($scope.endPager + PagerSize) >= $scope.totalCount ? $scope.totalCount : $scope.endPager + PagerSize;

        $scope.pageNumber = $scope.startPager;

        var begin = ($scope.pageNumber - 1) * pageSize;
        var end = begin + pageSize;
        $scope.GoogleAnalytics = $scope.GoogleAnalyticsTotal.slice(begin, end);
    };

    $scope.PagerLast = function() {
        $scope.endPager = $scope.totalCount;
        $scope.startPager = $scope.totalCount - $scope.totalCount % PagerSize + 1;

        $scope.GetResultPaged($scope.totalCount);
    };

    $scope.PagerFirst = function() {
        $scope.startPager = 1;
        $scope.endPager = PagerSize >= $scope.totalCount ? $scope.totalCount : PagerSize;

        $scope.GetResultPaged(1);
    };

    $scope.GetResultPaged = function(n) {
        $scope.pageNumber = n;

        var begin = ($scope.pageNumber - 1) * pageSize;
        var end = begin + pageSize;
        $scope.GoogleAnalytics = $scope.GoogleAnalyticsTotal.slice(begin, end);

    };
    $scope.validateDate = function () {
        var dayDifference = moment($scope.endDate).diff($scope.startDate, 'days');

        if ($scope.startDate != '' && $scope.endDate != '') {
            if (dayDifference <= -1)
                $scope.dateValidation = true;
            else {
                $scope.dateValidation = false;
            }
        }
    };
});

dashboard.factory("analyticAllTrafficFactory", function ($http, messageFactoryTraffic) {
    return {
         GetGoogleAnalytics: function (dimenssion,$scope) {
             $http.get(apiGoogletrafficAnalyticUrl + '?isCompareExist=' + $scope.isCompare + '&dimensions=' + dimenssion + '&startDate=' + $scope.startDate + '&endDate=' + $scope.endDate + '&compareStartDate=' + $scope.compareStartDate + '&compareEndDate=' + $scope.compareEndDate)
            .success(function (data) {
                $scope.GoogleAnalyticsTotal = data;
                $scope.totalCount = Math.ceil(data.length / pageSize);

                $scope.GoogleAnalytics = $scope.GoogleAnalyticsTotal.slice(0, pageSize);

                $scope.startPager = 1;
                $scope.endPager = $scope.totalCount >= PagerSize ? PagerSize : $scope.totalCount;

                return;
            })
            .error(function (msg) {
                messageFactoryTraffic.error(msg);
            });
        }
    };
});


dashboard.factory('messageFactoryTraffic', function () {
    return {
        success: function (text) {
            $("#divMessage").attr("class", "alert alert-success").html(text).slideDown("slow").delay(5000).slideUp("slow");
        },
        error: function (text) {
            $("#divMessage").attr("class", "alert alert-danger").html(text).slideDown("slow").delay(5000).slideUp("slow");
        }
    };
});