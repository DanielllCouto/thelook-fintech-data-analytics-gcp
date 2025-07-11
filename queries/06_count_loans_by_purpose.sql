-- Conta a quantidade de empréstimos para cada propósito listado.
-- Útil para entender a frequência e distribuição dos motivos dos empréstimos.
SELECT
  application.purpose AS purpose,
  COUNT(*) AS total_loans
FROM fintech.loan
GROUP BY application.purpose
ORDER BY total_loans DESC;
