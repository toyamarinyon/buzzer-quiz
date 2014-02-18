"use strict"

app.controller "MasterController", ($scope, $http, socket, Fullscreen) ->


  $http.get("/master/new/")
    .success (data) ->
      console.log(data)

  $scope.masterCode = "Aj9qUe"

  $scope.isFullscreen = false
  $scope.toggleFullscreen = ->
     $scope.isFullscreen = !$scope.isFullscreen
