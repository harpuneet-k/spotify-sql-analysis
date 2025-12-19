-- Replace NULL names with 'Unknown' and NULL stats with 0
UPDATE track_data_final
SET 
    track_name = COALESCE(track_name, 'Unknown Track'),
    artist_name = COALESCE(artist_name, 'Unknown Artist'),
    album_name = COALESCE(album_name, 'Unknown Album'),
    artist_popularity = COALESCE(artist_popularity, 0),
    artist_followers = COALESCE(artist_followers, 0);


--Clean the artist_genres Column
UPDATE track_data_final
SET artist_genres = 'Unclassified'
WHERE artist_genres = '[]' OR artist_genres IS NULL;

UPDATE track_data_final
SET artist_genres = REPLACE(REPLACE(REPLACE(artist_genres, '[', ''), ']', ''), '''', '')
WHERE artist_genres IS NOT NULL;

select * from track_data_final


--Ensure there are no leading or trailing spaces in text fields.
UPDATE Track_Data_final
SET track_name = TRIM(track_name),
    artist_name = TRIM(artist_name),
    album_name = TRIM(album_name);

--Final Deduplication Check
WITH CTE AS (
    SELECT track_id, 
           ROW_NUMBER() OVER (PARTITION BY track_id ORDER BY (SELECT NULL)) AS DuplicateCount
    FROM Track_Data_final
)
DELETE FROM CTE WHERE DuplicateCount > 1;