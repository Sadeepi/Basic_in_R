setwd("E:\\Education\\R files\\R codes")
data=read.csv("iris.CSV")                       # To import .csv file

colnames(data)=c("SL","SW","PL","PW","Spec")
head(data)

data$MeanL=(data$SL+data$PL)/2             # Mean of SL and PL
data$MeanW=(data$SW+data$PW)/2             # Mean of SW and PW
head(data)


write.csv(data,"iris_modified1.CSV")       # .csv file is saved in the working directory

# To create .csv file ion another place (except working directory)
write.csv(data,"E:\\Education\\R_Samadhi_sir\\iris_mod.CSV",row.names=FALSE)
