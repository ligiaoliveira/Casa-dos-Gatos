CREATE DATABASE CasaDeGatos;

USE CasaDeGatos;

## Tabela de Usuários ##
CREATE TABLE usuario
(
id_usuario INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
cpf CHAR(11) UNIQUE NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
senha_hash VARCHAR(250) NOT NULL,
telefone CHAR(11) NOT NULL,
cep CHAR(8) NOT NULL,
logradouro VARCHAR(150) NOT NULL,
numero VARCHAR(10) NOT NULL,
cidade VARCHAR(50) NOT NULL,
estado CHAR(2) NOT NULL,
tipo_usuario VARCHAR(20) DEFAULT 'Comum'
);

## Tabela do Catálogo de Gatos ##
CREATE TABLE gato
(
id_gato INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
idade VARCHAR(30) NOT NULL,
raca VARCHAR(50) NOT NULL,
cor VARCHAR(50) NOT NULL,
castrado ENUM('Sim', 'Não', 'Desconhecido') DEFAULT 'Não' NOT NULL,
vacinas VARCHAR(250) NOT NULL,
descricao VARCHAR(250) NOT NULL,
foto VARCHAR(250),
status_gato ENUM('Disponível', 'Adotado') DEFAULT 'Disponível' NOT NULL
);

## Tabela dos Produtos do Brechó ##
CREATE TABLE brecho
(
id_item INT AUTO_INCREMENT PRIMARY KEY,
nome_item VARCHAR(100) NOT NULL,
preco DEC(10,2) NOT NULL,
descricao VARCHAR(250) NOT NULL,
foto VARCHAR(250) NOT NULL,
status_produto ENUM('Disponível', 'Esgotado') DEFAULT 'Disponível' NOT NULL
);

## Tabela de Voluntários ##
CREATE TABLE voluntario
(
id_voluntario INT AUTO_INCREMENT PRIMARY KEY,
contato_emergencia VARCHAR(100) NOT NULL,
dias_disponiveis VARCHAR(100) NOT NULL,
habilidades VARCHAR(100) NOT NULL,
experiencia TEXT NOT NULL,
status_aprovacao ENUM('Aprovado', 'Pendente', 'Rejeitado') DEFAULT 'Pendente' NOT NULL,
id_usuario_fk INT NOT NULL,
FOREIGN KEY(id_usuario_fk) REFERENCES usuario (id_usuario) ON DELETE CASCADE
);

## Tabela de Empresas Parceiras ##
CREATE TABLE empresa_parceira
(
id_empresa INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
pessoas_contato VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL,
telefone CHAR(11) NOT NULL,
como_ajuda TEXT NOT NULL,
status_parceria ENUM('Aprovado', 'Pendente', 'Rejeitado') DEFAULT 'Pendente' NOT NULL
);

## Tabela de Solicitações de Adoção e Agendar Visitas ##
CREATE TABLE adocao_interesse
(
id_adocao INT AUTO_INCREMENT PRIMARY KEY,
tipo_moradia VARCHAR(30) NOT NULL,
possui_telas_protecao ENUM('Sim', 'Não') DEFAULT 'Não' NOT NULL,
possui_outros_animais ENUM('Sim', 'Não') DEFAULT 'Não' NOT NULL,
data_solicitacao DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
data_hora_escolhida DATETIME NOT NULL,
status_solicitacao ENUM('Aprovado', 'Visita Agendada', 'Rejeitado') DEFAULT 'Visita Agendada' NOT NULL,
id_usuario_fk INT NOT NULL,
FOREIGN KEY (id_usuario_fk) REFERENCES usuario (id_usuario) ON DELETE CASCADE,
id_gato_fk INT NOT NULL,
FOREIGN KEY (id_gato_fk) REFERENCES gato (id_gato) ON DELETE CASCADE
);

## Tabela de Pedidos do Brechó ##
CREATE TABLE pedido_brecho
(
id_pedido INT AUTO_INCREMENT PRIMARY KEY,
tipo_entrega VARCHAR(30) NOT NULL, -- 'Retirada na ONG' ou 'Entrega Local' --
taxa_entrega DECIMAL(10,2) DEFAULT 0.00,
data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
data_hora_retirada DATETIME, -- Agendamento para retirada na ONG --
valor_total DECIMAL(10,2) NOT NULL,
metodo_pagamento VARCHAR(30) NOT NULL, -- 'PIX', 'Cartão débito/crédito', 'Boleto'
status_pagamento ENUM('Aprovado', 'Pendente', 'Negado', 'Cancelado') DEFAULT 'Pendente' NOT NULL,
status_pedido ENUM('Concluído', 'Em Rota', 'Aguardando Retirada', 'Em Processamento') DEFAULT 'Em Processamento' NOT NULL,
id_usuario_fk INT NOT NULL,
FOREIGN KEY (id_usuario_fk) REFERENCES usuario (id_usuario) ON DELETE CASCADE,
id_item_fk INT NOT NULL,
FOREIGN KEY (id_item_fk) REFERENCES brecho (id_item) ON DELETE CASCADE
);

## Tabela de Transparência Financeira ##
CREATE TABLE financeiro
(
id_transacao INT AUTO_INCREMENT PRIMARY KEY,
tipo_movimentacao VARCHAR(20) NOT NULL, -- 'Entrada' ou 'Saída' --
descricao VARCHAR(250) NOT NULL,
valor DECIMAL(10,2) NOT NULL,
data_transacao DATE NOT NULL
);