DROP DATABASE IF EXISTS chatnrun;

CREATE DATABASE chatnrun;

USE chatnrun;

CREATE TABLE users (
    userid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(500) NOT NULL,
    datecreated DATETIME NOT NULL
);

CREATE TABLE tags (
    tagid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tagname VARCHAR(500) NOT NULL,
    tagcatagory VARCHAR(5000) NOT NULL
);

CREATE TABLE userstags (
    usersid INT NOT NULL,
    tagid INT NOT NULL,
    FOREIGN KEY (tagid) REFERENCES tags(tagid),
    FOREIGN KEY (usersid) REFERENCES users(userid)
);

INSERT INTO tags VALUES ( null, 'League Of Legend', 'Game');
INSERT INTO tags VALUES ( null, 'OverWatch', 'Game');
INSERT INTO tags VALUES ( null, 'Counter Strike', 'Game');
INSERT INTO tags VALUES ( null, 'HearthStone', 'Game');
INSERT INTO tags VALUES ( null, 'Dota II', 'Game');


INSERT INTO users VALUES ( null, 'Derek', '2017-4-25 00:00:00');
INSERT INTO users VALUES ( null, 'Condor', '2017-4-25 00:00:00');

INSERT INTO userstags VALUES ( 1, 1 );
INSERT INTO userstags VALUES ( 1, 2 );
INSERT INTO userstags VALUES ( 2, 2 );
INSERT INTO userstags VALUES ( 2, 3 );