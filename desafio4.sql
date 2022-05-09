SELECT
  users.user_name AS usuario,
  IF(MAX(YEAH(musics_played.date_played)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM
  SpotifyClone.users AS users
  INNER JOIN SpotifyClone.musics_played AS musics_played ON musics_played.user_id = users.user_id
GROUP BY users.user_name ORDER BY users.user_name;