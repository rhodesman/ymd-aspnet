
var apiGoogleAnalyticUrl = "../api/googleanalytic/";
var pageSize = 10;
var PagerSize = 5;

dashboard.controller('AnalyticCtrl', function ($scope, analyticFactory, messageFactoryAnalytic) {

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
            analyticFactory.GetGAOverview($scope);
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
            messageFactoryAnalytic.error("Date field cann't be empty.");
        }
        else if (monthDifference > 11) {
            messageFactoryAnalytic.error("Date difference cann't be greater than 12 months.");
        }
        else {

            if (monthDifference > -1) {
                $scope.overview = false;
                analyticFactory.GetGAOverview($scope);
            }
            else {
                analyticFactory.error("Invalid date range. Please try again.");
            }
        }

    }

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



dashboard.factory("analyticFactory", function ($http, messageFactoryAnalytic) {
    return {


        GetGAOverview: function ($scope) {
            $http.get(apiGoogleAnalyticUrl + '?isCompareExist=' + $scope.isCompare + '&startDate=' + $scope.startDate + '&endDate=' + $scope.endDate + '&compareStartDate=' + $scope.compareStartDate + '&compareEndDate=' + $scope.compareEndDate)
            .success(function (data) {
                $scope.overview = data;
                return;
            })
            .error(function (msg) {
                messageFactoryAnalytic.error(msg);
            });
        }

    };
});

dashboard.directive('datepicker', function () {
    return {
        restrict: 'A',
        require: 'ngModel',
        link: function (scope, element, attrs, ngModelCtrl) {
            $(function () {
                //if ($(element).attr('name') == 'blastStartDate') {
                //    $(element).datepicker({ startDate: '+0d' });
                //}

                $(element).datepicker().on("changeDate", function (ev) {
                    debugger;
                    var year = new Date().getFullYear();
                    var month = new Date().getMonth();
                    var date = new Date().getDate();
                    var dateValue = new Date(year, month, date, 0, 0, 0, 0);
                    
                    if($(element).attr('name') == 'blastStartDate') {
                        //if (ev.date >= dateValue) {
                        debugger;
                            scope.$apply(function () {
                                ngModelCtrl.$setViewValue(new Date(ev.date).format("mm-dd-yyyy"));
                                $(element).datepicker('hide');
                                if (scope.dateRangesModel == "Custom") {
                                    fillCompareToCustomDateField(scope);
                                }
                            });
                        //} else {
                        //    $(element).val("");
                        //    scope.startDate = '';
                        //    ngModelCtrl.$setViewValue('');
                        //}
                    } else {
                        scope.$apply(function () {
                            ngModelCtrl.$setViewValue(new Date(ev.date).format("mm-dd-yyyy"));
                            $(element).datepicker('hide');
                            if (scope.dateRangesModel == "Custom") {
                                fillCompareToCustomDateField(scope);
                            }
                        });
                    }

                    $(element).datepicker('show');
                });
            });
        }
    };
});

dashboard.factory('messageFactoryAnalytic', function () {
    return {
        success: function (text) {
            $("#divMessage").attr("class", "alert alert-success").html(text).slideDown("slow").delay(5000).slideUp("slow");
        },
        error: function (text) {
            $("#divMessage").attr("class", "alert alert-danger").html(text).slideDown("slow").delay(5000).slideUp("slow");
        }
    };
});



function fillRegularDateField($scope) {
    switch ($scope.dateRangesModel) {
        case "Custom":
            $scope.endDate = null;
            $scope.startDate = null;
            $scope.startDateReadonly = false;
            $scope.endDateReadonly = false;
            break;
        case "Today":
            $scope.endDate = moment().format("MM/DD/YYYY");
            $scope.startDate = moment().format("MM/DD/YYYY");
            $scope.startDateReadonly = true;
            $scope.endDateReadonly = true;
            break;
        case "Yesterday":
            $scope.endDate = moment().subtract(1, 'days').format("MM/DD/YYYY");
            $scope.startDate = moment().subtract(1, 'days').format("MM/DD/YYYY");
            $scope.startDateReadonly = true;
            $scope.endDateReadonly = true;
            break;
        case "Last Week":
            $scope.endDate = moment().subtract(7, 'days').format("MM/DD/YYYY");
            $scope.startDate = moment().subtract(13, 'days').format("MM/DD/YYYY");
            $scope.startDateReadonly = true;
            $scope.endDateReadonly = true;
            break;
        case "Last Month":
            $scope.endDate = moment().subtract(1, 'months').endOf('month').format("MM/DD/YYYY");
            $scope.startDate = moment().subtract(1, 'months').startOf('month').format("MM/DD/YYYY");
            $scope.startDateReadonly = true;
            $scope.endDateReadonly = true;
            break;
        case "Last 7 Days":
            $scope.endDate = moment().format("MM/DD/YYYY");
            $scope.startDate = moment().subtract(7, 'days').format("MM/DD/YYYY");
            $scope.startDateReadonly = true;
            $scope.endDateReadonly = true;
            break;
        case "Last 30 Days":
            $scope.endDate = moment().format("MM/DD/YYYY");
            $scope.startDate = moment().subtract(30, 'days').format("MM/DD/YYYY");
            $scope.startDateReadonly = true;
            $scope.endDateReadonly = true;
            break;
    }

}

function fillCompareToDateField($scope) {
    switch ($scope.dateCompareModel) {
        case "Previous Period": switch ($scope.dateRangesModel) {
            case "Custom":
                $scope.compareEndDate = null;
                $scope.compareStartDate = null;

                break;
            case "Today":
                $scope.compareEndDate = moment().subtract(1, 'days').format("MM/DD/YYYY");
                $scope.compareStartDate = moment().subtract(1, 'days').format("MM/DD/YYYY");

                break;
            case "Yesterday":
                $scope.compareEndDate = moment().subtract(2, 'days').format("MM/DD/YYYY");
                $scope.compareStartDate = moment().subtract(2, 'days').format("MM/DD/YYYY");

                break;
            case "Last Week":
                $scope.compareEndDate = moment().subtract(14, 'days').format("MM/DD/YYYY");
                $scope.compareStartDate = moment().subtract(20, 'days').format("MM/DD/YYYY");

                break;
            case "Last Month":
                $scope.compareEndDate = moment().subtract(2, 'months').endOf('month').format("MM/DD/YYYY");
                $scope.compareStartDate = moment().subtract(2, 'months').startOf('month').format("MM/DD/YYYY");

                break;
            case "Last 7 Days":
                $scope.compareEndDate = moment().subtract(8, 'days').format("MM/DD/YYYY");
                $scope.compareStartDate = moment().subtract(14, 'days').format("MM/DD/YYYY");

                break;
            case "Last 30 Days":
                $scope.compareEndDate = moment().subtract(31, 'days').format("MM/DD/YYYY");
                $scope.compareStartDate = moment().subtract(61, 'days').format("MM/DD/YYYY");

                break;
        } break;

        case "Previous Year": switch ($scope.dateRangesModel) {
            case "Custom":
                $scope.compareEndDate = null;
                $scope.compareStartDate = null;
                break;
            case "Today":
                $scope.compareEndDate = moment().subtract(1, 'years').format("MM/DD/YYYY");
                $scope.compareStartDate = moment().subtract(1, 'years').format("MM/DD/YYYY");

                break;
            case "Yesterday":
                $scope.compareEndDate = moment().subtract(1, 'years').subtract(1, 'days').format("MM/DD/YYYY");
                $scope.compareStartDate = moment().subtract(1, 'years').subtract(1, 'days').format("MM/DD/YYYY");

                break;
            case "Last Week":
                $scope.compareEndDate = moment().subtract(1, 'years').subtract(7, 'days').format("MM/DD/YYYY");
                $scope.compareStartDate = moment().subtract(1, 'years').subtract(13, 'days').format("MM/DD/YYYY");

                break;
            case "Last Month":
                $scope.compareEndDate = moment().subtract(1, 'years').subtract(1, 'months').endOf('month').format("MM/DD/YYYY");
                $scope.compareStartDate = moment().subtract(1, 'years').subtract(1, 'months').startOf('month').format("MM/DD/YYYY");

                break;
            case "Last 7 Days":
                $scope.compareEndDate = moment().subtract(1, 'years').format("MM/DD/YYYY");
                $scope.compareStartDate = moment().subtract(1, 'years').subtract(7, 'days').format("MM/DD/YYYY");

                break;
            case "Last 30 Days":
                $scope.compareEndDate = moment().subtract(1, 'years').format("MM/DD/YYYY");
                $scope.compareStartDate = moment().subtract(1, 'years').subtract(30, 'days').format("MM/DD/YYYY");

                break;
        } break;
    }

}

function fillCompareToCustomDateField($scope) {
    var dateDifference = moment($scope.endDate).diff($scope.startDate, 'days');

    switch ($scope.dateCompareModel) {
        case "Previous Period":
            $scope.compareStartDate = moment($scope.startDate).subtract(dateDifference + 1, 'days').format("MM/DD/YYYY");
            $scope.compareEndDate = moment($scope.startDate).subtract(1, 'days').format("MM/DD/YYYY");
            break;

        case "Previous Year":
            $scope.compareStartDate = moment($scope.endDate).subtract(1, 'years').subtract(dateDifference, 'days').format("MM/DD/YYYY");
            $scope.compareEndDate = moment($scope.endDate).subtract(1, 'years').format("MM/DD/YYYY");
            break;
    }

}


