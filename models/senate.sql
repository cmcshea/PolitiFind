DROP DATABASE IF EXISTS electionDB;

CREATE DATABASE electionDB;

USE electionDB;


CREATE TABLE senate (
  id INT NOT NULL AUTO_INCREMENT,
 year YEAR,
 states VARCHAR(45) NULL,
 state_po VARCHAR(45) NULL,
 state_fips INT,
 state_cen INT,
 state_ic  INT,
 office VARCHAR(45) NULL,
 district VARCHAR(45) NULL,
 stage VARCHAR(45) NULL,
 special  BOOLEAN,
 candidate VARCHAR(45) NULL,
 party VARCHAR(45) NULL,
 writein BOOLEAN,
 mode VARCHAR(45) NULL,
 candidatevotes  INT,
 totalvotes INT,
 unofficial BOOLEAN,
 version_ID INT,
PRIMARY KEY (id)
);

INSERT INTO senate (year, states, state_po, state_fips, state_cen, state_ic, office, district, stage, special, candidate, party, writein, mode, candidatevotes, totalvotes, unofficial, version_ID) 
VALUES (1976,"Arizona","AZ",4,86,61,"US Senate","statewide","gen",FALSE,"Sam Steiger","republican",FALSE,"total",321236,741210,FALSE,20171011)
