"use strict";
app.controller("MasterController", function($scope, socket, Fullscreen) {
  $scope.isFullscreen = false;
  return $scope.toggleFullscreen = function() {
    return $scope.isFullscreen = !$scope.isFullscreen;
  };
});
