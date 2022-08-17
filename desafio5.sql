SELECT 
mu.musica_nome AS cancao,
COUNT(hr.musica_id) AS reproducoes
FROM SpotifyClone.historico_reproducoes AS hr
INNER JOIN SpotifyClone.musica AS mu
ON hr.musica_id = mu.musica_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;