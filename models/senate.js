module.exports = function(sequelize, DataTypes) {
  var house = sequelize.define("senate", {
    year: DataTypes.STRING,
    state: DataTypes.STRING,
    state_po: DataTypes.STRING,
    state_fips: DataTypes.INTEGER,
    state_cen: DataTypes.INTEGER,
    state_ic: DataTypes.INTEGER,
    office: DataTypes.STRING,
    district: DataTypes.STRING,
    stage: DataTypes.STRING,
    special: DataTypes.BOOLEAN,
    candidate: DataTypes.STRING,
    party: DataTypes.STRING,
    writein: DataTypes.BOOLEAN,
    mode: DataTypes.STRING,
    candidatevotes: DataTypes.INTEGER,
    totalvotes: DataTypes.INTEGER,
    unofficial: DataTypes.STRING,
    version_Id: DataTypes.INTEGER
  });
  return house;
};
