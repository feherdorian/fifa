CREATE DATABASE fifa
	CHARACTER SET utf8
	COLLATE utf8_hungarian_ci;

CREATE TABLE fifa.players (
  id INT(11) NOT NULL AUTO_INCREMENT,
  Rating VARCHAR(2) NOT NULL,
  posID INT(2) NOT NULL,
  Nationality VARCHAR(5) NOT NULL,
  Club VARCHAR(30) NOT NULL,
  Name VARCHAR(50) NOT NULL,
  PAC INT(2) NOT NULL,
  SHO INT(2) NOT NULL,
  PAS INT(2) NOT NULL,
  DRI INT(2) NOT NULL,
  DEF INT(2) NOT NULL,
  PHY INT(2) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB;

CREATE TABLE fifa.posts (
  id INT(11) NOT NULL AUTO_INCREMENT,
  Positions VARCHAR(3) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB;

insert posts
  (Positions)
  values
  ('GK'), ('CB'), ('RB'), ('LB'), ('RWB'), ('LWB'), ('CM'), ('CDM'), ('CAM'), ('RM'), ('LM'), ('ST'), ('CF'), ('RF'), ('LF'), ('RW'), ('LW');


insert players
  (Rating, posID, Nationality, Club, Name, PAC, SHO, PAS, DRI, DEF, PHY)
  values
  (93, 13, 'HUN', 'ICON', 'PUSKÁS', 91, 96, 91, 92, 46, 76), 
  (84, 10, 'HUN', 'RB Leipzeg', 'SZOBOSZLAI', 83, 85, 86, 86, 40, 70);

select ps.Name, pts.Positions, ps.Nationality, ps.Club, ps.PAC, ps.SHO, ps.PAS, ps.DRI, ps.DEF, ps.PHY, ps.Rating from posts pts
  inner join players ps on pts.id = ps.posID;