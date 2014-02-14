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
  return socket.on("answer", function() {
    return socket.emit("answer");
  });
};
