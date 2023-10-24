DROP DATABASE IF EXISTS songdb;

CREATE DATABASE IF NOT EXISTS songdb
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;
    
USE songdb;

CREATE TABLE song(
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255),
    singer VARCHAR(100),
    lyrics TEXT NULL, #주석
    PRIMARY KEY(id)
)   ENGINE=INNODB
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;
    
DESC song;

ALTER TABLE song ADD rating INT;
DESC song;

ALTER TABLE song MODIFY COLUMN title VARCHAR(255) NOT NULL;
DESC song;

INSERT INTO song VALUES (NULL, 'Dynamite', '방탄소년단', '2020', 5);
INSERT INTO song VALUES (NULL, 'Lovesick Girls', '블랙핑크', '2020', 5);
INSERT INTO song VALUES (NULL, 'How You Like That', '블랙핑크', '2020', 5);
INSERT INTO song VALUES (NULL, 'Gangnam Style', '싸이', '2012', 5);
INSERT INTO song VALUES (NULL, 'Rollin''', '브레이브걸스', '2017', 5);
INSERT INTO song VALUES (NULL, 'I''m Not Cool', '현아', '2021', 5);
INSERT INTO song VALUES (NULL, 'Celebrity', '아이유', '2021', 5);
INSERT INTO song VALUES (NULL, 'Don''t Call Me', '샤이니', '2021', 5);
INSERT INTO song VALUES (NULL, 'Dun Dun Dance', '오마이걸', '2021', 5);
INSERT INTO song VALUES (NULL, 'On The Ground', '로제', '2021', 5);
SELECT * FROM song;

#week1 -------------------

CREATE TABLE playlist (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
)   ENGINE = InnoDB
    DEFAULT CHARACTER SET utf8 
    DEFAULT COLLATE utf8_general_ci;
  
CREATE TABLE listsong (
    listid INT NOT NULL,
    songid INT NOT NULL,
    PRIMARY KEY(listid, songid),
    FOREIGN KEY(listid) REFERENCES playlist(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
    FOREIGN KEY(songid) REFERENCES song(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
    INDEX(listid)
)   ENGINE = InnoDB
    DEFAULT CHARACTER SET utf8 
    DEFAULT COLLATE utf8_general_ci;

SHOW TABLES;
