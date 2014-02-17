"use strict"

app.controller "MasterController", ($scope, socket, Fullscreen) ->

  $scope.isFullscreen = false
  $scope.toggleFullscreen = ->
     $scope.isFullscreen = !$scope.isFullscreen
