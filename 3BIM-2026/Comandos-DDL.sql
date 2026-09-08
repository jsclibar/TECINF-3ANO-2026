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

/* Lista a estrutura da tabela ALUNO */

DESC aluno

/* Adiciona a coluna email_principal na tabela ALUNO */

ALTER TABLE ALUNO ADD email_principal varchar(50);

/* Altera a coluna email_principal para email com o mesmo tipo varchar(50) */

ALTER TABLE ALUNO CHANGE COLUMN email email varchar(50);

/* Remove a coluna endereco da tabela ALUNO */

ALTER TABLE ALUNO DROP COLUMN endereco;

/* Altera o tamanho da coluna email para 150 caracteres */

ALTER TABLE ALUNO MODIFY COLUMN email varchar(150);