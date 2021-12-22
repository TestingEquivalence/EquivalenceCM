source("testStatistic.R")
source("asymptoticTest.R")
source("simulation/power.R")
source("asymptoticTestBootstrapVariance.R")
source("empiricalBootstrapTest.R")
source("BootstrapTestTPercentile.R")
source("distributions/alternatives.R")

pointNr=15
lsCDF=listCDF()

H<-function(x){
  x
}

G<-function(x){
  lsCDF[[pointNr]](x)
}

dst=theoreticCMDistance(H,G)
dst$value
dst

rDistribution<-function(n){
  rbeta(n,1,2)
}

for (n in c(50,100,200,500,1000)){
  parameter=list()
  parameter$F=H
  parameter$alpha=0.05
  parameter$n=n
  parameter$nSimulation=1000
  
  nSimulation=1000
  
  res=simulatePower(empiricalBootstrapTest, parameter, nSimulation, rDistribution)
  fn=paste0("power_eb_",parameter$n,".csv")
  write.csv(res,fn)
}
