source("testStatistic.R")
source("asymptoticTest.R")

#calculate  variance of test statistics
n=10000

F<-function(x){
  x
}


t<-function(i){
  res=rbeta(n, 1,2)
  res=uTransform(res,F)
  return(testStatisticCM(res))
}

set.seed(18032021)
vt=sapply(c(1:10000), t)
var(vt)*n

# calculate asymptotic variance
n=1000

F<-function(x){
  x
}



av<-function(i){
  res=rbeta(n, 1, 2)
  res=uTransform(res,F)
  asymptoticVariance(res)
}

set.seed(18032021)
vav=sapply(c(1:1000), av)
mean(vav)


