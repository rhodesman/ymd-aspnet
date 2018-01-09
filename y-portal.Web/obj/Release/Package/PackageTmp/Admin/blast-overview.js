var apiUrlForCampaign = '../api/Campaign/';
var apiBlastUrl = "../api/blast/";
var pageSize = 10;
var PagerSize = 5;

dashboard.controller('BlastListCtrl', function ($scope, campaignInfoFactory) {
    $scope.pageNumber = 1;
    $scope.startDate = ''; //new Date().format("mm/dd/yyyy");
    $scope.endDate = ''; //new Date().format("mm/dd/yyyy");
    console.log($scope.CampaignId);
    //debugger;
    //$scope.TESTDATE = new Date();
    campaignInfoFactory.GetCampaignsInfo($scope);


    //$scope.Search = function () {

    //    $scope.Blasts = false;

    //    blastFactory.GetAllBlast($scope);

    //}


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
        $scope.Blasts = $scope.BlastOverview.slice(begin, end);
    };

    $scope.PagerPrev = function () {
        $scope.endPager = $scope.startPager - (PagerSize + 1);
        $scope.startPager = $scope.startPager - PagerSize;
        $scope.endPager = ($scope.endPager + PagerSize) >= $scope.totalCount ? $scope.totalCount : $scope.endPager + PagerSize;

        $scope.pageNumber = $scope.startPager;

        var begin = ($scope.pageNumber - 1) * pageSize;
        var end = begin + pageSize;
        $scope.Blasts = $scope.BlastOverview.slice(begin, end);
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
        $scope.Blasts = $scope.BlastOverview.slice(begin, end);

    };
    //$scope.validateDate = function () {
    //    if ($scope.startDate != '' && $scope.endDate != '') {
    //        if ($scope.startDate > $scope.endDate)
    //            $scope.dateValidation = true;
    //        else {
    //            $scope.dateValidation = false;
    //        }
    //    }
    //};
});


dashboard.factory("campaignInfoFactory", function ($http, messageFactoryBlastOverview, blastFactory) {
    return {
        GetCampaignsInfo: function ($scope) {
            $http.get(apiUrlForCampaign)
                .success(function (data) {
                    if (data && data[0]) {
                        $scope.Campaigns = data;
                        $scope.CampaignIdFor = data[0].CampaignId;
                        blastFactory.GetAllBlast($scope);
                    }
                })
                .error(function (msg) {
                    $scope.touchOverviews = false;
                    messageFactoryBlastOverview.error("Cannot get data for Campaign.");
                });
        }
    };
});


dashboard.factory("blastFactory", function ($http, messageFactoryBlastOverview) {
    return {

        GetAllBlast: function ( $scope) {
            $http.get(apiBlastUrl + "?campaignIdBlastOverview=" + $scope.CampaignIdFor)
          
            .success(function (data) {
                
                for (var i = 0; i < data.length; i++) {
                    data[i].blastStartDateFormated = new Date(data[i].BlastStartDate);
                }
                $scope.BlastOverview = data;
                $scope.totalCount = Math.ceil(data.length / pageSize);

                $scope.Blasts = $scope.BlastOverview.slice(0, pageSize);

                $scope.startPager = 1;
                $scope.endPager = $scope.totalCount >= PagerSize ? PagerSize : $scope.totalCount;

                return;
            })
            .error(function (msg) {
                messageFactoryBlastOverview.error("Somthing went wrong. Please try again.");
            });
        },

     
    };
});


dashboard.factory('messageFactoryBlastOverview', function () {
    return {
        success: function (text) {
            $("#divMessage").attr("class", "alert alert-success").html(text).slideDown("slow").delay(5000).slideUp("slow");
        },
        error: function (text) {
            $("#divMessage").attr("class", "alert alert-danger").html(text).slideDown("slow").delay(5000).slideUp("slow");
        }
    };
});