"use strict";
app.controller("SlaveController", function($scope, $location, socket) {
  return $scope.submit = function() {
    return $location.path("/slave/" + this.masterCode);
  };
});
