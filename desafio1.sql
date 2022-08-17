DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plano(
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano_nome VARCHAR(100) NOT NULL,
     valor_plano DECIMAL(3,2)
) engine = InnoDB;

CREATE TABLE SpotifyClone.artista(
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista_nome VARCHAR(100) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.usuario(
      usuario_id INT PRIMARY KEY AUTO_INCREMENT,
      usuario_nome VARCHAR(100) NOT NULL,
	  idade INT NOT NULL,
      plano_assinado INT NOT NULL,
      data_assinatura DATE,
      FOREIGN KEY (plano_assinado) REFERENCES SpotifyClone.plano (plano_id)
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.album(
      album_id INT PRIMARY KEY AUTO_INCREMENT,
      album_nome VARCHAR(100) NOT NULL,
      id_artista INT NOT NULL,
      ano_lancamento YEAR NOT NULL,
      FOREIGN KEY(id_artista) REFERENCES SpotifyClone.artista (artista_id) 
  ) engine = InnoDB;
  
    CREATE TABLE SpotifyClone.musica(
	  musica_id INT PRIMARY KEY AUTO_INCREMENT,
      musica_nome VARCHAR(100) NOT NULL,
      duracao_segundos INT NOT NULL,
      id_album INT NOT NULL,
      FOREIGN KEY(id_album) REFERENCES SpotifyClone.album (album_id)
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.seguindo(
      id_usuario INT NOT NULL,
      id_artista INT NOT NULL,
      CONSTRAINT seguindo_pk PRIMARY KEY (id_usuario , id_artista),
      FOREIGN KEY (id_usuario) REFERENCES SpotifyClone.usuario (usuario_id),
      FOREIGN KEY (id_artista) REFERENCES SpotifyClone.artista (artista_id)
  ) engine = InnoDB;
  
    CREATE TABLE SpotifyClone.historico_reproducoes(
      data_reproducao DATETIME,
      musica_id INT NOT NULL,
      usuario_id INT NOT NULL, 
      CONSTRAINT historico_pk PRIMARY KEY (musica_id, usuario_id),
	  FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuario (usuario_id),
      FOREIGN KEY (musica_id) REFERENCES SpotifyClone.musica (musica_id)
  ) engine = InnoDB;


  INSERT INTO SpotifyClone.plano (plano_nome, valor_plano)
VALUES
  ('gratutito', 0.00),
  ('familiar', 7.99),
  ('universitario', 5.99),
  ('pessoal', 6.99);

INSERT INTO SpotifyClone.artista (artista_nome)
VALUES
  ('Beyoncé'),
  ('Queen'),
  ('Elis Regina'),
  ('Baco Exu do Blues'),
  ('Blind Guardian'),
  ('Nina Simone');

    INSERT INTO SpotifyClone.usuario (usuario_nome, idade, plano_assinado, data_assinatura)
VALUES
  ('Barbara Liskov', 82, 1, '2019-10-20'),
  ('Robert Cecil Martin', 58, 1, '2017-01-06'),
  ('Ada Lovelace', 37, 2, '2017-01-17'),
  ('Martin Fowler', 46, 2, '2017-01-17'),
  ('Sandi Metz', 58, 2, '2018-04-29'),
  ('Paulo Freire', 19, 3, '2018-02-14'),
  ('Bell Hooks', 26, 3, '2018-01-05'),
  ('Christopher Alexander', 85, 4, '2019-06-05'),
  ('Judith Butler', 45, 4, '2020-05-13'),
  ('Jorge Amado', 58, 4, '2017-02-17');
  
  INSERT INTO SpotifyClone.album (album_nome, id_artista, ano_lancamento)
VALUES
  ('Renaissance', 1, 2022),
  ('Jazz', 2, 1978),
  ('Hot Space', 2, 1982),
  ('Falso Brilhante', 3, 1998),
  ('Vento de Maio', 3, 2001),
  ('QVVJFA?', 4, 2003),
  ('Somewhere Far Beyond', 5, 2007),
  ('I Put A Spell On You', 6, 2012);
  
    INSERT INTO SpotifyClone.musica (musica_nome, duracao_segundos, id_album)
VALUES
  ('BREAK MY SOUL', 279, 1),
  ('VIRGO’S GROOVE', 369, 1),
  ('ALIEN SUPERSTAR', 116, 1),
  ('Don’t Stop Me Now', 203, 2),
  ('Under Pressure', 152, 3),
  ('Como Nossos Pais', 105, 4),
  ('O Medo de Amar é o Medo de Ser Livre', 207, 5),
  ('Samba em Paris', 267, 6),
  ('The Bard’s Song', 244, 7),
  ('Feeling Good', 100, 8);
  
    INSERT INTO SpotifyClone.seguindo (id_usuario, id_artista)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (4, 4),
  (5, 5),
  (5, 6),
  (6, 6),
  (6, 1),
  (7, 6),
  (9, 3),
  (10, 2);
  
  INSERT INTO SpotifyClone.historico_reproducoes(data_reproducao, musica_id, usuario_id)
VALUES
  ('2022-02-28 10:45:55', 8, 1),
  ('2020-05-02 05:30:35', 2, 1),
  ('2020-03-06 11:22:33', 10, 1),
  ('2022-08-05 08:05:17', 10, 2),
  ('2020-01-02 07:40:33', 7, 2),
  ('2020-11-13 16:55:13', 10, 3),
  ('2020-12-05 18:38:30', 2, 3),
  ('2021-08-15 17:10:10', 8, 4),
  ('2022-01-09 01:44:33', 8, 5),
  ('2020-08-06 15:23:43', 5, 5),
  ('2017-01-24 00:31:17', 7, 6),
  ('2017-10-12 12:35:20', 1, 6),
  ('2011-12-15 22:30:49', 4, 7),
  ('2012-03-17 14:56:41', 4, 8),
  ('2022-02-24 21:14:22', 9, 9),
  ('2015-12-13 08:30:22', 3, 10);
