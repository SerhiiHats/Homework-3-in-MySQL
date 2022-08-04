CREATE DATABASE Arms;

USE Arms;

CREATE TABLE Soldat (
id_soldat INT AUTO_INCREMENT,
name_soldat VARCHAR(50) NOT NULL,
ksiva_soldat VARCHAR(50) NOT NULL DEFAULT '',
vzvod_soldat VARCHAR(50) NOT NULL,
PRIMARY KEY (id_soldat));

INSERT INTO Arms.soldat (name_soldat, ksiva_soldat, vzvod_soldat) VALUE ('Петров В.А.','оф.205','222');
INSERT INTO Arms.soldat (name_soldat, ksiva_soldat, vzvod_soldat) VALUE ('Лодарев П.С.','оф.221','232');
INSERT INTO Arms.soldat (name_soldat, ksiva_soldat, vzvod_soldat) VALUE ('Леонтьев К.В.','оф.201','212');
INSERT INTO Arms.soldat (name_soldat, vzvod_soldat) VALUE ('Духов','200');

UPDATE Arms.soldat SET name_soldat = 'Духов Р.М.' WHERE id_soldat = '4';

SELECT * FROM arms.soldat;

CREATE TABLE Chief_of_arms (
id_chief INT AUTO_INCREMENT,
name_chief VARCHAR(50) NOT NULL,
rang_chief VARCHAR(50) NOT NULL,
PRIMARY KEY (id_chief));

INSERT INTO Arms.Chief_of_arms (name_chief, rang_chief) VALUE ('Буров О.С.', 'майор');
INSERT INTO Arms.Chief_of_arms (name_chief, rang_chief) VALUE ('Рыбаков Н.Г.', 'майор');
INSERT INTO Arms.Chief_of_arms (name_chief, rang_chief) VALUE ('Деребанов В.Я.', 'подполковник');

SELECT * FROM Arms.Chief_of_arms;

CREATE TABLE Weapon (
id_weapon INT AUTO_INCREMENT,
name_weapon VARCHAR(50) NOT NULL,
PRIMARY KEY (id_weapon));

INSERT INTO Arms.weapon (name_weapon) VALUE ('АК-47');
INSERT INTO Arms.weapon (name_weapon) VALUE ('Глок20');

SELECT * FROM arms.weapon;

CREATE TABLE Soldat_weapon (
id_soldat_weapon INT AUTO_INCREMENT,
id_soldat INT NOT NULL,
id_weapon INT NOT NULL,
id_chief INT NOT NULL,
PRIMARY KEY(id_soldat_weapon),
FOREIGN KEY(id_soldat) REFERENCES arms.soldat (id_soldat),
FOREIGN KEY(id_weapon) REFERENCES arms.weapon (id_weapon),
FOREIGN KEY(id_chief) REFERENCES arms.chief_of_arms (id_chief));

INSERT INTO Arms.soldat_weapon (id_soldat, id_weapon, id_chief) VALUE (1, 1, 1);
INSERT INTO Arms.soldat_weapon (id_soldat, id_weapon, id_chief) VALUE (1, 2, 2);
INSERT INTO Arms.soldat_weapon (id_soldat, id_weapon, id_chief) VALUE (2, 1, 3);
INSERT INTO Arms.soldat_weapon (id_soldat, id_weapon, id_chief) VALUE (2, 2, 2);
INSERT INTO Arms.soldat_weapon (id_soldat, id_weapon, id_chief) VALUE (3, 1, 1);
INSERT INTO Arms.soldat_weapon (id_soldat, id_weapon, id_chief) VALUE (3, 2, 2);
INSERT INTO Arms.soldat_weapon (id_soldat, id_weapon, id_chief) VALUE (4, 1, 1);

SELECT * FROM Arms.soldat_weapon;

SELECT name_weapon FROM arms.weapon WHERE id_weapon IN (SELECT id_weapon FROM Arms.soldat_weapon WHERE id_soldat = (SELECT id_soldat FROM arms.soldat WHERE name_soldat = 'Леонтьев К.В.'));

SELECT name_weapon FROM arms.weapon WHERE id_weapon IN (SELECT id_weapon FROM Arms.soldat_weapon WHERE id_soldat = (SELECT id_soldat FROM arms.soldat WHERE name_soldat = 'Духов Р.М.'));

SELECT name_weapon FROM arms.weapon WHERE id_weapon IN (SELECT id_weapon FROM Arms.soldat_weapon WHERE id_soldat = (SELECT id_soldat FROM arms.soldat WHERE name_soldat = 'Петров В.А.'));

DROP TABLE arms.soldat_weapon;
DROP TABLE arms.weapon;
DROP TABLE arms.soldat;
DROP TABLE arms.chief_of_arms;



