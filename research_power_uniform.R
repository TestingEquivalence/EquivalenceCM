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
  pbeta(x,0.5,1.5)
}

dst=theoreticCMDistance(H,G)
dst$value
dst

rDistribution<-function(n){
  rbeta(n,0.5,1.5)
}

for (n in c(50,100,200,500,1000)){
  parameter=list()
  parameter$F=H
  parameter$alpha=0.05
  parameter$n=n
  parameter$nSimulation=1000
  
  nSimulation=1000
  
  res=simulatePower(asymptoticTest, parameter, nSimulation, rDistribution)
  fn=paste0("power_as_",parameter$n,".csv")
  write.csv(res,fn)
}
