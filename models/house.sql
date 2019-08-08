DROP DATABASE IF EXISTS electionDB;

CREATE DATABASE electionDB;

USE electionDB;


CREATE TABLE house (
 id INT NOT NULL AUTO_INCREMENT,
 year DATE,
 states VARCHAR(45) NULL,
 state_po VARCHAR(45) NULL,
 state_fips INT,
 state_cen INT,
 state_ic  INT,
 office VARCHAR(45) NULL,
 district VARCHAR(45) NULL,
 stage VARCHAR(45) NULL,
 runoff BOOLEAN,
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

INSERT INTO house (year, states, state_po, state_fips, state_cen, state_ic, office, district, stage, runoff, special, candidate, party, writein, mode, candidatevotes, totalvotes, unofficial, version_ID) 
VALUES (1976,"Alabama","AL",1,63,41,"US House",1,"gen",FALSE,FALSE,"Bill Davenport","democrat",FALSE,"total",58906,157170,FALSE,20171005)