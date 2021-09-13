simulatePower<-function(test, parameter, nSimulation,rDistribution){
  set.seed(10071977)
  
  sim=list()
  for (i in c(1:nSimulation)){
    sim[[i]]=rDistribution(parameter$n)
  }
  
  res=rep(0,nSimulation)
  for (i in c(1:nSimulation)){
    parameter$x=sim[[i]]
    res[i]=test(parameter)
    print(i)
    
  }
  
  return(res)
}
theoreticCMDistance<-function(H,G){
  ff<-function(x){
    (H(x)-G(x))^2
  }
  integrate(ff,0,1)
}

