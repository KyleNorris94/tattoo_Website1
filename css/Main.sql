-- create and select the database
DROP DATABASE IF EXISTS artist_db;
CREATE DATABASE artist_db;
USE artist_db;  -- MySQL command

-- create the tables

CREATE TABLE artists (
  artistID       	INT(11)    NOT NULL   AUTO_INCREMENT, 
  artistPicture    VARCHAR(255)  NOT NULL,
  artistFName      VARCHAR(255)   NOT NULL,
  artistLName      VARCHAR(255)  NOT NULL,
  artistBio        VARCHAR(255)  NOT NULL,
  PRIMARY KEY (artistID)
);

CREATE TABLE Profile_Creation (
  Customer_ID        	INT(11)    NOT NULL , 
  C_Fname  			VARCHAR(255) NOT NULL,
  C_Lname 			VARCHAR(255) NOT NULL,
  Selected_Artist  VARCHAR(255) NOT NULL,
  artistID       	INT(11)    NOT NULL, 
  APPT_Date			VARCHAR(255)   NOT NULL,
  PRIMARY KEY(Customer_ID)
);

CREATE TABLE Artist_Portfolio (
  Artist_Image   INT NOT NULL,
  artistID       	INT(11)    NOT NULL, 
  Image_text   VARCHAR(255)  NOT NULL,
  Des_tattoo			varchar(255)    NOT NULL, 
  Rate     	 INT(11)  NOT NULL,
  PRIMARY KEY (Artist_Image)
  );

CREATE TABLE IF NOT EXISTS `Submission` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
  	`First_Name` varchar(255) NOT NULL,
    `Last_Name` varchar(255) NOT NULL,
    `Artist` varchar(255) NOT NULL,
  	`email` varchar(100) NOT NULL,
	`Appt_Date` INT NOT NULL,
    `Rate` INT NOT NULL,
    
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
-- create the users and grant priveleges to those users
-- create the users and grant priveleges to those users

GRANT SELECT, INSERT, DELETE, UPDATE
ON artist_db.*
TO artist_db@localhost
IDENTIFIED BY 'pa55word';





