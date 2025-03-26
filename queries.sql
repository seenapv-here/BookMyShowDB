-- List shows on a given date at a given theatre
SELECT M.title, S.show_time
FROM ShowDetails S
JOIN Movie M ON S.movie_id = M.movie_id
JOIN Theatre T ON S.theatre_id = T.theatre_id
WHERE S.show_date = '2025-03-18' AND T.name = 'PVR Cinemas';
