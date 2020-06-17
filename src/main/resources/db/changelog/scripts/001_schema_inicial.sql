--liquibase formatted sql

--changeset felipeggutierrez:1
CREATE TABLE IF NOT EXISTS usuario (
 id BIGINT NOT NULL GENERATED BY DEFAULT AS IDENTITY CONSTRAINT usuario_pkey PRIMARY KEY ,
 nome VARCHAR(255),
 senha VARCHAR(255)
);

INSERT INTO usuario (id, nome, senha) values (1, 'Felipe', 'senha'); 


--rollback DROP TABLE usuario;