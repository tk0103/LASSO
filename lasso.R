library(glmnet)
ori = read.csv("lasso30.csv",header = T,colClasses = "numeric")
test <- matrix(ori$ex1)
dic <- cbind(ori$ex2,ori$ex3,ori$ex4,ori$ex5,ori$ex6,ori$ex7,ori$ex8,ori$ex9,ori$ex10,ori$ex21,ori$ex22,ori$ex23,ori$ex24,ori$ex25,ori$ex26,ori$ex27,ori$ex28,ori$ex29,ori$ex30,all=T)
fit <-glmnet(x = dic,y=test,alpha=1)
plot(fit, xvar = "lambda", label = TRUE)

fit$lambda
fit$coef
