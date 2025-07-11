-- Retorna o valor total de empréstimos concedidos por ano, somando os valores de 'loan_amount'.
-- Serve como base para análises financeiras e fluxos de caixa ao longo do tempo.
SELECT
  issue_year,
  SUM(loan_amount) AS total_amount
FROM fintech.loan
GROUP BY issue_year
ORDER BY issue_year;

