"use strict"

app.controller "IndexController", ($scope, socket) ->

  $scope.hello = ->
    socket.emit "awesome:handler",
      name: "Mina"
