 SELECT 
 ms.musica_nome AS nome_musica,
    CASE
      WHEN ms.musica_nome LIKE '%Amar%' THEN REPLACE(ms.musica_nome, 'Amar', 'Code Review') 
      WHEN ms.musica_nome LIKE '%SUPERSTAR%' THEN REPLACE(ms.musica_nome, 'SUPERSTAR', 'SUPERDEV')
      WHEN ms.musica_nome LIKE '%Bard%' THEN REPLACE(ms.musica_nome, 'Bard', 'QA')
      WHEN ms.musica_nome LIKE '%SOUL%' THEN REPLACE(ms.musica_nome, 'SOUL', 'CODE')
      WHEN ms.musica_nome LIKE '%Pais%' THEN REPLACE(ms.musica_nome, 'Pais', 'Pull Requests')
    END AS novo_nome
  FROM SpotifyClone.musica AS ms
  WHERE ms.musica_nome LIKE '%Amar%' 
  OR ms.musica_nome LIKE '%SUPERSTAR%' 
  OR ms.musica_nome LIKE'%Bard%' 
  OR ms.musica_nome LIKE '%SOUL%' 
  OR ms.musica_nome LIKE '%Pais%'
  ORDER BY nome_musica DESC;