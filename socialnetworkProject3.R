#Santiago Fleiderman
# 7/10/2017
# Project 3
#CSC 4730



Social<-read.csv("social_network.csv")

#Box Plot
attach(Social)
boxplot(Age~Times, 
        main = " Age&Times Logins",
        xlab="Age", ylab="Times Login", 
        col=topo.colors(11))
legend("top", inset=.02, title="Age&Times Logins",
       c("0","2","4","6","8","12","15","21","30","40","100"), fill=topo.colors(11), horiz=TRUE, cex=0.8)
text(15,30,labels="Logins")
arrows(10,30,20,30) #Simple Line Plot
abline(h=20) #Base Line






# Line Graph
plot(Social$Age,Social$Times,
     type="l",
     xlab = "Age",
     ylab="Times Login",
     main="Times Login Social Media")
text(10,600,labels="Logins")
arrows(10,400,20,600) #Simple Line Plot
abline(h=400)




#Comments
#legend("topright",inset=0.5,title="Legend",labels,lwd=2,col=c("red","blue"),lty=c(2,3))
#baseline.fillPeaks(spectra, lambda, hwi, it, int)
#abline(h=9)#baseline
#arrows(200,400000,2003,4900000) x1,y1, x2,y2
#text(1999,3800000,labels="4.9M")
#x can be a formula of the form ~x|g1*g2 lattice
#indicating that histograms or kernel density
#estimates of the x variable should be produced conditioned on the levels of the (optional) variables. x should be numeric.
# Need 10 charts 




#Latice charts
library(package = "lattice")
densityplot(~Social$Age|Social$Times, 
            data=housing, 
            xlab = "Age",
            ylab="Times Login",
            main="Times Login")


histogram(~Social$Age|Social$Times,
          xlab = "Age",
          ylab="Times Login",
          data=housing,
          main="Times Login Social Media")

#ggplot
install.packages("ggplot2")
library(ggplot2)
qplot(Social$Age,
      Social$Times,
      xlab = "Age",
      ylab="Times Login",
      data=Social,
      main= "Social Media Age Times Login")



