CREATE DATABASE project_ban_hang;
USE project_ban_hang;

CREATE TABLE role(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nameRole VARCHAR(15)
);

CREATE TABLE catalog(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nameCatalog VARCHAR(50),
    starDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status BIT
);

CREATE TABLE product(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nameProduct VARCHAR(50),
    status BIT DEFAULT 1,
    img TEXT,
    listIMG TEXT,
    content VARCHAR(255),
    quantityInStock INT,
    sex BIT,
    idCatalog INT,
    FOREIGN KEY (idCatalog) REFERENCES catalog(id)
);

CREATE TABLE user(
    id INT PRIMARY KEY AUTO_INCREMENT,
    fullName VARCHAR(50),
    useName VARCHAR(20),
    password VARCHAR(20),
    email VARCHAR(70),
    phoneNumber VARCHAR(20),
    address VARCHAR(255),
    avantar TEXT,
    idRole INT,
    status BIT,
    FOREIGN KEY (idRole) REFERENCES role(id)
);

CREATE TABLE Cart(
    id INT PRIMARY KEY AUTO_INCREMENT,
    quantity INT DEFAULT 1,
    imgAvantar TEXT,
	nameProduct VARCHAR(50),
    size VARCHAR(15),
    idProduct INT,
    status BIT DEFAULT 1,
    FOREIGN KEY (idProduct) REFERENCES product(id)
);

CREATE TABLE cartdetail(
    id INT PRIMARY KEY AUTO_INCREMENT,
    total double not null,
	quantity INT,
    nameProduct VARCHAR(50),
    idUser INT,
    idCart INT,
    FOREIGN KEY (idUser) REFERENCES user(id),
    FOREIGN KEY (idCart) REFERENCES Cart(id)
);


-- DROP DATABASE `project_ban_hang`;
