source("alternatives.R")

# test A

x=pA(0.1,2)
qA(x,2)

f<-function(x){
  dA(x,3)
}

integrate(f,0,1)

v=rA(3,2)

#test B
k=5
x1=pB(0.1,k)
x2=pB(0.5,k)
x3=pB(0.9,k)

f<-function(x){
  r=sapply(x, dB, k)
}

integrate(f,0,1)

qB(x1,k)
qB(x2,k)
qB(x3,k)

v=rB(10,2)

#test C
k=3
x1=pC(0.1,k)
x2=pC(0.5,k)
x3=pC(0.9,k)

f<-function(x){
  r=sapply(x, dC, k)
}

integrate(f,0,1)

qC(x1,k)
qC(x2,k)
qC(x3,k)

v=rC(10,2)
