/* Lista os bancos de dados */
SHOW DATABASES;

/* Cria o banco de dados escola_horizonte */
CREATE DATABASE escola_horizonte;

/* Deleta o banco de dados escola_horizonte */
DROP DATABASE escola_horizonte; 

/* Lista as tabelas do banco de dados */
SHOW TABLES;

/* Deleta a tabela ALUNO */
DROP TABLE ALUNO;

/* Seleciona o banco de dados escola_horizonte */
use escola_horizonte; 

/* Cria a tabela ALUNO com os campos idaluno, data_inscricao_curso, telefone, 
endereco, idade, sexo, valor_pago_curso, nome e ativo_sn */
CREATE TABLE ALUNO (
    idaluno int auto_increment PRIMARY KEY,
    data_inscricao_curso date,
    telefone varchar(20),
    endereco text,
    idade int,
    sexo char(1),
    valor_pago_curso float(10,2),
    nome varchar(50),
    ativo_sn int
);


/* Insere um registro na tabela ALUNO */
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
VALUES (
    '2026-08-20',
    '(19) 9999-9999',
    'Rua das Flores, 123 - Piracicaba/SP',
    17,
    'F',
    850.00,
    'Maria da Silva',
    1
);


/* Atualiza o telefone do aluno com idaluno = 1 */
UPDATE ALUNO
SET telefone = '(19) 99999-8888'
WHERE idaluno = 1;


/* Atualiza o valor pago pelo curso e o status ativo_sn do aluno com idaluno = 2 */
UPDATE ALUNO
SET
    valor_pago_curso = 950.00,
    ativo_sn = 0
    
WHERE idaluno = 2;

/* Deleta o registro do aluno com idaluno = 3 */
DELETE FROM ALUNO
WHERE idaluno = 3;

/* Deleta o registro do aluno com nome = 'Camila Costa' */
DELETE FROM ALUNO
WHERE nome = 'Camila Costa';

/* Deleta os registros dos alunos com idaluno = 2 e idaluno = 6 */
DELETE FROM ALUNO
WHERE idaluno IN (2, 6);

/* Deleta os registros dos alunos com idade maior ou igual a 20 anos */
DELETE FROM ALUNO
WHERE idade >= 20;

/* Deleta os registros dos alunos do sexo feminino. */
DELETE FROM ALUNO
WHERE sexo = 'F';