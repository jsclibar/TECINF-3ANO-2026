/* Comandos DDL (Data Definition Language) */

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