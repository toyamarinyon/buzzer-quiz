"use strict"

app.controller "IndexController", ($scope, socket) ->

  $scope.hello = ->
    socket.emit "answer"

  socket.on "answer", ->
    $scope.answered = true
