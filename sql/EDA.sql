SELECT * FROM TRACK_DATA_FINAL



--ARTISTS AND THEIR TOTAL NO. OF TRACKS
SELECT ARTIST_NAME, COUNT(TRACK_NAME) AS NO_of_TRACKS
FROM TRACK_DATA_FINAL
GROUP BY ARTIST_NAME
ORDER BY NO_of_TRACKS

--TRACK POPULARITY
SELECT TOP 10 track_name, artist_name, track_popularity
FROM Track_Data_Final
ORDER BY track_popularity DESC

--ARTIST POPULARITY
SELECT TOP 10 ARTIST_NAME, COUNT(TRACK_POPULARITY) AS POPULARITY
FROM Track_Data_Final
GROUP BY ARTIST_NAME
ORDER BY POPULARITY DESC

-- Average popularity: explicit vs non-explicit
SELECT explicit, AVG(track_popularity) AS AvgPopularity
FROM Track_Data_Final
GROUP BY explicit

--WHICH GENRE DOMINATES..?
SELECT ARTIST_GENRES, COUNT(*) AS GENRE_POPULARITY
FROM Track_Data_Final
GROUP BY ARTIST_GENRES
ORDER BY GENRE_POPULARITY DESC

-- Albums with most tracks
SELECT album_name, album_total_tracks
FROM Track_Data_Final
ORDER BY album_total_tracks DESC;

-- Tracks per year
SELECT YEAR(album_release_date) AS ReleaseYear, COUNT(*) AS TrackCount
FROM Track_Data_Final
GROUP BY YEAR(album_release_date)
ORDER BY ReleaseYear DESC

-- Popularity trend over years
SELECT YEAR(album_release_date) AS ReleaseYear,
       AVG(track_popularity) AS AvgPopularity
FROM Track_Data_Final
GROUP BY YEAR(album_release_date)
ORDER BY ReleaseYear;

-- Popularity vs duration
SELECT 
  CASE 
    WHEN track_duration_ms < 180000 THEN 'Short'
    WHEN track_duration_ms BETWEEN 180000 AND 240000 THEN 'Medium'
    ELSE 'Long'
  END AS DurationCategory,
  AVG(track_popularity) AS AvgPopularity
FROM Track_Data_Final
GROUP BY 
  CASE 
    WHEN track_duration_ms < 180000 THEN 'Short'
    WHEN track_duration_ms BETWEEN 180000 AND 240000 THEN 'Medium'
    ELSE 'Long'
  END;


