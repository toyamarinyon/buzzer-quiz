"use strict";
app.controller("MasterController", function($scope, $http, socket, Fullscreen) {
  $http.get("/master/new/").success(function(data) {
    return console.log(data);
  });
  $scope.masterCode = "Aj9qUe";
  $scope.isFullscreen = false;
  return $scope.toggleFullscreen = function() {
    return $scope.isFullscreen = !$scope.isFullscreen;
  };
});
