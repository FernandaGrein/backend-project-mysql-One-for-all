SELECT
ROUND(MIN(pl.valor_plano),2) AS 'faturamento_minimo',
MAX(pl.valor_plano) AS 'faturamento_maximo',
ROUND(AVG(pl.valor_plano),2) AS 'faturamento_medio',
ROUND(SUM(valor_plano),2) AS 'faturamento_total'
FROM SpotifyClone.plano AS pl
INNER JOIN SpotifyClone.usuario as us 
ON us.plano_assinado = pl.plano_id;
