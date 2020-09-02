#Definindo diretorio de trabalho
setwd("C:/Users/Tony/Documents/GitHub/Ideologia_Politica_55_Legis")
#Verificando Diretório
getwd()
#Importar nomes dos deputados e senadores da 55 legislatura  para um dataframe
##Pacote para ler dados excel
library(readxl)
##Criando worksheet
df_55_Legis <- read_excel("Votacao_Nominal_51_a_55.xlsx",sheet ="Leg. 55" , col_names=TRUE)
##Descrevendo o tipo das variáveis
str(df_55_Legis)
##Deixando uma base apenas com os nomes dos politicos e stados
colnames(df_55_Legis)
df_parlamentar_c = df_55_Legis[,c(2,4)]
##Descrevendo o tipo das variáveis
str(df_parlamentar_c)
###OBS:Nome na base da camara, assume-se que não há homonimos na mesma UF.
##Removendo nomes iguais
df_parlamentar_c=unique.data.frame(df_parlamentar_c)
##Contando políticos por UF
df_parlamentar_c$Estado.cat <- as.factor(df_parlamentar_c$Estado) #Necessário transformar chr em factor
summary(df_parlamentar_c$Estado.cat) #Contando
barplot(table(df_parlamentar_c$Estado.cat),
        main="Políticos por Estado 55 Legislatura",
        xlab="UF",
        ylab="Quantidade",
        border="red",
        density=10
) #Gráfico de Barras

##Verificando nomes dos politicos por UF
library(dplyr)
df_duplicates<-df_parlamentar_c %>%
        group_by(Parlamentar,Estado) %>%
        summarize(n=n()) #Agrupando nomes por UFs
filter(df_duplicates,n>1) #Filtrando para nomes duplicados
remove(df_duplicates) #Remvendo df de duplicados, nao há valores.

#Retirando acentos
source("func_rm_acento2.R") #Função externa para retirar acentos
df_parlamentar_c$Parlamentar<-rm_acento(df_parlamentar_c$Parlamentar) #Tirando acentos dos nomes
View(df_parlamentar_c)
