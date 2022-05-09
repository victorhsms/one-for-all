SELECT
  artists.artist_name AS artista,
  albums.album_title AS album,
  COUNT(artists_followed.artist_id) AS seguidores
FROM
  SpotifyClone.artists AS artists
  INNER JOIN SpotifyClone.albums AS albums ON albums.artist_id = artists.artist_id
  INNER JOIN SpotifyClone.artists_followed AS artists_followed ON artists_followed.artist_id = artists.artist_id
GROUP BY albums.album_id
ORDER BY
  seguidores DESC;
