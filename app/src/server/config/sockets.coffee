"use strict"

module.exports = (socket) ->

  socket.on "awesome:handler", (data) ->
    console.log "#{data.name} recervied!"
