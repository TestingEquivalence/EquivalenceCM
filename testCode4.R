source("alternatives.R")

# test A

x=pA(0.1,2)
qA(x,2)

f<-function(x){
  dA(x,3)
}

integrate(f,0,1)

v=rA(3,2)
