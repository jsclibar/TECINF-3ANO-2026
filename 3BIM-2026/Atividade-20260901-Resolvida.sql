-- =====================================================
-- CRIAÇÃO DO BANCO DE DADOS
-- =====================================================

CREATE DATABASE IF NOT EXISTS techelp;

USE techelp;


-- =====================================================
-- CRIAÇÃO DA TABELA
-- =====================================================

CREATE TABLE IF NOT EXISTS ATENDIMENTO (
    idatendimento INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(100),
    telefone VARCHAR(20),
    tipo_equipamento VARCHAR(30),
    marca VARCHAR(30),
    modelo VARCHAR(50),
    numero_serie VARCHAR(50),
    defeito_informado TEXT,
    data_entrada DATE,
    valor_orcamento DECIMAL(10,2),
    situacao VARCHAR(30)
);


-- =====================================================
-- LIMPEZA DOS DADOS
-- =====================================================
-- Permite executar o script novamente sem duplicar
-- os registros de exemplo.

TRUNCATE TABLE ATENDIMENTO;


-- =====================================================
-- INSERÇÃO DOS DADOS
-- =====================================================

INSERT INTO ATENDIMENTO (
    nome_cliente,
    telefone,
    tipo_equipamento,
    marca,
    modelo,
    numero_serie,
    defeito_informado,
    data_entrada,
    valor_orcamento,
    situacao
)
VALUES
(
    'Mariana Silva',
    '(19) 99999-1001',
    'Notebook',
    'Dell',
    'Inspiron 15',
    'DELL001',
    'Equipamento não liga.',
    '2026-09-01',
    450.00,
    'Aguardando orçamento'
),
(
    'Carlos Souza',
    '(19) 99999-1002',
    'Celular',
    'Samsung',
    'Galaxy A54',
    'SAM002',
    'Tela quebrada.',
    '2026-09-02',
    650.00,
    'Em manutenção'
),
(
    'Fernanda Costa',
    '(19) 99999-1003',
    'Notebook',
    'Lenovo',
    'IdeaPad 3',
    'LEN003',
    'Computador apresenta lentidão e travamentos.',
    '2026-09-03',
    380.00,
    'Em manutenção'
),
(
    'Lucas Almeida',
    '(19) 99999-1004',
    'Computador',
    'Dell',
    'OptiPlex 3000',
    'DELL004',
    'Computador reinicia sozinho.',
    '2026-09-04',
    720.00,
    'Aguardando orçamento'
),
(
    'Juliana Santos',
    '(19) 99999-1005',
    'Celular',
    'Motorola',
    'Moto G84',
    'MOT005',
    'Conector de carregamento com defeito.',
    '2026-09-05',
    300.00,
    'Entregue'
),
(
    'Rafael Oliveira',
    '(19) 99999-1006',
    'Notebook',
    'Acer',
    'Aspire 5',
    'ACE006',
    'Teclado com algumas teclas sem funcionar.',
    '2026-09-06',
    550.00,
    'Em manutenção'
),
(
    'Patricia Lima',
    '(19) 99999-1007',
    'Celular',
    'Apple',
    'iPhone 13',
    'APP007',
    'Bateria descarrega rapidamente.',
    '2026-09-07',
    890.00,
    'Aguardando orçamento'
);


-- =====================================================
-- CONSULTA INICIAL
-- =====================================================

SELECT * FROM ATENDIMENTO;


-- =====================================================
-- ALTERAÇÃO DOS DADOS
-- =====================================================

-- Altera o telefone de um cliente
UPDATE ATENDIMENTO
SET telefone = '(19) 98888-1111'
WHERE idatendimento = 1;


-- Altera o valor do orçamento de um atendimento
UPDATE ATENDIMENTO
SET valor_orcamento = 700.00
WHERE idatendimento = 2;


-- Altera a situação de um atendimento
UPDATE ATENDIMENTO
SET situacao = 'Pronto para retirada'
WHERE idatendimento = 3;


-- Altera mais de uma informação em um único comando
UPDATE ATENDIMENTO
SET
    telefone = '(19) 97777-4444',
    valor_orcamento = 800.00
WHERE idatendimento = 4;


-- =====================================================
-- CONSULTAS
-- =====================================================

-- 1. Lista todos os atendimentos
SELECT * FROM ATENDIMENTO;


-- 2. Exibe apenas o nome do cliente e a situação
SELECT nome_cliente, situacao
FROM ATENDIMENTO;


-- 3. Lista apenas os equipamentos da marca Dell
SELECT *
FROM ATENDIMENTO
WHERE marca = 'Dell';


-- 4. Lista atendimentos com orçamento superior a R$ 500,00
SELECT *
FROM ATENDIMENTO
WHERE valor_orcamento > 500.00;


-- 5. Lista atendimentos realizados após uma determinada data
SELECT *
FROM ATENDIMENTO
WHERE data_entrada > '2026-09-03';


-- 6. Lista os atendimentos em ordem alfabética pelo nome do cliente
SELECT *
FROM ATENDIMENTO
ORDER BY nome_cliente;


-- 7. Lista os atendimentos do maior para o menor valor do orçamento
SELECT *
FROM ATENDIMENTO
ORDER BY valor_orcamento DESC;


-- =====================================================
-- EXCLUSÃO DOS DADOS
-- =====================================================

-- Antes de excluir, verifica qual registro será afetado
SELECT *
FROM ATENDIMENTO
WHERE idatendimento = 7;

-- Exclui um atendimento específico
DELETE FROM ATENDIMENTO
WHERE idatendimento = 7;


-- Antes de excluir, verifica quais registros serão afetados
SELECT *
FROM ATENDIMENTO
WHERE idatendimento IN (2, 6);

-- Exclui mais de um atendimento em uma única instrução
DELETE FROM ATENDIMENTO
WHERE idatendimento IN (2, 6);


-- Antes de excluir, verifica quais registros serão afetados
SELECT *
FROM ATENDIMENTO
WHERE situacao = 'Entregue';

-- Exclui todos os atendimentos com situação "Entregue"
DELETE FROM ATENDIMENTO
WHERE situacao = 'Entregue';


-- =====================================================
-- CONSULTA FINAL
-- =====================================================

SELECT * FROM ATENDIMENTO;