INSERT INTO artist(name) VALUES 
	('Михаил круг'), 
	('ЛЮБЭ'), 
	('Руслан Набиев'), 
	('Loc-Dog');

INSERT INTO genre(name) VALUES 
	('Шансон'), 
	('Рок'), 
	('Рэп');

INSERT INTO album(title, pub_date) VALUES
	('Жиган-лимон', '1994-04-01'),
	('Счастье в простом', '2020-10-01'),
	('По ресторанам', '2008-01-01'),
	('Давай за...', '2002-03-01');

INSERT INTO track(title, time, album_id) VALUES
	('Кольщик', 287, 1),
	('Фраер', 175, 1),
	('Счастье в простом', 170, 2),
	('Ты неси меня река', 217, 4),
	('Фонтаны', 387, 3),
	('Повзрослел', 199, 2),
	('Милый мой город', 237, 1);

INSERT INTO collection(title, pub_date) VALUES 
    ('Шансон года', '2023-12-01'),
    ('Рок-хиты', '2023-12-01'),
    ('Рэп батл', '2024-01-01'),
    ('Народные хиты', '2024-02-01'),
	('Новогодний 2020', '2020-12-01');

INSERT INTO genre_artist(genre_id, artist_id) VALUES 
    (1, 1), 
    (1, 2),  
    (1, 3),  
    (2, 2),  
    (3, 4); 

INSERT INTO artist_album(artist_id, album_id) VALUES 
	(1, 1),
	(2, 4),
	(3, 3),
	(4, 2);
	
INSERT INTO track_collection(track_id, collection_id) VALUES
    (1, 1),  
    (2, 1),  
    (4, 2), 
    (3, 3),  
    (1, 4),    
    (4, 4),
	(6, 3);


SELECT * FROM artist;
SELECT * FROM genre;
SELECT * FROM album;
SELECT * FROM track;
SELECT * FROM collection;
SELECT * FROM genre_artist;
SELECT * FROM artist_album;
SELECT * FROM track_collection;