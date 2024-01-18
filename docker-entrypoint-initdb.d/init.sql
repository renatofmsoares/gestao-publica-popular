-- Criação de um banco de dados
CREATE DATABASE auth_db;

-- Conexão ao banco de dados recém-criado
\c auth_db;

-- Criação da tabela de usuários
CREATE TABLE usuarios (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  cpf VARCHAR(14) UNIQUE NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  senha VARCHAR(100) NOT NULL
);

-- Inserção dos dados iniciais
INSERT INTO usuarios (cpf, nome, email, senha)
VALUES
    ('12345678901', 'Exemplo Pessoa', 'exemplo@email.com', 'senha123');