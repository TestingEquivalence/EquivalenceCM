source("testStatistic.R")
source("asymptoticTest.R")
source("asymptoticTestBootstrapVariance.R")
source("BootstrapTestTPercentile.R")

# Application of the equivalence test to the uniform distribution on [0,1]
# You can apply the test to any other fixed distribution similarly

# cumulative distribution function (CDF) of the uniform distribution on [0,1] 
F<-function(x){
  x
}

# parameter for the equivalence test
parameter=list()
parameter$F=F # CDF of uniform distribution on [0,1]
parameter$alpha=0.05 # significance level for the test
parameter$n=100 # number of observations in sample
parameter$nSimulation=1000 # number of samples in case of bootstrap test


# simulate a sample from the uniform distribution on [0,1]
set.seed(1012021)
parameter$x=runif(parameter$n)

# apply 3 variants of the equivalence test 
# each test version return the minimum to
asymptoticTest(parameter) # asymptotic test


