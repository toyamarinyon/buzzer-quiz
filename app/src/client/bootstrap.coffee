"use strict"

app = angular.module("buzzer-quiz", ['ngRoute'])
  .config ($routeProvider) ->
    $routeProvider
      .when "/",
        templateUrl: "views/index.html"
        controller : "IndexController"
      .otherwise "/",
        redirectTo: "/"
