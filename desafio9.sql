SELECT
  COUNT(*) AS quantidade_musicas_no_historico
FROM
  SpotifyClone.musics_played as musics_played
  INNER JOIN SpotifyClone.users AS users
  ON users.user_id = musics_played.user_id
  AND users.user_name LIKE 'Bill';