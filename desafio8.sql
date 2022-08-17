SELECT
ar.artista_nome AS artista,
al.album_nome AS album
FROM SpotifyClone.album AS al
INNER JOIN SpotifyClone.artista AS ar
ON al.id_artista = ar.artista_id
WHERE ar.artista_nome = 'Elis Regina'
ORDER BY album ASC;