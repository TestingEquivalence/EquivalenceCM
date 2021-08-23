source("testStatistic.R")
source("asymptoticTest.R")
library(goftest)
library(pracma)

#check test statistic
set.seed(18032021)
n=10
res=runif(n)

F<-function(x){
  x
}

testStatistic3<-function(U){
  f=ecdf(U)
  n=length(U)
  ff<-function(x){
    (f(x)-x)^2
  }
  integrate(ff,0,1, subdivisions = n*100)
}

testStatisticCM2<-function(U){
  r=0
  
  f=ecdf(U)
  n=length(U)
  U=c(0,U,1)
  
  ff<-function(x){
    (f(x)-x)^2
  }
  
  for (i in c(0:n)){
    #s=integrate(ff,U[i+1],U[i+2])
    s=(U[i+2]-i/n)^3-(U[i+1]-i/n)^3
    r=r+s
  }
  return(r/3)
}


res=uTransform(res,F)
testStatisticCM(res)

h=cvm.test(res)
h$statistic/n

testStatisticCM2(res)
testStatistic3(res)


