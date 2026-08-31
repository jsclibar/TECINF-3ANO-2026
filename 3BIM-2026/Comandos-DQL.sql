/* Comandos DQL (Data Query Language) */

/* Seleciona todos os registros da tabela ALUNO */
SELECT * FROM ALUNO;

/* Seleciona os registros da tabela ALUNO onde o sexo é feminino */
SELECT * FROM ALUNO
WHERE sexo = 'F';

/* Seleciona os registros da tabela ALUNO onde a idade é maior ou igual a 18 anos */
SELECT * FROM ALUNO
WHERE idade >= 18;

/* Seleciona os registros da tabela ALUNO onde o aluno está ativo */
SELECT * FROM ALUNO
WHERE ativo_sn = 1;

/* Seleciona os registros onde o idaluno é 2, 4 ou 6 */
SELECT * FROM ALUNO
WHERE idaluno IN (2, 4, 6);

/* Seleciona apenas os nomes e telefones dos alunos, ordenados pelo nome */
SELECT nome, telefone
FROM ALUNO
ORDER BY nome;

/* Seleciona os alunos do sexo masculino */
SELECT *
FROM ALUNO
WHERE sexo = 'M';

/* Seleciona os alunos menores de 18 anos */
SELECT *
FROM ALUNO
WHERE idade < 18;

/* Seleciona os alunos que possuem idade entre 18 e 20 anos */
SELECT *
FROM ALUNO
WHERE idade BETWEEN 18 AND 20;

/* Seleciona os alunos cujo valor pago seja maior que R$ 1.000,00 */
SELECT *
FROM ALUNO
WHERE valor_pago_curso > 1000.00;

/* Seleciona os alunos inscritos após 22/08/2026 */
SELECT *
FROM ALUNO
WHERE data_inscricao_curso > '2026-08-22';

/* Seleciona os alunos cujo nome começa com a letra M */
SELECT *
FROM ALUNO
WHERE nome LIKE 'M%';

/* Seleciona os alunos cujo sobrenome seja Costa */
SELECT *
FROM ALUNO
WHERE nome LIKE '%Costa';

/* Seleciona os alunos cujo nome contenha a palavra "Silva" */
SELECT *
FROM ALUNO
WHERE nome LIKE '%Silva%';

/* Seleciona os alunos que não estão ativos */
SELECT *
FROM ALUNO
WHERE ativo_sn = 0;

/* Seleciona os alunos cujo sexo é diferente de feminino */
SELECT *
FROM ALUNO
WHERE sexo <> 'F';

/* Seleciona apenas nome, idade e telefone dos alunos */
SELECT nome, idade, telefone
FROM ALUNO;

/* Lista os alunos ordenados da maior para a menor idade */
SELECT *
FROM ALUNO
ORDER BY idade DESC;

/* Lista os alunos ordenados pelo valor pago (maior para o menor) */
SELECT *
FROM ALUNO
ORDER BY valor_pago_curso DESC;

/* Lista os alunos ordenados pela data de inscrição (mais recente primeiro) */
SELECT *
FROM ALUNO
ORDER BY data_inscricao_curso DESC;

/* Conta quantos alunos estão cadastrados */
SELECT COUNT(*) AS quantidade_alunos
FROM ALUNO;

/* Exibe o maior valor pago por um aluno */
SELECT MAX(valor_pago_curso) AS maior_valor
FROM ALUNO;

/* Exibe o menor valor pago por um aluno */
SELECT MIN(valor_pago_curso) AS menor_valor
FROM ALUNO;