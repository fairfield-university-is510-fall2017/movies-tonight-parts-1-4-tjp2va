CREATE DATABASE `MoviesTonight`;

USE `MoviesTonight`;

CREATE TABLE THEATER (
TID int(11) NOT NULL auto_increment,
TName varchar(100) default NULL,
Location varchar(255) default NULL,
Phone int(10) default NULL,
PRIMARY KEY (TID)
);

CREATE TABLE MOVIES (
`MID` int(11) NOT NULL auto_increment,
MTitle varchar(255) default NULL,
Rating varchar(255) default NULL,
PRIMARY KEY (`MID`)
);

CREATE TABLE ARTIST (
AID int(11) NOT NULL auto_increment,
MTitle varchar(255) default NULL,
Rating varchar(255) default NULL,
PRIMARY KEY (AID)
);

CREATE TABLE SHOWTIME (
SID int(11) NOT NULL auto_increment,
`MID` int(11) default NULL,
TID int(11) default NULL,
Showtime TIME default NULL,
PRIMARY KEY (SID)
);

CREATE TABLE CREDITS (
CID int(11) NOT NULL auto_increment,
`MID` int(11) default NULL,
AID int(11) default NULL,
CCode int(1) default NULL,
PRIMARY KEY (CID)
);

ALTER TABLE `SHOWTIME`
	ADD FOREIGN KEY Show_Theater (`TID`)
    REFERENCES `THEATER` (`TID`);

ALTER TABLE `SHOWTIME`
	ADD FOREIGN KEY Show_MOVIES (`MID`)
    REFERENCES `MOVIES` (`MID`);
    
ALTER TABLE `CREDITS`
	ADD FOREIGN KEY CREDITS_MOVIES (`MID`)
    REFERENCES `MOVIES` (`MID`);
    
ALTER TABLE `CREDITS`
	ADD FOREIGN KEY CREDITS_ARTIST (`AID`)
    REFERENCES `ARTIST` (`AID`);

show tables;
describe movies;
describe credits;
describe theater;
describe artist;
describe ShowTime;