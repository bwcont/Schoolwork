#########

data1 <- matrix(nrow = 3, ncol = 4)
data1[,1] <- c(0,2,7)
data1[,2] <- c(500000000,
               3000000000,
               5000000000)
data1[,3] <- c(700000000,
               3000000000,
               16000000)
data1[,4] <- c(700000000,
               17000000000,
               14000000000)
data1 <- as.data.frame(data1)

Day <- data1[,1]
Condition.1 <-data1[,2]
Condition.2 <-data1[,3]
Condition.3 <-data1[,4]



plot(0,type='n', #make empty plot 
     xlim=c(0, 7), 
     ylim=c(0, 17000000000) 
     , xlab= 'Time (Days)', 
     ylab = 'Cell Count', 
     main = '  ', 
     pch=19, yaxt='n', axes=F, # removed axes
     cex.lab=1.05) # make empty plot to fill in

axis(1)
axis(2)
box()

points(Condition.3 ~ Day, col = "green", lwd = 1, cex = 1.2, lty = 1, pch = 16)

lines(Condition.3 ~ Day, col = "green", lwd = 1, cex = 1.2, lty = 1, pch = 16)

points(Condition.1 ~ Day, col = "red", lwd = 1, cex = 1.2, lty = 1, pch = 16) 

lines(Condition.1 ~ Day, col = "red", lwd = 1, cex = 1.2, lty = 1, pch = 16)

points(Condition.2 ~ Day, col = "blue", lwd = 1, cex = 1.2, lty = 1, pch = 16) 

lines(Condition.2 ~ Day, col = "blue", lwd = 1, cex = 1.2, lty = 1, pch = 16)



