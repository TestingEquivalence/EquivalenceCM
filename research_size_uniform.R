source("testStatistic.R")
source("asymptoticTest.R")
source("size.R")

F<-function(x){
  x
}

parameter=list()
parameter$F=F
parameter$alpha=0.05
parameter$n=500

nSimulation=10000

res=simulatePowerAtUniform(asymptoticTest, parameter, nSimulation)
write.csv(res,"power.csv")