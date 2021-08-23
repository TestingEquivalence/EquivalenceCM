source("testStatistic.R")
source("asymptoticTest.R")
library(goftest)
library(pracma)

#theoretical value
A<-function(x){
  pbeta(x,0.5,0.5)
}

f<-function(s,t){
  return((A(s)-s)*(A(t)-t)*(A(min(s,t))-A(s)*A(t)))
}

i2=integral2(f,0,1,0,1)
i2$Q*4

#calculate  variance of test statistics
n=20000

F<-function(x){
  x
}


t<-function(i){
  res=rbeta(n, 0.5,0.5)
  res=uTransform(res,F)
  return(testStatisticCM(res))
}

set.seed(18032021)
vt=sapply(c(1:10000), t)
var(vt)*n

# calculate asymptotic variance
n=10000

F<-function(x){
  x
}



av<-function(i){
  res=rbeta(n, 0.5,0.5)
  res=uTransform(res,F)
  asymptoticVariance(res)
}

set.seed(18032021)
vav=sapply(c(1:1000), av)
mean(vav)


