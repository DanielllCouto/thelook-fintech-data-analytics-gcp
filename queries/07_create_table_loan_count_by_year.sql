-- Cria uma nova tabela agregando a contagem de empréstimos emitidos por ano.
-- Ajuda a entender a evolução histórica da demanda de crédito.
CREATE TABLE fintech.loan_count_by_year AS
SELECT
  issue_year,
  COUNT(loan_id) AS total_loans
FROM fintech.loan
GROUP BY issue_year
ORDER BY issue_year;
