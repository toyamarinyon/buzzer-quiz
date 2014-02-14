"use strict";
app.controller("IndexController", function($scope, socket) {
  $scope.hello = function() {
    return socket.emit("answer");
  };
  return socket.on("answer", function() {
    return $scope.answered = true;
  });
});
