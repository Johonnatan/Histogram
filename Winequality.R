#Instalar pacotes
install.packages("caret", dependencies = TRUE)
install.packages("readr")
install.packages("psych")

#Carregar bibliotecas
library(caret)
library(readr)
library(psych)

#Carregar base de dados
dados <- read.csv(file.choose())

#Verificar classe
class(dados)

#Exibir as primeiras cinco linhas
head(dados)

#Mostrar o número de linhas e colunas
nrow(dados)
ncol(dados)

#Verificar o valor das colunas
str(dados)

#Plotar histogramas com linha de densidade
plotnumber <- 1

for (i in dados){
  if (plotnumber <= 12){
    hist(dados[,plotnumber], 
        freq = FALSE,
        main='',
        xlab=(sub(".", " ", colnames(dados[plotnumber]),fixed=TRUE)))
    lines(density(dados[,plotnumber]), lwd = 2, col = "red")
  }
  plotnumber<- plotnumber+ 1
}

#Plotar uma matriz de correlação
corPlot(dados, cex = 0.37, upper = FALSE, diag = FALSE)
