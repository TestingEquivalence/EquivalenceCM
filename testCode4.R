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
