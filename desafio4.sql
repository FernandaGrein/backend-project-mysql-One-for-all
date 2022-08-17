SELECT
us.usuario_nome AS usuario,
IF(MAX(YEAR(hr.data_reproducao)) > 2020, 'Usuário ativo', 'Usuário inativo') AS 'status_usuario'
FROM SpotifyClone.historico_reproducoes AS hr
INNER JOIN SpotifyClone.usuario AS us
ON hr.usuario_id = us.usuario_id
GROUP BY us.usuario_id
ORDER BY usuario;