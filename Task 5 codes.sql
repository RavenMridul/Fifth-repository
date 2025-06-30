Create database apple_music_db ;
Use apple_music_db ; 

CREATE TABLE users (
    User_id INT PRIMARY KEY,
    Username VARCHAR(200),
    email VARCHAR(200),
    country VARCHAR(200)
);

CREATE TABLE artists (
    artist_id INT PRIMARY KEY,
    name VARCHAR(50),
    country VARCHAR(50),
    debut_year INT
);

SELECT 
    *
FROM
    artists
        RIGHT JOIN
    albums ON artists.artist_id = albums.artist_id;

Select * from artists ; 


CREATE TABLE albums (
    album_id INT PRIMARY KEY,
    title VARCHAR(200),
    release_date DATE,
    artist_id INT,
    FOREIGN KEY (artist_id)
        REFERENCES artists (artist_id)
);


SELECT 
    *
FROM
    artists
        JOIN
    albums ON artists.artist_id = albums.artist_id
        INNER JOIN
    songs ON songs.album_id = albums.album_id;


CREATE TABLE songs (
    song_id INT PRIMARY KEY,
    title VARCHAR(200),
    duration INT,
    genre VARCHAR(50),
    album_id INT,
    FOREIGN KEY (album_id)
        REFERENCES albums (album_id)
);

SELECT 
    *
FROM
    artists
        JOIN
    albums ON artists.artist_id = albums.artist_id; 

SELECT 
    *
FROM
    albums
        LEFT JOIN
    songs ON albums.album_id = songs.album_id; 
