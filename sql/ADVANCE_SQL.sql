
  -- Rank tracks by popularity within each artist
SELECT ARTIST_NAME, TRACK_NAME,track_popularity,
       RANK() OVER (PARTITION BY artist_name ORDER BY track_popularity DESC) AS RankWithinArtist
FROM Track_Data_Final

-- CTE COMMON TABLE EXPRESSIONS
WITH cteranks AS (
    SELECT artist_name,track_name,track_popularity,
           RANK() OVER (
               PARTITION BY artist_name
               ORDER BY track_popularity DESC)
            AS RankWithinArtist
    FROM Track_Data_Final
)
SELECT *
FROM cteranks


--TEMP TABLES
CREATE TABLE #RankedTracks (
    track_id VARCHAR(50),
    artist_name VARCHAR(255),
    track_name VARCHAR(255),
    track_popularity INT,
    RankWithinArtist INT
);
INSERT INTO #RankedTracks
SELECT track_id, artist_name, track_name, track_popularity,
       RANK() OVER (PARTITION BY ARTIST_NAME 
                    ORDER BY TRACK_POPULARITY DESC) AS RankWithinArtist
FROM Track_Data_Final
SELECT *
FROM #RankedTracks
WHERE RankWithinArtist <= 3;


