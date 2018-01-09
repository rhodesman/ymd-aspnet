var apiProspectUrl = '../api/Prospect/';
var apiLocationUrl = '../api/Location/'
var pageSize = 25;
var PagerSize = 5;

dashboard.controller('MemberCtrl', function ($scope, memberFactory) {
    $scope.pageNumber = 1;
    $scope.LocationList = null;
    $scope.Keyword = null;
    $scope.Location = null;
    $scope.FromDate = null;
    $scope.ToDate = null;

    //memberFactory.GetLocation($scope);
    memberFactory.SearchLandingPageProspect($scope);

    $scope.Search = function () {
        memberFactory.SearchLandingPageProspect($scope);
    };

    $scope.ExportData = function () {
        memberFactory.ExportData($scope);
    };

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
        $scope.Members = $scope.MemberOverview.slice(begin, end);
    };

    $scope.PagerPrev = function () {
        $scope.endPager = $scope.startPager - (PagerSize + 1);
        $scope.startPager = $scope.startPager - PagerSize;
        $scope.endPager = ($scope.endPager + PagerSize) >= $scope.totalCount ? $scope.totalCount : $scope.endPager + PagerSize;

        $scope.pageNumber = $scope.startPager;

        var begin = ($scope.pageNumber - 1) * pageSize;
        var end = begin + pageSize;
        $scope.Members = $scope.MemberOverview.slice(begin, end);
    };

    $scope.PagerLast = function () {
        $scope.endPager = $scope.totalCount;
        $scope.startPager = $scope.totalCount - $scope.totalCount % PagerSize + 1;

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
        $scope.Members = $scope.MemberOverview.slice(begin, end);
    };

    $scope.validateDateRange = function () {
        var dayDifference = moment($scope.ToDate).diff($scope.FromDate, 'days');

        if ($scope.FromDate != '' && $scope.ToDate != '') {
            if (dayDifference <= -1)
                $scope.isDateRangeValid = true;
            else {
                $scope.isDateRangeValid = false;
            }
        }
    };

});

dashboard.factory("memberFactory", function ($http, messageFactoryMemberOverview) {
    return {

        SearchLandingPageProspect: function ($scope) {

            //var selectedLocation = null;

            //if ($scope.Location != null) {
            //    selectedLocation = $scope.Location.Name;
            //}

            $http.get(apiProspectUrl + "?keyword=" + $scope.Keyword + "&location=" + $scope.Location + "&fromDate=" + $scope.FromDate + "&toDate=" + $scope.ToDate)

            .success(function (data) {

                $scope.MemberOverview = data;
                $scope.totalCount = Math.ceil(data.length / pageSize);

                $scope.Members = $scope.MemberOverview.slice(0, pageSize);

                $scope.startPager = 1;
                $scope.endPager = $scope.totalCount >= PagerSize ? PagerSize : $scope.totalCount;

                return;
            })
            .error(function (msg) {
                messageFactoryMemberOverview.error("Somthing went wrong. Please try again.");
            });
        },

        ExportData: function ($scope) {

            //var selectedLocation = null;

            //if ($scope.Location != null) {
            //    selectedLocation = $scope.Location.Name;
            //}

            $http.get(apiProspectUrl + "?keyword=" + $scope.Keyword + "&location=" + $scope.Location + "&fromDate=" + $scope.FromDate + "&toDate=" + $scope.ToDate + "&type=csv")

            .success(function (data) {

                window.location = data.Key;
                return;

            })
            .error(function (msg) {
                messageFactoryMemberOverview.error("Somthing went wrong. Please try again.");
            });
        },

        GetLocation: function ($scope) {

            $http.get(apiLocationUrl)

           .success(function (data) {
               $scope.LocationList = data;
           })
            .error(function (msg) {
                messageFactoryMemberOverview.error("Somthing went wrong. Please try again.");
            });
        }
    };
});

dashboard.factory('messageFactoryMemberOverview', function () {
    return {
        success: function (text) {
            $("#divMessage").attr("class", "alert alert-success").html(text).slideDown("slow").delay(5000).slideUp("slow");
        },
        error: function (text) {
            $("#divMessage").attr("class", "alert alert-danger").html(text).slideDown("slow").delay(5000).slideUp("slow");
        }
    };
});