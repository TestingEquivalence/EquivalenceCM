source("testStatistic.R")
source("asymptoticTest.R")
source("power.R")
source("asymptoticTestBootstrapVariance.R")
source("empiricalBootstrapTest.R")
source("BootstrapTestTPercentile.R")

H<-function(x){
  x
}

G<-function(x){
  pbeta(x,0.5,1.0)
}

dst=theoreticCMDistance(H,G)
dst$value
dst

rDistribution<-function(n){
  rbeta(n,0.5,1.0)
}

parameter=list()
parameter$F=H
parameter$alpha=0.05
parameter$n=1000
parameter$nSimulation=1000

nSimulation=10000

res=simulatePower(empiricalBootstrapTest, parameter, nSimulation, rDistribution)
write.csv(res,"power_eb_1000.csv")
