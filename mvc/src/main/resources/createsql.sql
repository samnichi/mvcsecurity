CREATE DATABASE `sample_web` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE  TABLE users (
  username VARCHAR(45) NOT NULL ,
  password VARCHAR(45) NOT NULL ,
  enabled TINYINT NOT NULL DEFAULT 1 ,
  PRIMARY KEY (username));
  
  CREATE TABLE user_roles (
  user_role_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  role varchar(45) NOT NULL,
  PRIMARY KEY (user_role_id),
  UNIQUE KEY uni_username_role (role,username),
  KEY fk_username_idx (username),
  CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES users (username));
  
  INSERT INTO users(username,password,enabled)
VALUES ('mkyong','123456', true);
INSERT INTO users(username,password,enabled)
VALUES ('alex','123456', true);
INSERT INTO users(username,password,enabled)
VALUES ('alex2','123456', true);

INSERT INTO user_roles (username, role)
VALUES ('mkyong', 'ROLE_MANAGER');
INSERT INTO user_roles (username, role)
VALUES ('mkyong', 'ROLE_SUPERVISOR');
INSERT INTO user_roles (username, role)
VALUES ('alex', 'ROLE_OPERATOR');
INSERT INTO user_roles (username, role)
VALUES ('alex2', 'ROLE_ADMIN');

INSERT INTO user_roles (username, role)
VALUES ('mkyong', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('alex', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('alex2', 'ROLE_USER');
