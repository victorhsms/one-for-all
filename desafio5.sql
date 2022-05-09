SELECT
  musics.music_title as cancao,
  COUNT(musics_played.music_id) AS reproducoes
FROM
  SpotifyClone.musics_played as musics_played
  INNER JOIN SpotifyClone.musics AS musics
  ON musics.music_id = musics_played.music_id
GROUP BY musics.music_title
ORDER BY reproducoes DESC, musics.music_title LIMIT 2;