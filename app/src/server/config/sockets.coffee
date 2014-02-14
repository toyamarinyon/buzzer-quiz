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

  socket.on "answer", ->
    # console.log ranking.answer()
    socket.emit "answer"
