
DROP DATABASE IF EXISTS nationOfmanga;
CREATE DATABASE IF NOT EXISTS nationOfmanga;
USE nationOfmanga;

DROP TABLE IF EXISTS User;
CREATE TABLE User (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom VARCHAR(100) NOT NULL,
nickname VARCHAR(100) NOT NULL,
email VARCHAR(150) NOT NULL,
password VARCHAR(100) NOT NULL,
created_at DATETIME,
last_login_at DATETIME);

-- voir ppur la v2
-- ,adresse VARCHAR(255),
-- cp INT,
-- ville VARCHAR(100),
-- tel VARCHAR(15),

-- Création de la table "categorie"
DROP TABLE IF EXISTS categorie;
CREATE TABLE categorie (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL
);

-- Création de la table "livre"
DROP TABLE IF EXISTS book;
CREATE TABLE book (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  auteur VARCHAR(100) NOT NULL,
  annee_publication INT,
  id_categorie INT,
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
  created_at DATETIME,
  category_id INT
);
-- Création de la table "comments"
DROP TABLE IF EXISTS comments;
CREATE TABLE comments (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
book_id INT,
user_id INT,
contenu TEXT NOT NULL,
dateCom DATETIME,
created_at DATETIME
);
-- Création de la table "subcategory"
DROP TABLE IF EXISTS subcategory;
CREATE TABLE subcategory (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
name VARCHAR(100),
category_id INT
);
-- Création de la table "role"
DROP TABLE IF EXISTS role;
CREATE TABLE role (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL
);


-- CREATION DES FOREIGN KEYS --
ALTER TABLE book ADD CONSTRAINT FK_category_id FOREIGN KEY (category_id) REFERENCES categorie(id) ON DELETE SET NULL;
ALTER TABLE subcategory ADD CONSTRAINT FK_subcategory_id FOREIGN KEY (category_id) REFERENCES categorie(id) ON DELETE SET NULL;
ALTER TABLE comments ADD CONSTRAINT FK_comments_book_id FOREIGN KEY (book_id) REFERENCES book(id) ON DELETE SET NULL;
ALTER TABLE comments ADD CONSTRAINT FK_comments_user_id FOREIGN KEY (user_id) REFERENCES User(id) ON DELETE SET NULL;

-- Ajout de la relation "role_id" dans la table "User"
ALTER TABLE User ADD COLUMN role_id INT;
ALTER TABLE User ADD CONSTRAINT FK_user_role_id FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE SET NULL;

-- Ajout de la relation "role_id" dans la table "comments"
ALTER TABLE comments ADD COLUMN role_id INT;
ALTER TABLE comments ADD CONSTRAINT FK_comments_role_id FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE SET NULL;