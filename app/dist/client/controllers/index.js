"use strict";
app.controller("IndexController", function($scope, socket) {
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
