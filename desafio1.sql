DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE artists (
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  artist_name VARCHAR(255) NOT NULL,
) engine = InnoDB;

CREATE TABLE albums (
	album_id INT PRIMARY KEY AUTO_INCREMENT,
	album_title VARCHAR(255) NOT NULL,
	artist_id INT NOT NULL,
	release_year YEAR NOT NULL,
	FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

CREATE TABLE musics (
	music_id INT PRIMARY KEY AUTO_INCREMENT,
  music_title VARCHAR(255) NOT NULL,
  time_duration INT NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY(album_id) REFERENCES albums(album_id)
) engine = InnoDB;

INSERT INTO artists (artist_name)
VALUES 
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon'),
  ('Tyler Isle'),
  ('Fog');

INSERT INTO albuns (album_title, artist_id, release_year)
VALUES
  ('Envious', 1, 1990),
  ('Exuberant', 1, 1993),
  ('Hallowed Steam', 2, 1995),
  ('Incandescent', 3, 1998),
  ('Temporary Culture', 4, 2001),
  ('Library of liberty', 4, 2003),
  ('Chained Down', 5, 2007),
  ('Cabinet of fools', 5, 2012),
  ('No guarantees', 5, 2015),
  ('Apparatus', 6, 2015);

INSERT INTO musics (music_title, time_duration, album_id)
VALUES
  ('Soul For Us', 200, 1),
	('Reflections Of Magic', 163, 1),
	('Dance With Her Own', 116, 1),
	('Troubles Of My Inner Fire', 203, 2),
	('Time Fireworks', 152, 2),
	('Magic Circus', 105, 3),
	('Honey, So Do I', 207, 3),
	("Sweetie, Let's Go Wild", 139, 3),
	('She Knows', 244, 3),
	('Fantasy For Me', 100, 4),
	('Celebration Of More', 146, 4),
	('Rock His Everything', 223, 4),
	('Home Forever', 231, 4),
	('Diamond Power', 241, 4),
	("Let's Be Silly", 132, 4),
	('Thang Of Thunder', 240, 5),
	('Words Of Her Life', 185, 5),
	('Without My Streets', 176, 5),
	('Need Of The Evening', 190, 6),
	('History Of My Roses', 222, 6),
	('Without My Love', 111, 6),
	('Walking And Game', 123, 6),
	('Young And Father', 197, 6),
	('Finding My Traditions"', 179, 7),
	('Walking And Man', 229, 7),
	('Hard And Time', 135, 7),
	("Honey, I'm A Lone Wolf", 150, 7),
	("She Thinks I Won't Stay Tonight", 166, 8),
	("He Heard You're Bad For Me", 154, 8),
	("He Hopes We Can't Stay", 210, 8),
	('I Know I Know', 117, 8),
	("He's Walking Away", 159, 8),
	("He's Trouble", 138, 8),
	('I Heard I Want To Bo Alone', 120, 8),
	('I Ride Alone', 151, 9),
	('Honey', 79, 10),
	('You Cheated On Me', 95, 10),
	("Wouldn't It Be Nice", 213, 10),
	('Baby', 136, 10),
	('You Make Me Feel So..', 83, 10);

CREATE TABLE plans (
  plan_id INT PRIMARY KEY AUTO_INCREMENT ,
  plan_name VARCHAR(255) NOT NULL,
  plan_value FLOAT NOT NULL
) engine = InnoDB;

