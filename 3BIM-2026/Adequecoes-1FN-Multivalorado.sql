-- =====================================================
-- CRIAÇÃO DO BANCO DE DADOS
-- =====================================================

CREATE DATABASE IF NOT EXISTS escola_horizonte;

USE escola_horizonte;


-- =====================================================
-- LIMPEZA DAS TABELAS
-- =====================================================
-- Primeiro remove a tabela filha e depois a tabela pai,
-- pois TELEFONE possui uma chave estrangeira para ALUNO.

DROP TABLE IF EXISTS TELEFONE;
DROP TABLE IF EXISTS ALUNO;


-- =====================================================
-- CRIAÇÃO DA TABELA ALUNO
-- =====================================================

CREATE TABLE ALUNO (
    idaluno INT AUTO_INCREMENT PRIMARY KEY,
    data_inscricao_curso DATE,
    logradouro VARCHAR(100),
    numero VARCHAR(10),
    complemento VARCHAR(20),
    bairro VARCHAR(30),
    cidade VARCHAR(50),
    estado CHAR(2),
    idade INT,
    sexo CHAR(1),
    valor_pago_curso DECIMAL(10,2),
    nome VARCHAR(50),
    email VARCHAR(150),
    ativo_sn INT
);


-- =====================================================
-- CRIAÇÃO DA TABELA TELEFONE
-- =====================================================

CREATE TABLE TELEFONE (
    idtelefone INT AUTO_INCREMENT PRIMARY KEY,
    fk_idaluno INT,
    numero VARCHAR(25),
    tipo VARCHAR(15)
);


-- =====================================================
-- CRIAÇÃO DA CHAVE ESTRANGEIRA
-- =====================================================
-- Relaciona TELEFONE com ALUNO.

ALTER TABLE TELEFONE
ADD CONSTRAINT fk_aluno_telefone
FOREIGN KEY (fk_idaluno)
REFERENCES ALUNO (idaluno);


-- =====================================================
-- INSERÇÃO DOS ALUNOS
-- =====================================================

INSERT INTO ALUNO (
    data_inscricao_curso,
    logradouro,
    numero,
    complemento,
    bairro,
    cidade,
    estado,
    idade,
    sexo,
    valor_pago_curso,
    nome,
    email,
    ativo_sn
)
VALUES
(
    '2026-08-20',
    'Rua das Flores',
    '123',
    '',
    'Vila Rezende',
    'Piracicaba',
    'SP',
    17,
    'F',
    850.00,
    'Maria da Silva',
    'maria.silva@email.com',
    1
),
(
    '2026-08-21',
    'Av. Independência',
    '850',
    'AP 73',
    'Cidade Alta',
    'Piracicaba',
    'SP',
    18,
    'M',
    1200.50,
    'Andre Santos',
    'andre.santos@email.com',
    1
),
(
    '2026-08-22',
    'Rua São José',
    '45',
    '',
    'Centro',
    'Limeira',
    'SP',
    19,
    'F',
    980.00,
    'Juliana Costa',
    'juliana.costa@email.com',
    1
),
(
    '2026-08-23',
    'Av. Brasil',
    '1020',
    '',
    'Centro',
    'Americana',
    'SP',
    20,
    'M',
    1100.00,
    'Lucas Oliveira',
    'lucas.oliveira@email.com',
    1
),
(
    '2026-08-24',
    'Rua XV de Novembro',
    '300',
    'AP 53',
    'São Dimas',
    'Piracicaba',
    'SP',
    17,
    'F',
    750.00,
    'Camila Costa',
    'camila.costa@email.com',
    0
),
(
    '2026-08-25',
    'Rua dos Ipês',
    '890',
    'CASA 1',
    'Campestre',
    'Piracicaba',
    'SP',
    21,
    'M',
    1300.00,
    'Fabio Ferreira',
    'fabio.ferreira@email.com',
    1
),
(
    '2026-08-26',
    'Av. Rio Claro',
    '510',
    '',
    'Vila Rezende',
    'Piracicaba',
    'SP',
    18,
    'F',
    890.00,
    'Fernanda Almeida',
    'fernanda.almeida@email.com',
    1
);


-- =====================================================
-- INSERÇÃO DOS TELEFONES
-- =====================================================
-- 2 alunos com 1 telefone
-- 4 alunos com 2 telefones
-- 1 aluno com 3 telefones

INSERT INTO TELEFONE (
    fk_idaluno,
    numero,
    tipo
)
VALUES

-- Maria da Silva - 1 telefone
(1, '(19) 99999-9999', 'Celular'),

-- Andre Santos - 1 telefone
(2, '(19) 99999-9998', 'Celular'),

-- Juliana Costa - 2 telefones
(3, '(19) 99999-9997', 'Celular'),
(3, '(19) 3433-1001', 'Residencial'),

-- Lucas Oliveira - 2 telefones
(4, '(19) 99999-9996', 'Celular'),
(4, '(19) 3406-2002', 'Comercial'),

-- Camila Costa - 2 telefones
(5, '(19) 99999-9995', 'Celular'),
(5, '(19) 3434-3003', 'Residencial'),

-- Fabio Ferreira - 2 telefones
(6, '(19) 99999-9994', 'Celular'),
(6, '(19) 3422-4004', 'Comercial'),

-- Fernanda Almeida - 3 telefones
(7, '(19) 99999-9993', 'Celular'),
(7, '(19) 3435-5005', 'Residencial'),
(7, '(19) 3412-6006', 'Comercial');


-- =====================================================
-- CONSULTAS
-- =====================================================

-- Exibe todos os alunos
SELECT * FROM ALUNO;

-- Exibe todos os telefones
SELECT * FROM TELEFONE;

-- Exibe os alunos com seus respectivos telefones

SELECT
    ALUNO.nome,
    TELEFONE.numero,
    TELEFONE.tipo
FROM ALUNO
INNER JOIN TELEFONE
    ON ALUNO.idaluno = TELEFONE.fk_idaluno;