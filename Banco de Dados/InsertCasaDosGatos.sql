USE CasaDosGatos;

# Tabela: Usuários (Administradores, Voluntários e Comuns)
INSERT INTO usuario (nome, cpf, email, senha_hash, telefone, cep, logradouro, numero, cidade, estado, tipo_usuario)
VALUES
('Juliana Mendes (Admin)', '11122233344', 'admin.juliana@casadegatos.org', '$2a$12$eImiTXuWVxfM37uY4JANjOL.81F8RzWpT2L5Q5aG7yq/H8kG.', '16990001111', '14800000', 'Avenida España', '100', 'Araraquara', 'SP', 'Administrador'),
('Roberto Carlos (Admin)', '22233344455', 'admin.roberto@casadegatos.org', '$2a$12$eImiTXuWVxfM37uY4JANjOL.81F8RzWpT2L5Q5aG7yq/H8kG.', '16990002222', '14801000', 'Rua São Bento', '500', 'Araraquara', 'SP', 'Administrador'),
('Carlos Eduardo Souza', '98765432100', 'carlos.eduardo@email.com', '$2a$12$eImiTXuWVxfM37uY4JANjOL.81F8RzWpT2L5Q5aG7yq/H8kG.', '16992223344', '14801000', 'Avenida España', '420', 'Araraquara', 'SP', 'Voluntário'),
('Fernanda Rocha', '32165498711', 'fernanda.rocha@email.com', '$2a$12$eImiTXuWVxfM37uY4JANjOL.81F8RzWpT2L5Q5aG7yq/H8kG.', '16994445566', '14803000', 'Avenida Brasil', '1500', 'Araraquara', 'SP', 'Voluntário'),
('Beatriz Oliveira', '15975348622', 'beatriz.oliveira@email.com', '$2a$12$eImiTXuWVxfM37uY4JANjOL.81F8RzWpT2L5Q5aG7yq/H8kG.', '16996667788', '14805000', 'Rua 9 de Julho', '810', 'Araraquara', 'SP', 'Voluntário'),
('Ana Paula Silva', '12345678901', 'ana.silva@email.com', '$2a$12$eImiTXuWVxfM37uY4JANjOL.81F8RzWpT2L5Q5aG7yq/H8kG.', '16991112233', '14800000', 'Rua São Bento', '1050', 'Araraquara', 'SP', 'Comum'),
('Mariana Costa Lima', '45678912304', 'mariana.costa@email.com', '$2a$12$eImiTXuWVxfM37uY4JANjOL.81F8RzWpT2L5Q5aG7yq/H8kG.', '16993334455', '14802000', 'Rua Portugal', '88', 'Araraquara', 'SP', 'Comum'),
('Lucas Gabriel Mendes', '78912345688', 'lucas.mendes@email.com', '$2a$12$eImiTXuWVxfM37uY4JANjOL.81F8RzWpT2L5Q5aG7yq/H8kG.', '16995556677', '14804000', 'Rua Voluntários da Pátria', '302', 'Araraquara', 'SP', 'Comum'),
('Rafael Ribeiro', '85296374133', 'rafael.ribeiro@email.com', '$2a$12$eImiTXuWVxfM37uY4JANjOL.81F8RzWpT2L5Q5aG7yq/H8kG.', '16997778899', '14806000', 'Avenida Bento de Abreu', '95', 'Araraquara', 'SP', 'Comum'),
('Camila Martins', '96385274144', 'camila.martins@email.com', '$2a$12$eImiTXuWVxfM37uY4JANjOL.81F8RzWpT2L5Q5aG7yq/H8kG.', '16998889900', '14807000', 'Rua Humaitá', '1240', 'Araraquara', 'SP', 'Comum');

UPDATE usuario 
SET nome = 'Juliana Mendes' 
WHERE email = 'admin.juliana@casadegatos.org';

UPDATE usuario 
SET nome = 'Roberto Carlos' 
WHERE email = 'admin.roberto@casadegatos.org';

# Tabela: Catálogo de Gatos
INSERT INTO gato (nome, idade, raca, cor, castrado, vacinas, descricao, foto, status_gato)
VALUES
('Frajola', '2 anos', 'SRD', 'Preto e Branco', 'Sim', 'V4, Raiva', 'Gato muito dócil e brincalhão, se dá bem com outros animais.', 'frajola.jpg', 'Disponível'),
('Mimi', '6 meses', 'SRD', 'Escama de Tartaruga', 'Sim', 'V3', 'Filhote resgatada no centro, um pouco tímida no começo mas carinhosa.', 'mimi.jpg', 'Disponível'),
('Garfield', '4 anos', 'Persa', 'Caramelo', 'Sim', 'V4, Raiva, FeLV', 'Calmo, adora dormir no sol e sachê.', 'garfield.jpg', 'Adotado'),
('Simba', '1 ano', 'SRD', 'Amarelo Tabby', 'Sim', 'V4, Raiva', 'Muito ativo, gosta de arranhadores altos e bolinhas de lã.', 'simba.jpg', 'Disponível'),
('Luna', '3 anos', 'Siamês', 'Bege e Marrom', 'Sim', 'V4, Raiva', 'Muda e carinhosa, busca um lar calmo sem barulho.', 'luna.jpg', 'Adotado'),
('Oliver', '5 meses', 'SRD', 'Cinza', 'Não', 'V3', 'Resgatado em feira de adoção, extremamente brincalhão.', 'oliver.jpg', 'Disponível'),
('Pantera', '5 anos', 'SRD', 'Preto', 'Sim', 'V4, Raiva', 'Gato adulto super comportado, ideal para apartamentos.', 'pantera.jpg', 'Disponível'),
('Chiquinha', '2 meses', 'SRD', 'Tricolor', 'Não', 'Pendente (muito nova)', 'Filhote encontrada na Vila Xavier, precisa de atenção.', 'chiquinha.jpg', 'Disponível');

# Tabela: Produtos do Brechó
INSERT INTO brecho (nome_item, preco, descricao, foto, status_produto)
VALUES
('Camiseta ONG Casa dos Gatos - Tam M', 45.00, 'Camiseta 100% algodão com a logo da ONG.', 'camiseta_m.jpg', 'Disponível'),
('Arranhador para Gatos de Papelão', 35.50, 'Arranhador durável para proteger seus móveis.', 'arranhador.jpg', 'Disponível'),
('Caneca Personalizada Gatos', 25.00, 'Caneca de cerâmica 325ml estampada.', 'caneca.jpg', 'Esgotado'),
('Caminha Estofada Rosa', 65.00, 'Caminha macia e lavável para gatos até 6kg.', 'caminha_rosa.jpg', 'Disponível'),
('Kit Brinquedos (Ratinhos + Bolinhas)', 18.00, 'Conjunto com 5 brinquedos variados para gatos.', 'kit_brinquedos.jpg', 'Disponível'),
('Coleira com Guizo Ajustável', 12.00, 'Coleira com trava de segurança antipânico.', 'coleira.jpg', 'Disponível'),
('Ecobag Gatos Araraquara', 20.00, 'Bolsa ecológica de algodão cru com estampa exclusiva.', 'ecobag.jpg', 'Disponível');

UPDATE brecho 
SET nome_item = 'Camiseta ONG Casa dos Gatos',
    descricao = 'Camiseta 100% algodão com a logo da ONG, tamanho M.'
WHERE id_item = 1;

# Tabela: Voluntários
INSERT INTO voluntario (contato_emergencia, dias_disponiveis, habilidades, experiencia, status_aprovacao, id_usuario_fk)
VALUES
('Maria (Mãe) - 16998887766', 'Sábados e Domingos', 'Limpeza, Socialização de gatos', 'Já fui voluntário em abrigo por 1 ano.', 'Aprovado', 3),
('Jorge (Marido) - 16997776655', 'Quartas e Sextas', 'Veterinária, Aplicação de vacinas', 'Estudante de Medicina Veterinária na Unesp.', 'Aprovado', 4),
('Sonia (Mãe) - 16996665544', 'Terças e Quintas', 'Gestão de Redes Sociais, Fotografia', 'Trabalho com marketing digital.', 'Aprovado', 5);

# Tabela: Empresas Parceiras
INSERT INTO empresa_parceira (nome, pessoas_contato, email, telefone, como_ajuda, status_parceria)
VALUES
('PetShop Patinhas Feliz', 'Dr. Roberto / Juliana', 'contato@patinhasfeliz.com', '1633334444', 'Doação mensal de ração e desconto em consultas veterinárias.', 'Aprovado'),
('Gráfica Araraquara', 'Lucas Souza', 'atendimento@graficaara.com', '1633335555', 'Impressão gratuita de panfletos de feiras de adoção.', 'Aprovado'),
('Clínica Vet Care', 'Dra. Vanessa', 'contato@vetcare.com', '1633336666', 'Atendimento de emergência a preço de custo.', 'Aprovado'),
('Agropecuária Central', 'Marcos Toledo', 'vendas@agrocentral.com', '1633337777', 'Fornecimento de areia sanitária com 30% de desconto.', 'Pendente');

# Tabela: Solicitações de Adoção e Visitas
INSERT INTO adocao_interesse (tipo_moradia, possui_telas_protecao, possui_outros_animais, data_solicitacao, data_hora_escolhida, status_solicitacao, id_usuario_fk, id_gato_fk)
VALUES
('Apartamento', 'Sim', 'Não', '2026-10-10 10:30:00', '2026-10-12 14:00:00', 'Aprovado', 6, 3),
('Casa', 'Sim', 'Sim', '2026-10-15 16:20:00', '2026-10-18 10:00:00', 'Aprovado', 7, 5),
('Apartamento', 'Sim', 'Não', '2026-11-01 09:00:00', '2026-11-05 15:30:00', 'Visita Agendada', 8, 1),
('Casa', 'Não', 'Sim', '2026-11-03 14:15:00', '2026-11-08 11:00:00', 'Rejeitado', 9, 2),
('Apartamento', 'Sim', 'Não', '2026-11-09 11:45:00', '2026-11-12 16:00:00', 'Visita Agendada', 10, 4);

# Tabela: Pedidos do Brechó
INSERT INTO pedido_brecho (tipo_entrega, taxa_entrega, data_pedido, data_hora_retirada, valor_total, metodo_pagamento, status_pagamento, status_pedido, id_usuario_fk, id_item_fk)
VALUES
('Entrega Local', 10.00, '2026-10-20 11:00:00', NULL, 55.00, 'PIX', 'Aprovado', 'Concluído', 6, 1),
('Retirada na ONG', 0.00, '2026-10-25 15:45:00', '2026-10-27 13:00:00', 35.50, 'Cartão débito/crédito', 'Aprovado', 'Concluído', 3, 2),
('Retirada na ONG', 0.00, '2026-11-02 09:20:00', '2026-11-04 14:00:00', 25.00, 'PIX', 'Aprovado', 'Concluído', 7, 3),
('Entrega Local', 10.00, '2026-11-05 16:10:00', NULL, 75.00, 'PIX', 'Aprovado', 'Em Rota', 8, 4),
('Entrega Local', 10.00, '2026-11-08 18:30:00', NULL, 28.00, 'Boleto', 'Pendente', 'Em Processamento', 9, 5),
('Retirada na ONG', 0.00, '2026-11-10 10:00:00', '2026-11-11 15:00:00', 20.00, 'PIX', 'Aprovado', 'Aguardando Retirada', 10, 7);

# Tabela: Transparência Financeira
INSERT INTO financeiro (tipo_movimentacao, descricao, valor, data_transacao)
VALUES
('Entrada', 'Doação via PIX - Campanha de Ração de Outubro', 1200.00, '2026-10-01'),
('Saída', 'Compra de vacinas V4 na clínica veterinária', 450.00, '2026-10-05'),
('Entrada', 'Venda de itens no Brechó (Pedido #1)', 55.00, '2026-10-20'),
('Saída', 'Pagamento de conta de energia da sede da ONG', 185.40, '2026-10-22'),
('Entrada', 'Venda de itens no Brechó (Pedido #2)', 35.50, '2026-10-25'),
('Saída', 'Compra de 10 pacotes de Areia Sanitária', 220.00, '2026-10-28'),
('Entrada', 'Doação via PIX - Anônimo', 300.00, '2026-11-01'),
('Entrada', 'Venda de itens no Brechó (Pedido #3)', 25.00, '2026-11-02'),
('Saída', 'Atendimento de emergência veterinária - Filhotes resgatados', 380.00, '2026-11-04'),
('Entrada', 'Venda de itens no Brechó (Pedido #4)', 75.00, '2026-11-05'),
('Saída', 'Compra de ração filhote 15kg', 190.00, '2026-11-07');