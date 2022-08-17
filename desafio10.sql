SELECT 
mu.musica_nome AS nome,
COUNT(mu.musica_nome) AS reproducoes
FROM SpotifyClone.historico_reproducoes AS hr
INNER JOIN SpotifyClone.musica AS mu
ON hr.musica_id = mu.musica_id
INNER JOIN SpotifyClone.usuario AS us
ON hr.usuario_id = us.usuario_id
WHERE us.plano_assinado IN (1, 4)
GROUP BY nome
ORDER BY nome;
