-- Cria a tabela 'loan_with_region' com base nos dados unidos das tabelas 'loan' e 'state_region'.
-- Essa tabela pode ser usada em ferramentas externas como Google Sheets.
CREATE OR REPLACE TABLE fintech.loan_with_region AS
SELECT
  lo.loan_id,
  lo.loan_amount,
  sr.region
FROM fintech.loan lo
INNER JOIN fintech.state_region sr
  ON lo.state = sr.state;
