"use strict";
module.exports = function(app) {
  return app.get("/master/new", function(req, res) {
    return res.send("Hello World");
  });
};
