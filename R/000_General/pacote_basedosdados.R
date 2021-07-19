# Author: Edneide Ramalho
# Subject: pacote base dos dados
# Script construído com base na live da 
# Curso-R
# https://www.youtube.com/watch?v=8D4jK-YCxLU&t=849s

# install.packages("basedosdados")
library(basedosdados)

# O pacote só tem 4 funções exportadas -----

basedosdados::download()
basedosdados::get_billing_id()
basedosdados::read_sql()
basedosdados::set_billing_id()

# É bom dar um help nestas funções e ver o que cada uma delas faz.
# Vai no exemplo e roda 
?basedosdados::download

## Exemplo ----------------------------------
dir <- tempdir()

query <- "SELECT
pib.id_municipio,
pop.ano,
pib.PIB / pop.populacao * 1000 as pib_per_capita
FROM `basedosdados.br_ibge_pib.municipios` as pib
JOIN `basedosdados.br_ibge_populacao.municipios` as pop
ON pib.id_municipio = pop.id_municipio
LIMIT 5 "

data <- download(query, file.path(dir, "pib_per_capita.csv"))

