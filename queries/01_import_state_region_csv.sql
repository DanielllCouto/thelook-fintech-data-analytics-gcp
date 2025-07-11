-- Importa dados de mapeamento de estados, sub-regiões e regiões dos EUA a partir de um arquivo CSV armazenado no Cloud Storage.
-- Cria ou sobrescreve a tabela 'state_region' no dataset 'fintech', que será usada para análises geográficas dos empréstimos.

LOAD DATA OVERWRITE fintech.state_region
(
  state STRING,
  subregion STRING,
  region STRING
)
FROM FILES (
  format = 'CSV',
  uris = ['gs://sureskills-lab-dev/future-workforce/da-capstone/temp_35_us/state_region_mapping/state_region_*.csv']
);
