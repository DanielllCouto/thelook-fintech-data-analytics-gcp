-- Consulta a tabela de empréstimos para obter o propósito do empréstimo de cada cliente.
-- A coluna 'application' é um registro (struct) e precisa ser desmembrada usando notação por ponto.
SELECT
  loan_id,
  application.purpose
FROM fintech.loan;
