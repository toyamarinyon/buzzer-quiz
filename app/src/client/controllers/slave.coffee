"use strict"

app.controller "SlaveController", ($scope, $location, $routeParams, socket) ->

  $scope.submit = ->
    $location.path("/slave/#{this.masterCode}")

  $scope.thinking = true
  $scope.playerColor = "red"
  
  $scope.hello = ->
    socket.emit "answer"

  socket.on "answer", ->
    $scope.answered = true
    $scope.thinking = false
