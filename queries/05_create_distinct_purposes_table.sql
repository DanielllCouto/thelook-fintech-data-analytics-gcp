-- Cria a tabela 'loan_purposes' com propósitos únicos de empréstimos.
-- Útil para relatórios e análise de frequências sem duplicação.
CREATE TABLE fintech.loan_purposes AS
SELECT DISTINCT
  application.purpose AS purpose
FROM fintech.loan;
