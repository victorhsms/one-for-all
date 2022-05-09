SELECT 
  users.user_name AS usuario,
  COUNT(musics_played.music_id) AS qtde_musicas_ouvidas,
  ROUND((SUM(musics.time_duration) / 60), 2) AS total_minutos
FROM
  SpotifyClone.users AS users
  INNER JOIN SpotifyClone.musics_played AS musics_played ON users.user_id = musics_played.user_id
  INNER JOIN SpotifyClone.musics AS musics ON musics_played.music_id = musics.music_id
GROUP BY usuario ORDER BY usuario;