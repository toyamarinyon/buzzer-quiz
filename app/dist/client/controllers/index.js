"use strict";
app.controller("IndexController", function($scope, socket) {
  return $scope.hello = function() {
    return socket.emit("awesome:handler", {
      name: "Mina"
    });
  };
});
