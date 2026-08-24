CREATE DATABASE IF NOT EXISTS escola_horizonte;

USE escola_horizonte;

CREATE TABLE IF NOT EXISTS ALUNO (
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

-- Limpa a tabela e reinicia o AUTO_INCREMENT
TRUNCATE TABLE ALUNO;

-- Insere os registros
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
('2026-08-20', '(19) 99999-9999', 'Rua das Flores, 123', 17, 'F', 850.00, 'Maria da Silva', 1),
('2026-08-21', '(19) 99999-9998', 'Av. Independência, 850', 18, 'M', 1200.50, 'Andre Santos', 1),
('2026-08-22', '(19) 99999-9997', 'Rua São José, 45', 19, 'F', 980.00, 'Juliana Costa', 1),
('2026-08-23', '(19) 99999-9996', 'Av. Brasil, 1020', 20, 'M', 1100.00, 'Lucas Oliveira', 1),
('2026-08-24', '(19) 99999-9995', 'Rua XV de Novembro, 300', 17, 'F', 750.00, 'Camila Costa', 0),
('2026-08-25', '(19) 99999-9994', 'Rua dos Ipês, 890', 21, 'M', 1300.00, 'Fabio Ferreira', 1),
('2026-08-26', '(19) 99999-9993', 'Av. Rio Claro, 510', 18, 'F', 890.00, 'Fernanda Almeida', 1);

SELECT * FROM ALUNO;