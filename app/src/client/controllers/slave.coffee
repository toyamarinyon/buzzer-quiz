"use strict"

app.controller "SlaveController", ($scope, $location, socket) ->

  $scope.submit = ->
    $location.path("/slave/#{this.masterCode}")

