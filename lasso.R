library(glmnet)
ori = read.csv("lasso30.csv",header = T,colClasses = "numeric")
test <- matrix(ori$ex1)
dic <- cbind(ori$ex2,ori$ex3,ori$ex4,ori$ex5,ori$ex6,ori$ex7,ori$ex8,ori$ex9,ori$ex10,ori$ex21,ori$ex22,ori$ex23,ori$ex24,ori$ex25,ori$ex26,ori$ex27,ori$ex28,ori$ex29,ori$ex30,all=T)
fit <-glmnet(x = dic,y=test,alpha=1)
plot(fit, xvar = "lambda", label = TRUE)
coef(fit, s=0.04688769522)
coef(fit, s=0.006604526709)
coef(fit, s=0.0008938254928)

coef(fit, s=fit$lambda)
fit$lambda
cvfit = cv.glmnet(x=dic, y=test)
plot(cvfit)
cvfit$lambda.min
