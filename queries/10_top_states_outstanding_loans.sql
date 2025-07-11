-- Conta a quantidade de empréstimos pendentes por estado.
-- Retorna apenas os 10 estados com maior volume, permitindo priorização por risco regional.
SELECT
  state,
  COUNT(*) AS total_outstanding_loans
FROM fintech.loan
WHERE loan_status <> 'Fully Paid'
GROUP BY state
ORDER BY total_outstanding_loans DESC
LIMIT 10;
