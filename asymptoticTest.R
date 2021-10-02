asymptoticVariance<-function(U){
  r=0
  n=length(U)
  U=c(0,U,1)
  
  for (k in c(0:n)){
    for (l in c(0:n)){
      p1=min(k,l)/n-k*l/(n^2)
      
      p2=(l/n)*(U[l+2]-U[l+1])-0.5*(U[l+2]^2-U[l+1]^2)
      
      p3=(k/n)*(U[k+2]-U[k+1])-0.5*(U[k+2]^2-U[k+1]^2)
        
      r=r+p1*p2*p3
    }
  }
  return(4*r)
}

asymptoticTest<-function(parameter){
  #calculate asymptotic min eps
  U=uTransform(parameter$x, parameter$F)
  n=length(parameter$x)
  vol = asymptoticVariance(U)/n
  vol=sqrt(vol)
  qt=qnorm(1-parameter$alpha,0,1)
  
  distance=testStatisticCM(U)
  min_eps = distance + qt*vol
  return(min_eps)
}