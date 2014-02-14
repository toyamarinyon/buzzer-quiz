"use strict";
var app;

app = angular.module("buzzer-quiz", ['ngRoute']).config(function($routeProvider) {
  return $routeProvider.when("/", {
    templateUrl: "views/index.html",
    controller: "IndexController"
  }).otherwise("/", {
    redirectTo: "/"
  });
});
