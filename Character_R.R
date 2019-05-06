library(neuralnet)
#Neural Net For R#
getwd()
ML1 <- read.csv("ML1.csv",header=TRUE)
View(ML1)
str(ML1)
ML1$R1<-(ML1$R1-min(ML1$R1))/(max(ML1$R1)-min(ML1$R1))
ML1$R2<-(ML1$R2-min(ML1$R2))/(max(ML1$R2)-min(ML1$R2))
ML1$R3<-(ML1$R3-min(ML1$R3))/(max(ML1$R3)-min(ML1$R3))
ind <- sample(2, nrow(ML1), replace = TRUE, prob = c(0.7,0.3))
set.seed(222)
training <- ML1[ind==1,]
n<-neuralnet(R1~alpha.x+R2+R3,data=training,hidden =5,err.fct = "ce",linear.output=FALSE)
head(output$net.result)
plot(n)
output <- compute(n, training[,-1])
head(training[-1,])
output <- compute(n, training[,-1])
p1 <- output$net.result
pred1 <- ifelse(p1>0.2, 1, 0)
tab1 <- table(pred1, training$R1)
tab1
1-sum(diag(tab1))/sum(tab1)
testing<-ML1[ind==2,]
output <- compute(n, testing[,-1])
p2 <- output$net.result
pred2 <- ifelse(p2>0.2, 1, 0)
tab2 <- table(pred2, testing$J1)
tab2
1-sum(diag(tab2))/sum(tab2)
