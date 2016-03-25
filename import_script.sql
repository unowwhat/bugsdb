CREATE DATABASE IF NOT EXISTS bugsdb;

USE bugsdb;

-- таблица пользователей --
CREATE TABLE IF NOT EXISTS users  ( 
    login          	varchar(50) NOT NULL,
	firstname   	varchar(100) NOT NULL,
	lastname    	varchar(100) NOT NULL,
	password    	varchar(200) NOT NULL,
	PRIMARY KEY  (`login`) 
	);
-- таблица ошибок --
CREATE TABLE IF NOT EXISTS bugs   (
	id          	int AUTO_INCREMENT NOT NULL,
    inputDate       date,
	name		   	varchar(100) NOT NULL,
	description    	varchar(1000) NOT NULL,
    user            varchar(50) NOT NULL,
    status          varchar(20) NOT NULL,
	urgency     	varchar(20) NOT NULL,
    criticality     varchar(20) NOT NULL,
	PRIMARY KEY  (`id`) 
);

-- история ошибок --
CREATE TABLE IF NOT EXISTS history  (
	id				int,
    editDate        date,
    action			varchar(20),
	comment			varchar(1000),
    user			varchar(50)
);