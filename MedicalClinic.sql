CREATE DATABASE MedicalClinic;

USE MedicalClinic;

CREATE TABLE Admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Email VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Surname VARCHAR(255) NOT NULL
);

CREATE TABLE User (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Surname VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Visits INT NOT NULL,
    Saved_Doctors_id INT,
    FOREIGN KEY (Saved_Doctors_id) REFERENCES Doctor(id)
);

CREATE TABLE Doctor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Surname VARCHAR(255) NOT NULL,
    Specialisation VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL
);

CREATE TABLE Visit (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Doctor_id INT,
    User_id INT,
    date DATETIME NOT NULL,
    FOREIGN KEY (Doctor_id) REFERENCES Doctor(id),
    FOREIGN KEY (User_id) REFERENCES User(id)
);
