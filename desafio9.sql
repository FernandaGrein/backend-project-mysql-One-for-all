SELECT quantity.qnt AS quantidade_musicas_no_historico
FROM
(SELECT us.usuario_nome, COUNT(hr.data_reproducao) AS qnt
FROM SpotifyClone.historico_reproducoes AS hr
INNER JOIN SpotifyClone.usuario AS us
ON hr.usuario_id = us.usuario_id
GROUP BY hr.usuario_id
HAVING us.usuario_nome = 'Barbara Liskov') AS quantity;