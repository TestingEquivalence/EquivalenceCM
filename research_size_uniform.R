source("testStatistic.R")
source("asymptoticTest.R")
source("size.R")
source("asymptoticTestBootstrapVariance.R")
source("empiricalBootstrapTest.R")

F<-function(x){
  x
}

parameter=list()
parameter$F=F
parameter$alpha=0.05
parameter$n=50
parameter$nSimulation=1000

nSimulation=10000

res=simulatePowerAtUniform(empiricalBootstrapTest, parameter, nSimulation)
write.csv(res,"power.csv")