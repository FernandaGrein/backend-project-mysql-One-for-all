SELECT
us.usuario_nome AS 'usuario',
COUNT(hr.musica_id) AS 'qt_de_musicas_ouvidas',
ROUND((SUM(mu.duracao_segundos))/60,2) AS 'total_minutos'
FROM SpotifyClone.historico_reproducoes AS hr
INNER JOIN SpotifyClone.usuario AS us
ON hr.usuario_id = us.usuario_id
INNER JOIN SpotifyClone.musica AS mu
ON hr.musica_id = mu.musica_id
GROUP BY hr.usuario_id
ORDER BY usuario;