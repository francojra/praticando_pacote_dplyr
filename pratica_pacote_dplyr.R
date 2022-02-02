
# Prática com o pacote dplyr ---------------------------------------------------------------------------------------------------------------

# Autora: Jeanne Franco --------------------------------------------------------------------------------------------------------------------

# Data: 01-02-2022 -------------------------------------------------------------------------------------------------------------------------

dados <- datasets::airquality # Carregar dados no dataset do R
dados # Verificar dados no console do R
View(dados) # Visualizar conjunto de dados em nova janela

library(dplyr) # Carregar pacote dplyr

dados %>%
  select(Solar.R, Month) %>% # Selecionar duas variáveis
  filter(Month == "7") %>% # Filtrar apenas o mês 7
  summarise(mean(Solar.R)) # Calcular a média
  
dados %>%
  group_by(Month) %>%
  arrange(desc(Wind)) # Coloca os valores da variável Wind em ordem decrescente

dados %>%
  select(Temp, Month) %>%
  filter(Month == "9") %>%
  summarise(mean(Temp))

d <- dados %>%
  select(Day, Ozone) %>%
  group_by(Day) %>%
  arrange(Ozone) # Agrupa os valores do menor para o maior
d
 
View(d)
