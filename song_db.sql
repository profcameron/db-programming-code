-- Drop existing tables if they exist
DROP TABLE songs CASCADE CONSTRAINTS;
DROP TABLE albums CASCADE CONSTRAINTS;
DROP TABLE artists CASCADE CONSTRAINTS;
DROP TABLE platforms CASCADE CONSTRAINTS;

-- Create platforms table
CREATE TABLE platforms (
  platform_code VARCHAR2(10) PRIMARY KEY,
  platform_name VARCHAR2(50) NOT NULL
);

-- Create artists table
CREATE TABLE artists (
  artist_code VARCHAR2(10) PRIMARY KEY,
  artist_name VARCHAR2(100) NOT NULL,
  country VARCHAR2(50),
  platform_code VARCHAR2(10),
  CONSTRAINT artists_unique_name UNIQUE (artist_name),
  FOREIGN KEY (platform_code) REFERENCES platforms(platform_code)
);

-- Create albums table
CREATE TABLE albums (
  album_code VARCHAR2(10) PRIMARY KEY,
  album_title VARCHAR2(150) NOT NULL,
  release_year INT,
  artist_code VARCHAR2(10),
  CONSTRAINT albums_unique_title_per_artist UNIQUE (album_title, artist_code),
  FOREIGN KEY (artist_code) REFERENCES artists(artist_code)
);

-- Create songs table
CREATE TABLE songs (
  song_code VARCHAR2(10) PRIMARY KEY,
  song_title VARCHAR2(150) NOT NULL,
  duration INT,
  genre VARCHAR2(50),
  plays INT DEFAULT 0,
  likes INT DEFAULT 0,
  skips INT DEFAULT 0,
  album_code VARCHAR2(10),
  CONSTRAINT songs_unique_title_in_album UNIQUE (song_title, album_code),
  FOREIGN KEY (album_code) REFERENCES albums(album_code)
);

-- Insert platforms
INSERT INTO platforms (platform_code, platform_name) VALUES ('PC01', 'Spotify');
INSERT INTO platforms (platform_code, platform_name) VALUES ('PC02', 'Apple Music');
INSERT INTO platforms (platform_code, platform_name) VALUES ('PC03', 'Pandora');

-- Insert artists
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC01', 'The Beatles', 'UK', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC02', 'Taylor Swift', 'USA', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC03', 'Kendrick Lamar', 'USA', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC04', 'Eminem', 'USA', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC05', 'Led Zeppelin', 'UK', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC06', 'Dua Lipa', 'UK', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC07', 'Adele', 'UK', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC08', 'Frank Sinatra', 'USA', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC09', 'Johnny Cash', 'USA', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC10', 'Queen', 'UK', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC11', 'Ed Sheeran', 'UK', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC12', 'Billie Eilish', 'USA', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC13', 'Drake', 'Canada', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC14', 'Rihanna', 'Barbados', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC15', 'Coldplay', 'UK', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC16', 'Post Malone', 'USA', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC17', 'Lady Gaga', 'USA', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC18', 'BTS', 'South Korea', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC19', 'ACDC', 'Australia', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC20', 'Nirvana', 'USA', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC21', 'Michael Jackson', 'USA', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC22', 'Madonna', 'USA', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC23', 'U2', 'Ireland', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC24', 'Beyoncé', 'USA', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC25', 'Elton John', 'UK', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC26', 'The Rolling Stones', 'UK', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC27', 'Maroon 5', 'USA', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC28', 'Pink Floyd', 'UK', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC29', 'Bruno Mars', 'USA', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC30', 'Ariana Grande', 'USA', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC31', 'Bob Dylan', 'USA', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC32', 'Daft Punk', 'France', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC33', 'Shakira', 'Colombia', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC34', 'Eagles', 'USA', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC35', 'Justin Bieber', 'Canada', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC36', 'Snoop Dogg', 'USA', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC37', 'Red Hot Chili Peppers', 'USA', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC38', 'The Weeknd', 'Canada', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC39', 'Katy Perry', 'USA', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC40', 'Metallica', 'USA', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC41', 'Whitney Houston', 'USA', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC42', 'Prince', 'USA', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC43', 'Britney Spears', 'USA', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC44', 'Green Day', 'USA', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC45', 'The Killers', 'USA', 'PC02');
INSERT INTO artists (artist_code, artist_name, platform_code) VALUES ('AC46', 'Eric Cameron', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC47', 'Shawn Mendes', 'Canada', 'PC01');

-- Insert albums
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB01', 'Abbey Road', 1969, 'AC01');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB02', '1989', 2014, 'AC02');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB03', 'DAMN.', 2017, 'AC03');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB04', 'The Slim Shady LP', 1999, 'AC04');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB05', 'Led Zeppelin IV', 1971, 'AC05');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB06', 'Future Nostalgia', 2020, 'AC06');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB07', '21', 2011, 'AC07');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB08', 'Come Fly with Me', 1957, 'AC08');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB09', 'American IV: The Man Comes Around', 2002, 'AC09');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB10', 'A Night at the Opera', 1975, 'AC10');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB11', 'Red', 2012, 'AC02');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB12', 'good kid, m.A.A.d city', 2012, 'AC03');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB13', 'The Eminem Show', 2002, 'AC04');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB14', 'Sgt. Pepper''s Lonely Hearts Club Band', 1967, 'AC01');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB15', '25', 2015, 'AC07');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB16', 'Rumours', 1977, 'AC01');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB17', '÷ (Divide)', 2017, 'AC11');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB18', 'Happier Than Ever', 2021, 'AC12');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB19', 'Scorpion', 2018, 'AC13');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB20', 'Anti', 2016, 'AC14');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB21', 'A Head Full of Dreams', 2015, 'AC15');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB22', 'Hollywood''s Bleeding', 2019, 'AC16');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB23', 'The Fame Monster', 2009, 'AC17');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB24', 'MAP OF THE SOUL: 7', 2020, 'AC18');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB25', 'Back in Black', 1980, 'AC19');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB26', 'Nevermind', 1991, 'AC20');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB27', 'Thriller', 1982, 'AC21');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB28', 'Like a Virgin', 1984, 'AC22');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB29', 'The Joshua Tree', 1987, 'AC23');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB30', 'Lemonade', 2016, 'AC24');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB31', 'Goodbye Yellow Brick Road', 1973, 'AC25');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB32', 'Sticky Fingers', 1971, 'AC26');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB33', 'Songs About Jane', 2002, 'AC27');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB34', 'The Dark Side of the Moon', 1973, 'AC28');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB35', 'Doo-Wops & Hooligans', 2010, 'AC29');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB36', 'Thank U, Next', 2019, 'AC30');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB37', 'The Freewheelin'' Bob Dylan', 1963, 'AC31');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB38', 'Discovery', 2001, 'AC32');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB39', 'Fijación Oral, Vol. 1', 2005, 'AC33');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB40', 'Hotel California', 1976, 'AC34');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB41', 'Purpose', 2015, 'AC35');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB42', 'Doggystyle', 1993, 'AC36');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB43', 'Californication', 1999, 'AC37');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB44', 'After Hours', 2020, 'AC38');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB45', 'Teenage Dream', 2010, 'AC39');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB46', 'Master of Puppets', 1986, 'AC40');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB47', 'The Bodyguard', 1992, 'AC41');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB48', 'Purple Rain', 1984, 'AC42');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB49', '...Baby One More Time', 1999, 'AC43');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB50', 'American Idiot', 2004, 'AC44');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB51', 'Hot Fuss', 2004, 'AC45');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB52', 'Recovery', 2010, 'AC04');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB53', 'X', 2014, 'AC11');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB54', 'Illuminate', 2016, 'AC47');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB55', 'Thriller 25', 2008, 'AC21');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB56', 'V', 2014, 'AC27');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB57', 'Unorthodox Jukebox', 2012, 'AC29');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB58', 'My Everything', 2014, 'AC30');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB59', 'Loud', 2010, 'AC14');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB60', '19', 2008, 'AC45');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB61', 'Led Zeppelin I', 1969, 'AC05');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB62', 'A Rush of Blood to the Head', 2002, 'AC11');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB63', 'DAMN. (Collector''s Edition)', 2017, 'AC03');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB64', 'More Life', 2017, 'AC13');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB65', 'Born This Way', 2011, 'AC17');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB66', 'Mylo Xyloto', 2011, 'AC15');

-- Insert songs
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC01', 'Come Together', 259, 'Rock', 5000000, 1500, 50, 'AB01');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC02', 'Bad Blood', 200, 'Pop', 12000000, 2500, 10, 'AB02');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC03', 'HUMBLE.', 177, 'Hip Hop', 8000000, 3000, 5, 'AB03');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC04', 'My Name Is', 269, 'Hip Hop', 6000000, 2200, 15, 'AB04');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC05', 'Stairway to Heaven', 482, 'Rock', 15000000, 5000, 2, 'AB05');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC06', 'Levitating', 203, 'Pop', 9000000, 2800, 8, 'AB06');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC07', 'Rolling in the Deep', 228, 'R&B', 7500000, 3200, 3, 'AB07');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC08', 'Come Fly with Me', 178, 'Jazz', 4000000, 1800, 20, 'AB08');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC09', 'Hurt', 238, 'Country', 10000000, 4500, 1, 'AB09');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC10', 'Bohemian Rhapsody', 354, 'Rock', 20000000, 6000, 0, 'AB10');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC11', 'All Too Well', 329, 'Pop', 8500000, 3500, 12, 'AB11');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC12', 'Swimming Pools (Drank)', 276, 'Hip Hop', 7200000, 2900, 9, 'AB12');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC13', 'Without Me', 290, 'Hip Hop', 5800000, 2100, 18, 'AB13');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC14', 'Yesterday', 125, 'Rock', 3000000, 1400, 25, 'AB14');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC15', 'Hello', 295, 'R&B', 9500000, 3300, 6, 'AB15');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC16', 'Go Your Own Way', 216, 'Rock', 4800000, 1600, 7, 'AB16');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC17', 'Shape of You', 233, 'Pop', 18000000, 7500, 5, 'AB17');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC18', 'Bad Guy', 194, 'Pop', 16000000, 6800, 10, 'AB18');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC19', 'God''s Plan', 285, 'Hip Hop', 22000000, 9000, 2, 'AB19');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC20', 'Needed Me', 189, 'R&B', 11000000, 4500, 15, 'AB20');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC21', 'Viva La Vida', 242, 'Rock', 13000000, 5500, 8, 'AB21');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC22', 'Circles', 215, 'Pop', 14500000, 6000, 6, 'AB22');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC23', 'Poker Face', 238, 'Pop', 9800000, 4100, 12, 'AB23');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC24', 'IDOL', 222, 'K-Pop', 10500000, 4900, 9, 'AB24');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC25', 'Highway to Hell', 208, 'Rock', 11200000, 5100, 3, 'AB25');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC26', 'Smells Like Teen Spirit', 301, 'Rock', 19000000, 8000, 1, 'AB26');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC27', 'Billie Jean', 294, 'Pop', 25000000, 12000, 0, 'AB27');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC28', 'Like a Virgin', 220, 'Pop', 8800000, 3500, 10, 'AB28');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC29', 'With or Without You', 296, 'Rock', 14000000, 6200, 4, 'AB29');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC30', 'Formation', 220, 'R&B', 10200000, 4300, 7, 'AB30');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC31', 'Tiny Dancer', 342, 'Rock', 6500000, 2800, 15, 'AB31');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC32', 'Brown Sugar', 214, 'Rock', 9500000, 4000, 6, 'AB32');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC33', 'This Love', 210, 'Pop', 8900000, 3800, 9, 'AB33');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC34', 'Comfortably Numb', 382, 'Rock', 16000000, 7000, 3, 'AB34');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC35', 'Just the Way You Are', 220, 'Pop', 15500000, 6500, 5, 'AB35');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC36', '7 rings', 179, 'Pop', 19500000, 8500, 2, 'AB36');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC37', 'Blowin'' in the Wind', 168, 'Folk', 500000, 200, 50, 'AB37');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC38', 'One More Time', 320, 'Electronic', 7800000, 3100, 18, 'AB38');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC39', 'Hips Don''t Lie', 238, 'Latin', 11000000, 4800, 10, 'AB39');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC40', 'Hotel California', 390, 'Rock', 17000000, 7500, 4, 'AB40');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC41', 'Sorry', 232, 'Pop', 13500000, 5800, 11, 'AB41');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC42', 'Gin and Juice', 340, 'Hip Hop', 6200000, 2600, 22, 'AB42');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC43', 'Otherside', 255, 'Rock', 7100000, 2900, 14, 'AB43');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC44', 'Blinding Lights', 200, 'Pop', 25000000, 11000, 1, 'AB44');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC45', 'Firework', 227, 'Pop', 12000000, 5200, 8, 'AB45');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC46', 'Enter Sandman', 331, 'Metal', 10000000, 4400, 9, 'AB46');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC47', 'I Will Always Love You', 271, 'R&B', 18000000, 7800, 3, 'AB47');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC48', 'When Doves Cry', 340, 'Funk', 9000000, 3500, 16, 'AB48');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC49', '...Baby One More Time', 210, 'Pop', 15000000, 6500, 5, 'AB49');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC50', 'Wake Me Up When September Ends', 285, 'Rock', 8500000, 3700, 13, 'AB50');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC51', 'Mr. Brightside', 223, 'Rock', 17500000, 7300, 6, 'AB51');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC52', 'Lose Yourself', 326, 'Hip Hop', 21000000, 9500, 2, 'AB52');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC53', 'Thinking Out Loud', 281, 'Pop', 14000000, 6000, 4, 'AB53');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC54', 'Treat You Better', 208, 'Pop', 9000000, 3900, 10, 'AB54');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC55', 'Beat It', 258, 'Pop', 16000000, 7000, 3, 'AB55');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC56', 'Maps', 210, 'Pop', 10500000, 4500, 7, 'AB56');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC57', 'Grenade', 222, 'Pop', 11500000, 4800, 8, 'AB57');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC58', 'Problem', 200, 'Pop', 12500000, 5300, 6, 'AB58');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC59', 'What''s My Name?', 216, 'R&B', 8800000, 3700, 12, 'AB59');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC60', 'Chasing Pavements', 211, 'R&B', 7000000, 3000, 9, 'AB60');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC61', 'Black Dog', 297, 'Rock', 12500000, 5500, 7, 'AB61');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC62', 'The Scientist', 309, 'Rock', 11000000, 4800, 11, 'AB62');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC63', 'FEAR.', 240, 'Hip Hop', 8800000, 3600, 5, 'AB63');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC64', 'Passionfruit', 299, 'R&B', 9200000, 4000, 14, 'AB64');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC65', 'Born This Way', 260, 'Pop', 10800000, 4500, 8, 'AB65');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC66', 'The Way You Make Me Feel', 297, 'Pop', 15500000, 7000, 3, 'AB66');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC67', 'The Real Slim Shady', 284, 'Hip Hop', 7500000, 3000, 18, 'AB52');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC68', 'Someone Like You', 285, 'R&B', 11500000, 5000, 4, 'AB15');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC69', 'Castle on the Hill', 261, 'Pop', 10000000, 4200, 7, 'AB62');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC70', 'Boulevard of Broken Dreams', 260, 'Rock', 9800000, 4100, 10, 'AB63');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC71', 'Somebody Told Me', 197, 'Rock', 14500000, 6300, 5, 'AB51');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC72', 'Not Afraid', 248, 'Hip Hop', 18000000, 8000, 3, 'AB52');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC73', 'In Your Eyes', 237, 'Pop', 11000000, 4600, 9, 'AB53');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC74', 'Paradise', 270, 'Rock', 13000000, 5500, 6, 'AB34');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC75', 'Work', 219, 'R&B', 10500000, 4400, 11, 'AB24');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC76', 'The Lazy Song', 189, 'Pop', 9800000, 4100, 8, 'AB35');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC77', 'California Gurls', 234, 'Pop', 11500000, 5000, 7, 'AB59');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC78', 'In My Feelings', 218, 'Hip Hop', 17000000, 7500, 4, 'AB64');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC79', 'S&M', 244, 'Pop', 9000000, 3800, 12, 'AB57');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC80', 'What Do You Mean?', 207, 'Pop', 14500000, 6200, 5, 'AB53');
