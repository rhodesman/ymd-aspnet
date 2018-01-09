/// <reference path="../framework/jQuery/jquery-1.11.0.min.js" />
/// <reference path="../framework/knockoutjs/knockout-2.3.0.debug.js" />
/// <reference path="DHTMLX/dhtmlxScheduler/codebase/dhxscheduler_mobile_debug.js" />

var _alertsAPIURL = "/api/Alert";

$(document).ready(function () {
    var AlertsModel = {
        AlertsData: ko.observableArray(),

        InitAlertsData: function() {
            var self = this;
            $.getJSON(_alertsAPIURL, function (alerts_data) {
                self.AlertsData(alerts_data);
            });
        }
    }
    AlertsModel.InitAlertsData();
    ko.applyBindings(AlertsModel);
});