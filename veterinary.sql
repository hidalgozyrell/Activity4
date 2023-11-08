CREATE DATABASE veterinary;


CREATE TABLE owners(
	ownerid INT PRIMARY KEY,
	ofirstname VARCHAR(50) NOT NULL,
	olastname VARCHAR(50) NOT NULL,
	address VARCHAR(50) NOT NULL,
	phone VARCHAR(15) NOT NULL,
	email VARCHAR(100) NOT NULL
);

-- Create the Animals table
CREATE TABLE Animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES Owners(ownerid)
);