source("testStatistic.R")
source("asymptoticTest.R")

set.seed(18032021)
n=100
x=runif(n)

F<-function(x){
  x
}

parameter=list()
parameter$x=x
parameter$F=F
parameter$alpha=0.05

asymptoticTest(parameter)
