"use strict";
var ranking;

ranking = (function() {
  var answer, currentRank;
  currentRank = 0;
  answer = function() {
    var tmp;
    tmp = 0;
    while (tmp < currentRank) {
      tmp++;
    }
    return currentRank = ++tmp;
  };
  return ranking = {
    answer: answer
  };
})();

module.exports = function(socket) {
  socket.on("join", function(data) {
    socket.join(data.masterCode);
    return socket.broadcast.to(data.masterCode).emit("join");
  });
  socket.on("leave", function(data) {
    socket.leave(data.masterCode);
    return socket.broadcast.to(data.masterCode).emit("leave");
  });
  return socket.on("answer", function() {
    return socket.emit("answer");
  });
};
