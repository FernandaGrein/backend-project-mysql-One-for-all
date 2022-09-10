Este foi o terceiro projeto realizado no módulo de backEnd da Trybe, nele foi trabalhado e consolidado todos os principais conceitos do SQL e do MySql. Neste projeto o maior desafio foi 
criar uma tabela normalizada com base em um conjunto de informações não normalizadas. Depois de populada a tabela foram realizadas várias querys para encontrar as informações armazenadas.

Para acessar o projeto clone este repositório, acesse a pasta recem clonada, a  partir daqui é possível
rodar o projeto com o docker container seguindo os passos abaixo:
 - git clone git@github.com:FernandaGrein/backend-project-mysql-One-for-all.git
 - cd backend-project-mysql-One-for-all
 - code . (se quiser continuar pelo VsCode)
 - docker-compose up -d
 - docker exec -it one_for_all bash
 - npm install
Depois de rodar esses comandos é possível abrir o o workbench e configura-lo com base nas informações 
do docker-compose.yml

Nesse projeto foram cumpridos os seguintes requisitos:
 - O primeiro desafio foi criar um banco de dados normalizado, seguindo as 3 regras da normalização
 e popula-lo com as informações presentes no arquivo "SpotifyClone-Non-NormalizedTable"
 - Na sequencia foram criadas as querys, a primeira query exibe 3 colunas, a primeira com a quantidade total de canções, a segunda exibe a quantidade total de artistas e a terceira a quantidade de albuns.
 - A segunda query exibe o nome do usuário, a quantidade de músicas ouvidas por ele, e na terceira coluna o total de minutos ouvidos pelo usuário.
 - Foi criado uma query que mostra os usuários ativos a partir de 2021, exibindo o usuário e o status ativo ou inativo, por ordem alfabética.
 - Foi exibido as duas músicas mais tocadas, trazendo na primeira coluna a canção e na segunda a quantidade de pessoas que já a escutaram, o resultado foi mostrado em ordem decrescente baseado no número de reproduções.
 - Foi criado uma query com 4 colunas que exibe, o menor valor de plano existente, o maior valor de plano, o valor médio dos planos utilizados pelos usuários e o valor total obtido com os planos
 - A sexta query mostra a relação de todos os albuns produzidos por cada artistas, trazendo, o nome do artista, o nome do album, a quantidade de pessoas seguidoras daquele artista, ordenado de forma decrescente com base no número de seguidores.
 - Foi feita uma query com a relação dos albuns produzidos pela "Elis Regina", foi exibido o nome da artista e o nome dos albuns, ordenados pelo último.
 - Foi criado uma query que exibe a quantidade de músicas no hitórico de reprodução da usuária "Barbara Liskov".
 - Na penultima query, foi exibido o nome a quantidade de vezes que cada canção foi tocada por pessoas usuárias dos planos gratuito ou pessoal.
 - Por fim, a ultima query era um desafio bonus, nela foi alterado o nome de algumas músicas, ordenando-as em ordem alfabética decrescente, exibindo apenas as músicas com o nome alterado, tendo na primeira coluna o nome normal e na segunda, o nome atualziado.
