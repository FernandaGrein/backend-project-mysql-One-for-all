SELECT table1.artN AS artista,
table1.albN AS album,
table2.usC AS seguidores
FROM
(SELECT al.id_artista AS arId,  al.album_nome AS albN, ar.artista_nome AS artN 
FROM SpotifyClone.album AS al
INNER JOIN SpotifyClone.artista AS ar
ON al.id_artista = ar.artista_id) AS table1
INNER JOIN
(SELECT se.id_artista AS arId, COUNT(se.id_usuario) AS usC 
FROM SpotifyClone.seguindo AS se
GROUP BY se.id_artista) AS table2
ON table1.arId = table2.arId
ORDER BY seguidores DESC, artista ASC, album ASC;