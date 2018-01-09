var apiBlastUrl = "../api/blast/";
var apiFileUploadUrl = "../api/FileUploader";
var apiUrlForCampaign = "../api/Campaign/";
var defaultImageLocation = "../no-image.jpg";

dashboard.controller("blastAddEditCtrl", function ($scope, $http, $routeParams, campaignGetDataFactory, blastAddEditFactory,imageUploadFactory, messageFactoryBlast)
{
    $scope.formSubmitted = false;
    $scope.dataloaderFlag = false;
    $scope.blastEntity = null;


    $scope.startDate = '';
    //$scope.hoursArray = [01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12];
    //$scope.minutesArray = [00, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59];
    //$scope.ampmArray = ['AM', 'PM'];
    //$scope.hrstartdatemodel = '';
    //$scope.minstartdatemodel = '';
    //$scope.ampmstartdatemodel = '';
    $scope.isActive = false;
    $scope.randomnumber = '';
    $scope.picture = null;
    $scope.isPictureLoad = false;
   

    $scope.blastId = $routeParams.BlastId;
    $scope.pagemode = $scope.blastId == 0 ? 'Add Blast' : 'Edit Blast';
    $scope.campaignId = $routeParams.CampaignId;

    
   campaignGetDataFactory.GetCampaign($scope)
                         .then(function (promise) {
                            
                             if ($scope.pagemode == 'Edit Blast')
                             {
                                 $scope.dataloaderFlag = true;
                                 blastAddEditFactory.GetBlast($scope);
                             }
                                                  });
    
   

   $scope.SaveData = function ()
   {
       $scope.formSubmitted = true;
       
       if ($scope.addEditBlastForm.$valid == true)
       {
                $scope.dataloaderFlag = true;

                if (($scope.blastEntity.ThumbnailUrl =="")||(angular.isUndefined($scope.blastEntity.ThumbnailUrl)))
                {
                    $scope.isPictureLoad = true;
                    $scope.picture = defaultImageLocation;
                    blastAddEditFactory.SaveBlast($scope);
                }
                else {
                    imageUploadFactory.UploadImage($scope)
                               .then(function (promise)
                               { blastAddEditFactory.SaveBlast($scope); }
                               );
                }
       }
       else
       {
           
           $scope.dataloaderFlag = false;
           messageFactoryBlast.error("Please correct the following errors.");
       }     
   }

});




dashboard.factory("campaignGetDataFactory", function ($http, messageFactoryBlast)
{
    return{
                GetCampaign: function ($scope)
                {
                    var promise = $http.get(apiUrlForCampaign)
                         .success(function (data, status, headers, config)
                         {
                             //this will pick only top campaign
                             if ($scope.pagemode == 'Add Blast')
                             {
                                 $scope.campaignId = data[0].CampaignId;
                             }

                             return data[0];
                         })
                         .error(function (data, status, headers, config)
                         {
                             $scope.dataloaderFlag = false;
                             messageFactoryBlast.error("No data found for campaign.");
                         });
                    return promise;
                }
        };
});


dashboard.factory("blastAddEditFactory", function ($http, messageFactoryBlast) {
    return {
        GetBlast: function ($scope) {
            $http.get(apiBlastUrl + "?campaignId=" + $scope.campaignId + '&blastId=' + $scope.blastId)
                 .success(function (data) {

                     if (data != null) {
                         var startDateTime = data[0].BlastStartDate.ReplaceAll(" ", "~");
                         var dateArray = startDateTime.split("~");
                         if (dateArray != null) {
                             $scope.startDate = dateArray[0];
                             //var i = 0;
                             //for (i = 1; i<dateArray.length; i++) {
                             //    if ((dateArray[i] != "~")&&(dateArray[i] != "")) {
                             //        var hrMinArray = dateArray[i].split(":");
                             //        $scope.hrstartdatemodel = $scope.hoursArray[parseInt(hrMinArray[0] - 1)];
                             //        $scope.minstartdatemodel = $scope.minutesArray[parseInt(hrMinArray[1])];
                             //        break;
                             //    }
                             //}
                             //for (; i<dateArray.length; i++) {
                             //    if ((dateArray[i] != "~")&& (dateArray[i] != "")) {
                             //        $scope.ampmstartdatemodel = dateArray[i] == 'PM' ? $scope.ampmArray[1] : $scope.ampmArray[0];
                             //        break;
                             //    }
                             //}
                         }

                         if (data[0].ThumbnailUrl != "")
                         {
                             $scope.isPictureLoad = true;
                             $scope.picture = data[0].ThumbnailUrl + '?' + (new Date()).getTime();
                         }
                         if (data[0].ThumbnailUrl == "")
                         {
                             $scope.isPictureLoad = true;
                             $scope.picture = defaultImageLocation;
                         }

                         $scope.isActive = data[0].IsActive == true ? true : false;                      
                         $scope.blastEntity = data[0];
                       
                     }
                     $scope.dataloaderFlag = false;
                     return data[0];
                 })
                 .error(function (msg)
                 {
                     $scope.dataloaderFlag = false;
                     messageFactoryBlast.error("No data found for blast.");
                 });
        },

        SaveBlast: function ($scope)
                    {
                        $scope.blastEntity.CampaignId = $scope.campaignId;
                        $scope.blastEntity.BlastId = $scope.blastId;
                       // $scope.blastEntity.BlastStartDate = $scope.startDate + ' ' + $scope.hrstartdatemodel + ':' + $scope.minstartdatemodel + ' ' + $scope.ampmstartdatemodel;
                        $scope.blastEntity.BlastStartDate = $scope.startDate ;
                        $scope.blastEntity.BlastType = 'Email';
                     
                        $scope.blastEntity.IsActive = $scope.isActive;

                        $http.post(apiBlastUrl, $scope.blastEntity)
                             .success(function (data)
                             {
                                 $scope.dataloaderFlag = false;
                                 messageFactoryBlast.success("Successfully data saved.");
                             })
                             .error(function (msg) {
                                 $scope.dataloaderFlag = false;
                                 messageFactoryBlast.success("Data failed to save. Server responses: " + msg);
                             });
                    }
    };
});


dashboard.factory("imageUploadFactory", function ($http, messageFactoryBlast) {
    return {
        GetIsImageExits: function ($scope) {
            $http.get(apiFileUploadUrl + "/IsFileExists?fileName=" + $scope.blastEntity.ThumbnailUrl)
                 .success(function (data)
                 {
                    
                 })
                 .error(function (msg) {
                     $scope.dataloaderFlag = false;
                     messageFactoryBlast.error("No data found for campaign.");
                 });
        },

        UploadImage: function ($scope)
        {
            var fd = new FormData();
            var files = $("#fileUpload").get(0).files;

            if (files.length > 0)
            {
                if (parseInt(files[0].size) / 1024 > 4096)
                {
                    $scope.dataloaderFlag = false;
                    messageFactoryBlast.error("Image size is too big. Please select image size less than 4 Mb.");
                    return;
                }

                var sFileName = files[0].name;
                var _validFileExtensions = [".jpg", ".jpeg", ".bmp", ".gif", ".png"];
                var blnValid = false;
                for (var j = 0; j < _validFileExtensions.length; j++) {
                    var sCurExtension = _validFileExtensions[j];
                    if (sFileName.substr(sFileName.length - sCurExtension.length, sCurExtension.length).toLowerCase() == sCurExtension.toLowerCase()) {
                        blnValid = true;
                        break;
                    }
                }

                if (!blnValid)
                {
                    $scope.dataloaderFlag = false;
                    messageFactoryBlast.error(sFileName + " is invalid, allowed extensions are: " + _validFileExtensions.join(", "));
                }
                else {

                    fd.append("UploadedImage", files[0]);
                    var picture = $scope.blastEntity.SchedulerMailingId + sCurExtension;                 
                    var promise = $http.post(apiFileUploadUrl + "/uploadfile?newFileName=" + picture, fd,
                          {
                              transformRequest: angular.identity,
                              headers: { 'Content-Type': undefined }
                          })                   
                           .success(function (data, status, headers, config)
                           {
                               $scope.isPictureLoad = true;
                               $scope.picture = picture + '?' + (new Date()).getTime();
                               $scope.blastEntity.ThumbnailUrl = picture;
                                   console.log($scope.picture);                    
                                   return data;
                           })
                           .error(function (data, status, headers, config) {
                               $scope.dataloaderFlag = false;
                               messageFactoryBlast.error(data);
                               return data;
                           });
                    return promise;
                }
            }
            else if($scope.blastEntity.ThumbnailUrl != null || angular.isUndefined($scope.blastEntity.ThumbnailUrl) != true)
            {
                var oldfilename=$scope.blastEntity.ThumbnailUrl;
                var newfilename= $scope.blastEntity.SchedulerMailingId +"."+ $scope.blastEntity.ThumbnailUrl.split(".")[1];

                var promise = $http.get(apiFileUploadUrl + "/RenameFile?oldfileName=" + oldfilename + "&newfileName=" + newfilename)
               .success(function (data, status, headers, config)
               {
                   $scope.isPictureLoad = true;
                   $scope.blastEntity.ThumbnailUrl = newfilename;
                   return data;
                   })
               .error(function (data, status, headers, config)
               {
                   $scope.dataloaderFlag = false;
                   messageFactoryBlast.error("Picture is not stored in folder. Please check.");
                   return data;
               });

                return promise;
            }         
        }

    };
});



dashboard.factory('messageFactoryBlast', function () {
    return {
        success: function (text) {
            $("#divMessage").attr("class", "alert alert-success").html(text).slideDown("slow").delay(5000).slideUp("slow");
        },
        error: function (text) {
            $("#divMessage").attr("class", "alert alert-danger").html(text).slideDown("slow").delay(5000).slideUp("slow");
        }
    };
});
   


dashboard.directive('validFile', function () {
    return {
        require:'ngModel',
        link:function(scope,el,attrs,ngModel){
            //change event is fired when file is selected
            el.bind('change',function(){
                scope.$apply(function(){
                    ngModel.$setViewValue(el.val());
                    ngModel.$render();
                });
            });
        }
    }
});




String.prototype.ReplaceAll = function (stringToFind, stringToReplace) {
    var temp = this;
    var index = temp.indexOf(stringToFind);
    while (index != -1) {
        temp = temp.replace(stringToFind, stringToReplace);
        index = temp.indexOf(stringToFind);
    }
    return temp;
}