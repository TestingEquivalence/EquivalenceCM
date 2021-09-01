source("testStatistic.R")
source("asymptoticTest.R")
source("power.R")
source("asymptoticTestBootstrapVariance.R")

H<-function(x){
  x
}

G<-function(x){
  pbeta(x,0.5,0.5)
}

dst=theoreticCMDistance(H,G)
dst$value
dst

rDistribution<-function(n){
  rbeta(n,0.5,0.5)
}

parameter=list()
parameter$F=H
parameter$alpha=0.05
parameter$n=100
parameter$nSimulation=1000

nSimulation=10000

res=simulatePower(asymptoticTestBootstrapVariance, parameter, 10000, rDistribution)
write.csv(res,"power.csv")
