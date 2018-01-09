var apiMemberShipGoogleAnalyticPageVisitUrl = "../api/googleanalytic/custom/GetLandingPageOverviewApi/";

dashboard.controller('MemberShipAnalyticPageVisitCtrl', function ($scope, membershipAnalyticPageVisitFactory, membershipMessageFactory) {
    $scope.Pageviews = 0;
    $scope.UniquePageviews = 0;
    $scope.memberContentoverview = false;

    membershipAnalyticPageVisitFactory.GetContentOverview($scope);
});

dashboard.factory("membershipAnalyticPageVisitFactory", function ($http, membershipMessageFactory) {

    return {

        GetContentOverview: function ($scope) {
            $http.get(apiMemberShipGoogleAnalyticPageVisitUrl)
           .success(function (data) {
               $scope.memberContentoverview = true;

               for (i = 0; i < data.length; i++)
               {
                   $scope.Pageviews = $scope.Pageviews + data[i].Pageviews;
                   $scope.UniquePageviews = $scope.UniquePageviews + data[i].UniquePageviews;
               }

               return;
           })
           .error(function (msg) {

               $scope.Pageviews = 0;
               $scope.UniquePageviews = 0;
               $scope.memberContentoverview = false;

               membershipMessageFactory.error(msg);
           });

        }
    };
});

dashboard.factory('membershipMessageFactory', function () {
    return {
        success: function (text) {
            $("#divMessage").attr("class", "alert alert-success").html(text).slideDown("slow").delay(5000).slideUp("slow");
        },
        error: function (text) {
            $("#divMessage").attr("class", "alert alert-danger").html(text).slideDown("slow").delay(5000).slideUp("slow");
        }
    };
});