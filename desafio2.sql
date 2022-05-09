SELECT
	COUNT(DISTINCT musics.music_id) as cancoes,
	COUNT(DISTINCT artists.artist_name) as artistas,
	COUNT(DISTINCT albums.album_title) as albuns
FROM
	`SpotifyClone`.musics as musics
	INNER JOIN `SpotifyClone`.artists as artists
	INNER JOIN `SpotifyClone`.albums as albums;