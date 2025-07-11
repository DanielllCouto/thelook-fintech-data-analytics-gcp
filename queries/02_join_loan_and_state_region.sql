-- Realiza junção entre a tabela 'loan' e 'state_region' com base na coluna 'state'.
-- Essa união permite associar cada empréstimo à sua respectiva região.
SELECT
  lo.loan_id,
  lo.loan_amount,
  sr.region
FROM fintech.loan lo
INNER JOIN fintech.state_region sr
  ON lo.state = sr.state;
