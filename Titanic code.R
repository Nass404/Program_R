Titanic

help(Titanic)

dfTitanic <- data.frame(Titanic)
dfTitanic

vecUmur <- c(19, 20, 21)
vecNama <- c("Anas", "Ahmad", "Frans")
listNilai <- list("Teks", 40, 89, "dsb")
dfmhs <- data.frame(vecUmur, vecNama)

dfmhs

library(data.table)
data_Titanic = data.table(dfTitanic)
head(data_Titanic)
total_passanger <- data_Titanic[, sum(Freq)]
total_passanger

freq_surv <- data_Titanic[, list(n=sum(Freq)), by='Survived']
freq_surv

freq_surv[, percent := n / sum(n)]
freq_surv