source("testStatistic.R")
source("asymptoticTest.R")
library(goftest)

#check test statistic
set.seed(18032021)
n=100
res=runif(n)

F<-function(x){
  x
}

res=uTransform(res,F)
testStatisticCM(res)

h=cvm.test(res)
h$statistic/n

asymptoticVariance(res)

#check asymptotic variance
n=100

t<-function(i){
  res=runif(n)
  uTransform(res,F)
}

set.seed(18032021)
vt=sapply(c(1:10000), t)
sd(vt)^2

av<-function(i){
  res=runif(n)
  res=uTransform(res,F)
  asymptoticVariance(res)
}

set.seed(18032021)
vav=sapply(c(1:10000), av)
mean(vav)
