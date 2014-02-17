"use strict"

app = angular.module("buzzer-quiz", ['ngRoute','FSAngular'])
  .config ($routeProvider) ->
    $routeProvider
      .when "/",
        templateUrl: "views/index.html"
        controller : "IndexController"
      .when "/master",
        templateUrl: "views/master.html"
        controller : "MasterController"
      .otherwise
        redirectTo: "/"
