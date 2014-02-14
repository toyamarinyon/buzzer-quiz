"use strict";
module.exports = function(socket) {
  return socket.on("awesome:handler", function(data) {
    return console.log("" + data.name + " recervied!");
  });
};
