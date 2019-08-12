var db = require("../models");

module.exports = function(app) {
  // Get all senate
  app.get("/senate", function(req, res) {
    db.senate.findAll({}).then(function(electiondb) {
      res.json(electiondb);
    });
  });

  // Get all books of a specific state
  app.get("/senate/state/:state", function(req, res) {
    db.senate
      .findAll({
        where: {
          state: req.params.state
        }
      })
      .then(function(electiondb) {
        res.json(electiondb.senate);
      });
  });

  // Get all house
  app.get("/house", function(req, res) {
    db.house.findAll({}).then(function(electiondb) {
      res.json(electiondb);
    });
  });

  // Get all president
  app.get("/president", function(req, res) {
    db.president.findAll({}).then(function(electiondb) {
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
