CREATE TABLE tv_serie (
    serie_id INT PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(50)
   
);


 CREATE TABLE actors (
     actor_id INT PRIMARY KEY,
     name VARCHAR(50)
 
 );

 CREATE TABLE directors (
     director_id INT PRIMARY KEY,
     name VARCHAR(50)

 );

 CREATE TABLE episodes (
     episode_id INT PRIMARY KEY,
     title VARCHAR(100),
     serie_id INT,
     director_id INT,
    FOREIGN KEY (serie_id) REFERENCES tv_serie(serie_id),
    FOREIGN KEY (director_id) REFERENCES director(director_id)

 );