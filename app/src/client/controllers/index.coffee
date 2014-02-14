"use strict"

app.controller "IndexController", ($scope, socket) ->

  $scope.thinking = true
  $scope.playerColor = "red"
  $scope.hello = ->
    socket.emit "answer"

  socket.on "answer", ->
    $scope.answered = true
    $scope.thinking = false
