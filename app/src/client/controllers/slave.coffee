"use strict"

app.controller "SlaveNewController", ($scope, $location, $routeParams, socket) ->

  $scope.submit = ->
    $location.path("/slave/#{this.masterCode}")

app.controller "SlaveDescController", ($scope, $location, $routeParams, socket) ->

  $scope.submit = ->
    $location.path("/slave/#{this.masterCode}")

  $scope.thinking = true
  $scope.playerColor = "red"
  
  $scope.hello = ->
    socket.emit "answer"

  socket.on "answer", ->
    $scope.answered = true
    $scope.thinking = false
