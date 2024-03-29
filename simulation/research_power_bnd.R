source("testStatistic.R")
source("asymptoticTest.R")
source("simulation/power.R")
source("asymptoticTestBootstrapVariance.R")
source("empiricalBootstrapTest.R")
source("BootstrapTestTPercentile.R")
source("distributions/alternatives.R")
source("distributions/mixedDistribution.R")

#1:27
for (pointNr in c(1:27)){
  epsilon=0.0012
  n=1000
  
  
  lsCDF=listCDF()
  lsR=listRDG()
  
  H<-function(x){
    x
  }
  
  G<-function(x){
    lsCDF[[pointNr]](x)
  }
  
  #check the point
  dst=theoreticCMDistance(H,G)
  if (dst$value<epsilon) {next}
  
  #find mixed boundary point
  w=boundaryPoint(epsilon, G)
  
  #check the boundary point
  mixedF<-function(x){
    pMixed(x,w,H,G)
  }
  
  theoreticCMDistance(H,mixedF)
  
  #define generator for the boundary point
  rDistribution<-function(x){
    rMixed(n,w,runif,lsR[[pointNr]])
  }
  
  parameter=list()
  parameter$F=H
  parameter$alpha=0.05
  parameter$n=n
  parameter$nSimulation=1000
    
  nSimulation=1000
    
  res=simulatePower(empiricalBootstrapTest, parameter, nSimulation, rDistribution)
  fn=paste0("power_EB_",pointNr,"_n_",parameter$n,".csv")
  write.csv(res,fn)
}
 