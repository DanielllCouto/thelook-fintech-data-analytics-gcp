-- Calcula o valor total de empréstimos pendentes (não totalmente pagos).
-- Útil para indicadores de exposição de crédito e risco da carteira.
SELECT
  COALESCE(SUM(
    CASE
      WHEN loan.loan_status <> 'Fully Paid' OR loan.loan_status IS NULL THEN loan.loan_amount
      ELSE NULL
    END
  ), 0) AS loan_outstanding_loans_amount
FROM `cloud-training-demos.fintech.loan` AS loan;
