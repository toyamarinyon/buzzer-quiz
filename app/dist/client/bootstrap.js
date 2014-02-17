"use strict";
var app;

app = angular.module("buzzer-quiz", ['ngRoute', 'FSAngular']).config(function($routeProvider) {
  return $routeProvider.when("/", {
    templateUrl: "views/index.html",
    controller: "IndexController"
  }).when("/master", {
    templateUrl: "views/master.html",
    controller: "MasterController"
  }).when("/slave/new", {
    templateUrl: "views/slave/new.html",
    controller: "SlaveNewController"
  }).when("/slave/:slaveID", {
    templateUrl: "views/slave/desc.html",
    controller: "SlaveDescController"
  }).otherwise({
    redirectTo: "/"
  });
});
