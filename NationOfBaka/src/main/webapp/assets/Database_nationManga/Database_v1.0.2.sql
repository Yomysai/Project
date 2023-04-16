-- Création de la base de données "nationOfmanga" si elle n'existe pas
DROP DATABASE IF EXISTS nationOfmanga;
CREATE DATABASE IF NOT EXISTS nationOfmanga;
USE nationOfmanga;
select *FROM user where user.email=? and user.isActive=1;

SELECT * FROM user  JOIN role ON user.role_id = role.id WHERE user.email = ? AND user.isActive = 1;
select *, user.id as userId from user inner join role on user.role_id=role.id where user.email=? and user.isActive=1;
select * from user JOIN role on user.role_id= role.id where role = ?and user.isActive = 1 ;


-- Création de la table "User"
DROP TABLE IF EXISTS User;
CREATE TABLE User (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nickname VARCHAR(100) NOT NULL,
email VARCHAR(150) NOT NULL,
password VARCHAR(100) NOT NULL,
role_id INT,
isActive BOOLEAN DEFAULT true
);

-- Création de la table "categorie"
DROP TABLE IF EXISTS categorie;
CREATE TABLE categorie (
id INT PRIMARY KEY AUTO_INCREMENT,
nom VARCHAR(50) NOT NULL
);

-- Création de la table "book"
DROP TABLE IF EXISTS book;
CREATE TABLE book (
id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100) NOT NULL,
auteur VARCHAR(100) NOT NULL,
annee_publication INT,
category_id INT,
original_title VARCHAR(255),
origin VARCHAR(255),
status VARCHAR(50),
release_date DATE,
type VARCHAR(100),
genres VARCHAR(100),
author VARCHAR(150),
artist VARCHAR(150),
synopsis TEXT NOT NULL,
cover_image VARCHAR(255),
created_at DATETIME
);

-- Création de la table "comments"
DROP TABLE IF EXISTS comments;
CREATE TABLE comments (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
book_id INT,
user_id INT,
contenu TEXT NOT NULL,
dateCom DATETIME,
created_at DATETIME,
role_id INT
);

-- Création de la table "subcategory"
DROP TABLE IF EXISTS subcategory;
CREATE TABLE subcategory (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
name VARCHAR(100),
category_id INT

);

-- Création de la table role
CREATE TABLE role (
id INT PRIMARY KEY,
role VARCHAR(255)
);

-- Insertion des données dans la table role
INSERT INTO role (id, role) VALUES
(1, 'Client'),
(2, 'Vendeur'),
(3, 'Admin');

-- Création de la table "lecture"
DROP TABLE IF EXISTS lecture;
CREATE TABLE lecture (
id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT,
role_id INT,
book_id INT,
page_number INT,
last_read_at DATETIME,
created_at DATETIME
);
-- Création de la table image
DROP TABLE IF EXISTS image;
CREATE TABLE image (
  id INT PRIMARY KEY AUTO_INCREMENT,
  image_url VARCHAR(255) NOT NULL,
  id_livre INT
);
-- Création de la table "last_login_event"
DROP TABLE IF EXISTS last_login_event;
CREATE TABLE last_login_event (
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  login_time DATETIME,
  registrationDate DATE
);

-- Création de la vue "last_login_view"
DROP VIEW IF EXISTS last_login_view;
CREATE VIEW last_login_view AS
SELECT u.id AS user_id, u.nickname, l.login_time
FROM User u
JOIN last_login_event l ON u.id = l.user_id
WHERE l.login_time = (
  SELECT MAX(login_time)
  FROM last_login_event
  WHERE user_id = u.id
);


-- Alter table pour ajouter la contrainte FOREIGN KEY avec ON DELETE SET NULL
ALTER TABLE image ADD FOREIGN KEY (id_livre) REFERENCES book(id) ON DELETE SET NULL;

-- Ajout de la contrainte FOREIGN KEY avec ON DELETE SET NULL dans la table User
ALTER TABLE User ADD FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE SET NULL;
-- Ajout de la contrainte FOREIGN KEY avec ON DELETE SET NULL dans la table book
ALTER TABLE book ADD FOREIGN KEY (category_id) REFERENCES categorie(id) ON DELETE SET NULL;
-- Ajout de la contrainte FOREIGN KEY avec ON DELETE SET NULL dans la table comments
ALTER TABLE comments ADD FOREIGN KEY (book_id) REFERENCES book(id) ON DELETE SET NULL;
ALTER TABLE comments ADD FOREIGN KEY (user_id) REFERENCES User(id) ON DELETE SET NULL;
ALTER TABLE comments ADD FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE SET NULL;
-- Ajout de la contrainte FOREIGN KEY avec ON DELETE SET NULL dans la table lecture
ALTER TABLE lecture ADD FOREIGN KEY (user_id) REFERENCES User(id) ON DELETE SET NULL;
ALTER TABLE lecture ADD FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE SET NULL;
ALTER TABLE lecture ADD FOREIGN KEY (book_id) REFERENCES book(id) ON DELETE SET NULL;
-- Ajout de la contrainte FOREIGN KEY avec ON DELETE SET NULL dans la table last_login_event
ALTER TABLE last_login_event ADD FOREIGN KEY (user_id) REFERENCES User(id) ON DELETE SET NULL;
