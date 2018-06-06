

####11111111#####

data1 <- matrix(nrow = 3, ncol = 3)
data2 <- matrix(nrow = 3, ncol = 3)
data3 <- matrix(nrow = 3, ncol = 3)

data1[,1] <- c(0,2,7)
data1[,2] <- c(100000,
               7000000,
               100000000)
data1[,3] <- c(500000000,
               3000000000,
               5000000000)

data3[,1] <- c(0,2,7)
data3[,2] <- c(7000,
               14000,
               1)
data3[,3] <- c(700000000,
               17000000000,
               14000000000)

data2[,1] <- c(0,2,7)
data2[,2] <- c(10000,
               20000,
               1)
data2[,3] <- c(700000000,
               3000000000,
               16000000)


data1 <- as.data.frame(data1)

Day <- data1[,1]
Aged.Cells <-data1[,2]
Young.Cells <-data1[,3]




plot(0,type='n', #make empty plot 
     xlim=c(0, 7), 
     ylim=c(1, 60000000000) 
     , xlab= 'Time (Days)', 
     ylab = 'Cell Count (CFU/mL)', 
     main = 'Condition 1', 
     pch=19, yaxt='n', axes=F, # removed axes
     cex.lab=1.05, log = 'y') # make empty plot to fill in

axis(1)
axis(2)
box()

points(Aged.Cells ~ Day, col = "olivedrab4", lwd = 1, cex = 1.2, lty = 1, pch = 16)

lines(Aged.Cells ~ Day, col = "olivedrab4", lwd = 2, cex = 1.2, lty = 1, pch = 16)


points(Young.Cells ~ Day, col = "indianred2", lwd = 1, cex = 1.2, lty = 1, pch = 16) 

lines(Young.Cells ~ Day, col = "indianred2", lwd = 2, cex = 1.2, lty = 1, pch = 16)

legend("topleft", legend=c('UnAged', 'Aged'), fill = c("indianred2","olivedrab4"), cex=0.9)

#####22222222####



data2 <- as.data.frame(data2)

Day <- data2[,1]
Aged.Cells2 <-data2[,2]
Young.Cells2 <-data2[,3]




plot(0,type='n', #make empty plot 
     xlim=c(0, 7), 
     ylim=c(1, 60000000000) 
     , xlab= 'Time (Days)', 
     ylab = 'Cell Count (CFU/mL)', 
     main = 'Condition 2', 
     pch=19, yaxt='n', axes=F, # removed axes
     cex.lab=1.05, log = 'y') # make empty plot to fill in

axis(1)
axis(2)
box()

points(Aged.Cells2 ~ Day, col = "olivedrab4", lwd = 1, cex = 1.2, lty = 1, pch = 16)

lines(Aged.Cells2 ~ Day, col = "olivedrab4", lwd = 2, cex = 1.2, lty = 1, pch = 16)


points(Young.Cells2 ~ Day, col = "indianred2", lwd = 1, cex = 1.2, lty = 1, pch = 16) 

lines(Young.Cells2 ~ Day, col = "indianred2", lwd = 2, cex = 1.2, lty = 1, pch = 16)

legend("topleft", legend=c('UnAged', 'Aged'), fill = c("indianred2","olivedrab4"), cex=0.9)


####3333333#####



data3 <- as.data.frame(data3)

Day <- data3[,1]
Aged.Cells3 <-data3[,2]
Young.Cells3 <-data3[,3]




plot(0,type='n', #make empty plot 
     xlim=c(0, 7), 
     ylim=c(1, 60000000000) 
     , xlab= 'Time (Days)', 
     ylab = 'Cell Count (CFU/mL)', 
     main = 'Condition 3', 
     pch=19, yaxt='n', axes=F, # removed axes
     cex.lab=1.05, log = 'y') # make empty plot to fill in

axis(1)
axis(2)
box()

points(Aged.Cells3 ~ Day, col = "olivedrab4", lwd = 1, cex = 1.2, lty = 1, pch = 16)

lines(Aged.Cells3 ~ Day, col = "olivedrab4", lwd = 2, cex = 1.2, lty = 1, pch = 16)


points(Young.Cells3 ~ Day, col = "indianred2", lwd = 1, cex = 1.2, lty = 1, pch = 16) 

lines(Young.Cells3 ~ Day, col = "indianred2", lwd = 2, cex = 1.2, lty = 1, pch = 16)

legend("topleft", legend=c('UnAged', 'Aged'), fill = c("indianred2","olivedrab4"), cex=0.9)




###########Beta-galactosidase

plot(0,type='n', #make empty plot 
     xlim=c(0.5,2.5) # x limits
     , ylim=c(0,0.0000045) # y limits 
     , xlab= ' ', # name x azis
     ylab = 'Cell Stress (OD/[CFU/mL])', # name y axis
     main = ' ', # main title (on middle of plot)
     pch=19, yaxt='n', axes=F, # removed axes
     cex.lab=1.05) # make empty plot to fill in



arrows(c(1,2), c(0.0000000141-0.0000000165, 0.0000019133-0.0000026682),    
       c(1,2), c(0.0000000141+0.0000000165, 0.0000019133+0.0000026682),
       angle = 90, code = 3, length = 0, lty = 1, lwd = 4, # jelly bean width
       col = c('blue','red'))

points(x = c(1,2), y = c(0.0000000141, 0.0000019133), cex = 1.5, pch = 16 )
axis(1, c(1,2), c('LB Only','LB + X'), cex=2, pch=16, col = "black")
axis(2)

box()



