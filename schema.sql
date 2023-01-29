CREATE DATABASE doingsdone
    DEFAULT CHARACTER SET utf8mb4
    DEFAULT COLLATE utf8mb4_unicode_ci;

USE doingsdone;

CREATE TABLE users
(
    id       INT AUTO_INCREMENT PRIMARY KEY,
    reg_dt   DATETIME,
    email    VARCHAR(128) NOT NULL UNIQUE,
    name     VARCHAR(128),
    password CHAR(64)
);

CREATE TABLE projects
(
    id      INT AUTO_INCREMENT PRIMARY KEY,
    name    VARCHAR(128),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE tasks
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    creation_dt DATETIME,
    status      BOOL DEFAULT 0,
    name        VARCHAR(128),
    file        VARCHAR(128),
    date        DATE,
    user_id     INT,
    project_id  INT,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (project_id) REFERENCES projects (id)
);