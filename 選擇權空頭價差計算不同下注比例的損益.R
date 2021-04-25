PL=c(-51/51,-25.5/51,+24.5/51,+49/51)
pb=c(25/100,10/100,35/100,30/100)
sum(PL*pb)
B=-PL/min(PL)
return=NULL

for(f in seq(0,1,0.01)){
  return=c(return,prod((1+B*f)^(pb*1)))
}
OptF=tail(order(return),1) #看return值
#plot(return,type="l",col="red",main = paste0("Opt F: ",OptF-1, "%"))
#abline(v=OptF,lty=2,col="blue")

plot(return,type="l",lwd=2,col="red",xaxt="n"
     ,main = paste0("Opt F: ",OptF-1, "%"))
axis(1,seq(0,100,1),seq(0,1,0.01))
abline(h=1,lty=2,col="green")
abline(v=OptF,lty=2,col="blue")