var submitMessage = 'Thank you for your interest in the Y of Central Maryland. A representative has been notified and will be reaching out to you regarding your request within 48 business hours.';
var timeOut;
function overrideLocationName() {
    //this is sad
    $('#location > option').each(function () {     
        if ($(this).text() == "Pasadena") {
            $(this).text("Pasadena Anne Arundel County");
            
        }
    });
}
$(document).ready(function () {
    $("input[name=phone]").mask("(999) 999-9999");

       maxLength = $("textarea#feedback").attr("maxlength");
    $("textarea#feedback").after("<div><span id='remainingLengthTempId'>"
              + maxLength + "</span> remaining</div>");

    $("textarea#feedback").bind("keyup change", function () { checkMaxLength(this.id, maxLength); });

    $("#profile").addClass("active");

    setTimeout(function () {
        PlaceholderForNonSupportedBrowser();
    }, 4000);


    function initialize() {
        var myCenter = new google.maps.LatLng(39.23816, -76.776136);
        var mapProp = {
            center: myCenter,
            panControl: true,
            zoom: 8,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("googleMap")
          , mapProp);

        var marker = new google.maps.Marker({
            position: myCenter
        });

        marker.setMap(map);

        var infowindow = new google.maps.InfoWindow({
            content: "YMCA - Customer Billing Office:<br/>" +
    "303 W. Chesapeake Avenue<br/>" +
    "Baltimore, MD 21204"
        });

        infowindow.open(map, marker);
    }


    google.maps.event.addDomListener(window, 'load', initialize);
       
});

$(window).load(function() {
    overrideLocationName();
});

function checkMaxLength(textareaID, maxLength) {

    currentLengthInTextarea = $("#" + textareaID).val().length;
    $(remainingLengthTempId).text(parseInt(maxLength) - parseInt(currentLengthInTextarea));

    if (currentLengthInTextarea > (maxLength)) {

        // Trim the field current length over the maxlength.
        $("textarea#feedback").val($("textarea#feedback").val().slice(0, maxLength));
        $(remainingLengthTempId).text(0);

    }
}


//Check if browser supports Placeholder or not and proceed accordingly
function PlaceholderForNonSupportedBrowser() {
    var test = document.createElement('input');
    if (!('placeholder' in test)) {
        $('input').each(function () {
            if ($(this).attr('placeholder') != "" && this.value == "") {
                $(this).val($(this).attr('placeholder'))
                       .css('color', 'grey')
                       .on({
                           focus: function () {
                               if (this.value == $(this).attr('placeholder')) {
                                   $(this).val("").css('color', '#000');
                               }
                           },
                           blur: function () {
                               if (this.value == "") {
                                   $(this).val($(this).attr('placeholder'))
                                          .css('color', 'grey');
                               }
                           }
                       });
            }
        });
    }
}


function ContactUsCtrl($scope, $http) {
    $scope.contact = {};
    $scope.formSubmitted = false;
    $scope.SubmitProcessing = false;

    InitValidation($scope);
    GetInterests($scope, $http);
    GetLocations($scope, $http);
    FormEvents($scope, $http);   
    
}

function FormEvents($scope, $http) {
    
    $scope.Save = function (valid) {
        $scope.formSubmitted = true;

        if (valid && !$scope.SubmitProcessing && $scope.contact.Interests != null) {
            $scope.contact.Location = $scope.location.Name;
            $scope.contact.Phone = $("input[name=phone]").val();

            Save($scope, $http);
           
            
        }
        else {
            ShowMessage("Please correct the following fields.", true);
        }
    }
}

function GetInterests($scope, $http) {
    $http.get(apiUrl + "interest").
    success(function (data) {

        $scope.interestList = data;
        $scope.interest = $scope.interestList[0];

        setTimeout(function () {
            $("select[name=interest]").multiselect({
                noneSelectedText: "Select all that apply",
                header: false
            }).bind("multiselectclick multiselectcheckall multiselectuncheckall multiselectoptgrouptoggle", function (event, ui) {
                var checkedValues = $.map($(this).multiselect("getChecked"), function (input) {
                    return input.title;
                });
                
                $scope.$apply(function () {
                    $scope.contact.Interests = checkedValues.length ? checkedValues.join(', ') : null;

                    if (checkedValues.length > 0) {
                        $scope.contactForm.interest.$error.required = false;
                    }
                    else {
                        $scope.contactForm.interest.$error.required = true;
                    }
                });
            });
            $("select[name=interest]").multiselect("uncheckAll");
        }, 100);

    }).error(function (msg) {
        ShowMessage(msg.Message, true);
    });
}

function GetLocations($scope, $http) {
    $http.get(apiUrl + "location").
    success(function (data) {

        $scope.locationList = data;
        $scope.location = "";
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

function Save($scope, $http) {
    
    $scope.SubmitProcessing = true;
    $http.post(apiUrl + "contact", $scope.contact).
    success(function (data) {
        
        $scope.contact = {};
        $scope.formSubmitted = false;
        $scope.SubmitProcessing = false;

        setTimeout(function () {
            PlaceholderForNonSupportedBrowser();
        }, 4000);

        GetLocations($scope, $http);
        GetInterests($scope, $http);

        ShowMessage(submitMessage, false);
        
    }).error(function (msg) {
        ShowMessage(msg.Message, true);
        $scope.SubmitProcessing = false;
    });
}

function InitValidation($scope) {
    $scope.emailRegEx = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
    $scope.emailMsg = "Invalid Email";
}

function ShowMessage(msg, isError) {
    clearTimeout(timeOut);

    if (isError)
        $("#divMessage").attr("class", "alert alert-danger");
    else
        $("#divMessage").attr("class", "alert alert-success");

    $("#divMessage").html(msg).slideDown();
    timeOut = setTimeout(function () {
        $("#divMessage").slideUp();
    }, 8000);
}

