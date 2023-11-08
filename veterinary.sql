CREATE DATABASE veterinary;


CREATE TABLE owners(
	ownerid INT PRIMARY KEY,
	ofirstname VARCHAR(50) NOT NULL,
	olastname VARCHAR(50) NOT NULL,
	address VARCHAR(50) NOT NULL,
	phone VARCHAR(15) NOT NULL,
	email VARCHAR(100) NOT NULL
);

CREATE TABLE appointments(
	appointid INT PRIMARY KEY,
	appointdate DATE,
	reason VARCHAR(255) NOT NULL,
	animalid INT,
	foreign key (animalid) references animals(animalid)
);