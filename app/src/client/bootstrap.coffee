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
      .when "/slave",
        templateUrl: "views/slave.html"
        controller : "SlaveController"
      .when "/slave/:slaveID",
        templateUrl: "views/slave-desc.html"
        controller : "IndexController"
      .otherwise
        redirectTo: "/"
