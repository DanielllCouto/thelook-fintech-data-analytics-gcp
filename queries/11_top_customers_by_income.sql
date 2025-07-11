-- Retorna os 10 principais clientes com maior renda anual, que já quitaram sua casa e têm empréstimos pendentes.
-- Fornece dados úteis para campanhas de fidelização, upsell e risco reduzido.
SELECT
  customer_id,
  annual_income,
  state,
  application.int_rate
FROM fintech.loan
JOIN fintech.customer ON loan.customer_id = customer.customer_id
WHERE customer.homeownership = 'Own' AND loan.loan_status = 'Open'
ORDER BY annual_income DESC
LIMIT 10;
