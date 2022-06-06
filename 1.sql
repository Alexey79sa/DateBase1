CREATE TABLE IF NOT EXISTS singers (
    id_artist SERIAL PRIMARY key, 
    name_singer VARCHAR (50) NOT NULL unique,
    id_genre INTEGER NOT NULL unique
);
CREATE TABLE IF NOT EXISTS albums (
    id_album SERIAL PRIMARY key,
    name_album VARCHAR (100) NOT NULL, 
    year VARCHAR (4) NOT NULL,
    id_artist INTEGER REFERENCES singers (id_artist) NOT NULL
);
CREATE TABLE IF NOT EXISTS tracks (
    id_track SERIAL PRIMARY key,
    name_track VARCHAR (100) NOT NULL,
    time VARCHAR (10) NOT NULL
);