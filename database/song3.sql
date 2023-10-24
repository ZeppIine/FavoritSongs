DROP DATABASE IF EXISTS songdb;

CREATE DATABASE IF NOT EXISTS songdb 
  DEFAULT CHARACTER SET utf8 
  DEFAULT COLLATE utf8_general_ci;

USE songdb;

CREATE TABLE singer (
  singerid INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
  PRIMARY KEY(singerid)
) ENGINE = InnoDB
  DEFAULT CHARACTER SET utf8 
  DEFAULT COLLATE utf8_general_ci;

CREATE TABLE song4j (
  songid INT NOT NULL AUTO_INCREMENT,
	title VARCHAR(255) NOT NULL,
  singerid INT,
  PRIMARY KEY(songid),
  FOREIGN KEY(singerid) REFERENCES singer(singerid)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARACTER SET utf8 
  DEFAULT COLLATE utf8_general_ci;

INSERT INTO singer VALUES
  (null, "유재하"),
  (null, "이문세"),
  (null, "김광석");
 
INSERT INTO song4j VALUES
  (null, "내 마음에 비친 내 모습", 1),
  (null, "우울한 편지", 1),
  (null, "그대와 영원히", 2),
  (null, "소녀", 2),
  (null, "Dynamite", NULL);

SELECT * FROM singer;
SELECT * FROM song4j;

SELECT * FROM song4j, singer;
SELECT * FROM song4j JOIN singer;
SELECT * FROM song4j CROSS JOIN singer;

SELECT * FROM song4j JOIN singer ON song4j.singerid = singer.singerid;

SELECT * FROM song4j JOIN singer USING(singerid);

SELECT * FROM song4j NATURAL JOIN singer;

SELECT * FROM song4j LEFT JOIN singer ON song4j.singerid = singer.singerid;

SELECT * FROM song4j RIGHT JOIN singer ON song4j.singerid = singer.singerid;
