INSERT INTO Theatre (name, location) VALUES
('PVR Cinemas', 'Bangalore'),
('INOX', 'Mumbai');

INSERT INTO Movie (title, genre, duration, language, rating) VALUES
('Interstellar', 'Sci-Fi', 169, 'English', 8.6),
('Dangal', 'Drama', 161, 'Hindi', 8.4);

INSERT INTO ShowDetails (movie_id, theatre_id, show_date, show_time) VALUES
(1, 1, '2025-03-18', '18:30:00'),
(2, 2, '2025-03-18', '20:00:00');
