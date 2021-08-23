uTransform<-function(X,F){
  X=sort(X)
  U=F(X)
  return(U)
}

testStatisticCM<-function(U){
  n=length(U)
  j=c(1:n)
  v=U-(2*j-1)/(2*n)
  v=v*v
  w=sum(v)+1/(12*n)
  return(w/n)
}

