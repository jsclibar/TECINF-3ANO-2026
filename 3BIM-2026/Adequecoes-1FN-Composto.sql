-- =====================================================
-- CRIAÇÃO DO BANCO DE DADOS
-- =====================================================

CREATE DATABASE IF NOT EXISTS escola_horizonte;

USE escola_horizonte;


-- =====================================================
-- REMOVE A TABELA, CASO JÁ EXISTA
-- =====================================================

DROP TABLE IF EXISTS ALUNO;


-- =====================================================
-- CRIAÇÃO INICIAL DA TABELA ALUNO
-- =====================================================
-- Neste primeiro momento, o endereço está armazenado
-- em um único campo.

CREATE TABLE ALUNO (
    idaluno INT AUTO_INCREMENT PRIMARY KEY,
    data_inscricao_curso DATE,
    telefone VARCHAR(20),
    endereco TEXT,
    idade INT,
    sexo CHAR(1),
    valor_pago_curso DECIMAL(10,2),
    nome VARCHAR(50),
    ativo_sn INT
);


-- =====================================================
-- INSERÇÃO DOS REGISTROS
-- =====================================================

INSERT INTO ALUNO (
    data_inscricao_curso,
    telefone,
    endereco,
    idade,
    sexo,
    valor_pago_curso,
    nome,
    ativo_sn
)
VALUES
(
    '2026-08-20',
    '(19) 99999-9999',
    'Rua das Flores, 123, Vila Rezende, Piracicaba - SP',
    17,
    'F',
    850.00,
    'Maria da Silva',
    1
),
(
    '2026-08-21',
    '(19) 99999-9998',
    'Av. Independência, 850 - AP 73, Cidade Alta, Piracicaba - SP',
    18,
    'M',
    1200.50,
    'Andre Santos',
    1
),
(
    '2026-08-22',
    '(19) 99999-9997',
    'Rua São José, 45, Centro, Limeira - SP',
    19,
    'F',
    980.00,
    'Juliana Costa',
    1
),
(
    '2026-08-23',
    '(19) 99999-9996',
    'Av. Brasil, 1020, Centro, Americana - SP',
    20,
    'M',
    1100.00,
    'Lucas Oliveira',
    1
),
(
    '2026-08-24',
    '(19) 99999-9995',
    'Rua XV de Novembro, 300 - AP 53, São Dimas, Piracicaba - SP',
    17,
    'F',
    750.00,
    'Camila Costa',
    0
),
(
    '2026-08-25',
    '(19) 99999-9994',
    'Rua dos Ipês, 890 - CASA 1, Campestre, Piracicaba - SP',
    21,
    'M',
    1300.00,
    'Fabio Ferreira',
    1
),
(
    '2026-08-26',
    '(19) 99999-9993',
    'Av. Rio Claro, 510, Vila Rezende, Piracicaba - SP',
    18,
    'F',
    890.00,
    'Fernanda Almeida',
    1
);


-- =====================================================
-- CONSULTA DA ESTRUTURA INICIAL
-- =====================================================

SELECT * FROM ALUNO;


-- =====================================================
-- ADICIONA A COLUNA EMAIL
-- =====================================================

ALTER TABLE ALUNO
ADD COLUMN email VARCHAR(150);


-- =====================================================
-- ADEQUAÇÃO DO ENDEREÇO
-- =====================================================
-- O campo endereço possui várias informações.
-- Para tornar os dados mais organizados, serão
-- criadas colunas específicas para cada informação.

ALTER TABLE ALUNO
ADD COLUMN logradouro VARCHAR(100);

ALTER TABLE ALUNO
ADD COLUMN numero VARCHAR(10);

ALTER TABLE ALUNO
ADD COLUMN complemento VARCHAR(20);

ALTER TABLE ALUNO
ADD COLUMN bairro VARCHAR(30);

ALTER TABLE ALUNO
ADD COLUMN cidade VARCHAR(50);

ALTER TABLE ALUNO
ADD COLUMN estado CHAR(2);


-- =====================================================
-- ATUALIZAÇÃO DOS REGISTROS
-- =====================================================
-- Separa as informações do endereço nas novas colunas.

UPDATE ALUNO
SET
    logradouro = 'Rua das Flores',
    numero = '123',
    complemento = '',
    bairro = 'Vila Rezende',
    cidade = 'Piracicaba',
    estado = 'SP'
WHERE idaluno = 1;


UPDATE ALUNO
SET
    logradouro = 'Av. Independência',
    numero = '850',
    complemento = 'AP 73',
    bairro = 'Cidade Alta',
    cidade = 'Piracicaba',
    estado = 'SP'
WHERE idaluno = 2;


UPDATE ALUNO
SET
    logradouro = 'Rua São José',
    numero = '45',
    complemento = '',
    bairro = 'Centro',
    cidade = 'Limeira',
    estado = 'SP'
WHERE idaluno = 3;


UPDATE ALUNO
SET
    logradouro = 'Av. Brasil',
    numero = '1020',
    complemento = '',
    bairro = 'Centro',
    cidade = 'Americana',
    estado = 'SP'
WHERE idaluno = 4;


UPDATE ALUNO
SET
    logradouro = 'Rua XV de Novembro',
    numero = '300',
    complemento = 'AP 53',
    bairro = 'São Dimas',
    cidade = 'Piracicaba',
    estado = 'SP'
WHERE idaluno = 5;


UPDATE ALUNO
SET
    logradouro = 'Rua dos Ipês',
    numero = '890',
    complemento = 'CASA 1',
    bairro = 'Campestre',
    cidade = 'Piracicaba',
    estado = 'SP'
WHERE idaluno = 6;


UPDATE ALUNO
SET
    logradouro = 'Av. Rio Claro',
    numero = '510',
    complemento = '',
    bairro = 'Vila Rezende',
    cidade = 'Piracicaba',
    estado = 'SP'
WHERE idaluno = 7;


-- =====================================================
-- REMOVE O CAMPO ENDEREÇO
-- =====================================================
-- Após a migração das informações para as novas
-- colunas, o campo antigo deixa de ser necessário.

ALTER TABLE ALUNO
DROP COLUMN endereco;


-- =====================================================
-- CONSULTA FINAL
-- =====================================================

SELECT * FROM ALUNO;