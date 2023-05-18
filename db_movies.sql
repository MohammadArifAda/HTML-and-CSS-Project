USE db_movies;



/*CREATING FIRST TABLE*/
CREATE TABLE tbl_actors (
actors_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
actors_fname VARCHAR (50) NOT NULL,
actors_lname VARCHAR (50) NOT NULL,
actors_movie VARCHAR (50) NOT NULL
);
SELECT * FROM tbl_actors;



/*DATA INSERTING INTO tbl_actors*/
INSERT INTO tbl_actors
	(actors_fname, actors_lname, actors_movie)
	VALUES
	('Tom', 'Cruise', 'Dune'),
	('Leonardo', 'DiCaprio', 'Black Widow'),
	('Morgan', 'Freeman', 'The Batman'),
	('Angliena', 'Jolie', 'Nope'),
	('Denzel', 'Washington', 'The Northman');
SELECT * FROM tbl_actors;



/*CREATING SECOND TABLE*/
CREATE TABLE tbl_directors (
directors_id INT NOT NULL PRIMARY KEY IDENTITY (100,1),
directors_fname VARCHAR (50) NOT NULL,
directors_lname VARCHAR (50) NOT NULL,
directors_movie VARCHAR (50) NOT NULL,
actors_id INT FOREIGN KEY REFERENCES tbl_actors(actors_id)
);
SELECT * FROM tbl_directors;



/*DATA INSERTING INTO tbl_directors*/
INSERT INTO tbl_directors
(directors_fname, directors_lname, directors_movie, actors_id)
VALUES
('Martin', 'Scorsese', 'Dune', 1),
('David', 'Fincher', 'Black Widow', 2),
('James', 'Cameron', 'Flash', 3),
('Ridley', 'Scott', 'Nighmare', 4),
('Christopher', 'Nolan', 'Nope', 5);
SELECT * FROM tbl_directors;



/*QUERY*/
SELECT tbl_actors.actors_id, tbl_directors.directors_movie
FROM tbl_actors
INNER JOIN tbl_directors ON tbl_actors.directors_id = tbl_directors.directors_id;
