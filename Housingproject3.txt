#Santiago Fleiderman
# 7/10/2017
# Project 3
#CSC 4730


housing<-read.csv("housing_price.csv")

#Box Plot R Studio
attach(housing)
boxplot(squarefeet~no_rooms, 
        main = " The Room",
        xlab="squarefeet", ylab="numberRooms", 
        col=topo.colors(9))
legend("bottomright", inset=.02, title="Square Feet",
       c("4","5","6","7","8","9"), fill=topo.colors(9), horiz=TRUE, cex=0.8)
text(4,3.5,labels="SquareFeetNumberRooms")
arrows(4,3.5,5,1) #Simple Line Plot
abline(h=2)






# Line Graph
plot(housing$squarefeet,
     housing$price2014,
     type="l",
     xlab = "SquareFeet",
     ylab="Price",
     main="Housing Cost/Feet")
     text(1,800,labels="Money")
     arrows(1,800,2,600) #Simple Line Plot
    abline(h=400)





#legend("topright",inset=0.5,title="Legend",labels,lwd=2,col=c("red","blue"),lty=c(2,3))
#baseline.fillPeaks(spectra, lambda, hwi, it, int)
#abline(h=9)#baseline
#arrows(200,400000,2003,4900000)
#text(1999,3800000,labels="4.9M")

#x can be a formula of the form ~x|g1*g2 lattice
#indicating that histograms or kernel density
#estimates of the x variable should be produced conditioned on the levels of the (optional) variables. x should be numeric.
# Need 10 charts 

library(package = "lattice")
densityplot(~housing$squarefeet | housing$no_rooms, 
            data=housing, 
            xlab = "SquareFeet",ylab="NumberofRooms",
            main="The Room")


histogram(~housing$squarefeet | housing$no_rooms,
          xlab = "SquareFeet",ylab="Number rooms",
          data=housing, main="The Room")

install.packages("ggplot2")
library(ggplot2)
#ggplot
qplot(housing$squarefeet,
      housing$no_rooms,
      xlab = "SquareFeet",ylab="Number Rooms",
      data=housing,
      main= "The Room")


