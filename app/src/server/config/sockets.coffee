"use strict"

ranking = do ->
  currentRank = 0

  answer = ->
    tmp = 0

    while tmp < currentRank
      tmp++

    currentRank = ++tmp

  ranking =
    answer: answer


    

module.exports = (socket) ->

  socket.on "join", (data) ->
    socket.join(data.masterCode)
    socket.broadcast.to(data.masterCode).emit "join"

  socket.on "leave", (data) ->
    socket.leave(data.masterCode)
    socket.broadcast.to(data.masterCode).emit "leave"

  socket.on "answer", ->
    # console.log ranking.answer()
    socket.emit "answer"
