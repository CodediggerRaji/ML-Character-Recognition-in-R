library(neuralnet)
#Neural Net For I#
ML2<-read.csv("ML2.csv")
View(ML2)
str(ML2)
ML2$I1<-(ML2$I1-min(ML2$I1))/(max(ML2$I1)-min(ML2$I1))
ML2$I2<-(ML2$I2-min(ML2$I2))/(max(ML2$I2)-min(ML2$I2))
ML2$I3<-(ML2$I3-min(ML2$I3))/(max(ML2$I3)-min(ML2$I3))
set.seed(222)
ind1 <- sample(2, nrow(ML2), replace = TRUE, prob = c(0.7,0.3))
training1 <- ML2[ind1==1,]
n1<-neuralnet(I1~alpha.x+I2+I3,data = training1,hidden = 15,err.fct = "ce",linear.output = FALSE)
plot(n1)
output <- compute(n1, training1[,-1])
read(output$net.result)
head(training[-1,])
output <- compute(n1, training1[,-1])
p3 <- output$net.result
pred3 <- ifelse(p3>0.2, 1, 0)
tab3 <- table(pred3, training1$I1)
tab3
1-sum(diag(tab3))/sum(tab3)
esting1<-ML2[ind1==2,]
output <- compute(n1, testing1[,-1])
p4 <- output$net.result
pred4 <- ifelse(p4>0.2, 1, 0)
tab4 <- table(pred4, testing1$I1)
tab4
1-sum(diag(tab4))/sum(tab4)
