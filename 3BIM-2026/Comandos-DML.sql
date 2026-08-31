/* Comandos DML (Data Manipulation Language) */

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

/* Deleta os registros dos alunos do sexo feminino */
DELETE FROM ALUNO
WHERE sexo = 'F';