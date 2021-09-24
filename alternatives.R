# The alternatives are from the article
# Stephens, M.A., 1974. EDF statistics for goodness of fit and some comparisons. 
# Journal of the American Statistical Association 69, 730737.

dA<-function(x, k){
  return(k*((1-x)^(k-1)))
}

pA<-function(x,k){
  return(1-(1-x)^k)
}

qA<-function(x,k){
  return(1-(1-x)^(1/k))
}

rA<-function(n,k){
  v=runif(n)
  r=sapply(v, qA,k)
  return(r)
}