SELECT COUNT(m.musica_id) AS cancoes, 
COUNT(DISTINCT al.id_artista) AS artistas, 
COUNT(DISTINCT al.album_id) AS albuns
FROM SpotifyClone.musica AS m
INNER JOIN SpotifyClone.album AS al
ON m.id_album = al.album_id;