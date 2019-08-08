DROP DATABASE IF EXISTS electionDB;

CREATE DATABASE electionDB;

USE electionDB;


CREATE TABLE president (
 id INT NOT NULL AUTO_INCREMENT,
 year year,
 states VARCHAR(45) NULL,
 state_po VARCHAR(45) NULL,
 state_fips INT,
 state_cen INT,
 state_ic  INT,
 office VARCHAR(45) NULL,
 candidate VARCHAR(45) NULL,
 party VARCHAR(45) NULL,
 writein BOOLEAN,
 candidatevotes  INT,
 totalvotes INT,
 version_ID INT,
 notes text,
PRIMARY KEY (id)
);



INSERT INTO president (year, states, state_po, state_fips, state_cen, state_ic, office, candidate, party, writein, candidatevotes, totalvotes, version_ID, notes) 
VALUES (1976,"Alabama","AL",1,63,41,"US President","Carter, Jimmy","democrat",FALSE,659170,1182850,20171015,NA)