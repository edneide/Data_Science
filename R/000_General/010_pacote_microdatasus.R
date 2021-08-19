##========================================================================##
## Live da Curso-R: Colaborando com a comunidade: o pacote microdatasus   ##
## Data: 18/08/2021                                                       ##
##========================================================================##

# Instalando o pacote -----------------
devtools::install_github("rfsaldanha/microdatasus")

# Carregando o pacote -------------
library(microdatasus)

dados <- fetch_datasus(year_start = 2013, year_end = 2014, uf = "RJ", information_system = "SIM-DO")
dados <- process_sim(dados)

# Download: SIM, SINASC, SIH, CNES, SIA.