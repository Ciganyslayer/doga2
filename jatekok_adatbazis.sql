DROP DATABASE IF EXISTS jatekadatbazis;
CREATE DATABASE jatekadatbazis CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci,;
USE jatekadatbazis;
CREATE TABLE jatekok (
    azonosito INT AUTO_INCREMENT PRIMARY KEY,
    cim VARCHAR(200) NOT NULL UNIQUE,
    kiado VARCHAR(100),
    megjelenesi_eve YEAR,
    jatekido INT CHECK (jatekido BETWEEN 1 AND 500),
    korhatar ENUM('3', '7', '12', '16', '18'),
    ertekeles FLOAT DEFAULT 7.0
);
CREATE TABLE fejlesztok (
    azonosito INT AUTO_INCREMENT UNIQUE NOT NULL,
    nev VARCHAR(120) NOT NULL,
    alapitas_datuma DATE,
    szekhely VARCHAR(60) DEFAULT 'magyar',
    aktiv ENUM('igen', 'nem') DEFAULT 'igen',
    regisztracio_idopontja TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
DESCRIBE jatekok;
SHOW CREATE TABLE fejlesztok;



