"use strict";
app.controller("SlaveController", function($scope, $location, $routeParams, socket) {
  $scope.submit = function() {
    return $location.path("/slave/" + this.masterCode);
  };
  $scope.thinking = true;
  $scope.playerColor = "red";
  $scope.hello = function() {
    return socket.emit("answer");
  };
  return socket.on("answer", function() {
    $scope.answered = true;
    return $scope.thinking = false;
  });
});
