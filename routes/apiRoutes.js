var db = require("../models");

module.exports = function(app) {
  // Get all election
  app.get("/api/election", function(req, res) {
    db.Example.findAll({}).then(function(electiondb) {
      res.json(electiondb);
    });
  });

  // Create a new example
  app.post("/api/election", function(req, res) {
    db.Example.create(req.body).then(function(electiondb) {
      res.json(electiondb);
    });
  });

  // Delete an example by id
  app.delete("/api/election/:id", function(req, res) {
    db.Example.destroy({ where: { id: req.params.id } }).then(function(
      electiondb
    ) {
      res.json(electiondb);
    });
  });
};
