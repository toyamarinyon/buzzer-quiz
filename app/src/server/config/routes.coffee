"use strict"

module.exports = (app) ->

  # root
  app.get "/master/new", (req, res) ->
    res.send "Hello World"
