#########

data1 <- matrix(nrow = 4, ncol = 4)
data1[,1] <- c("Day",0,2,7)
data1[,2] <- c("Condition 1",0.00000005,
               0.000000003,
               0.000000005)
data1[,3] <- c("Condition 2",0.00000007,
               0.000000003,
               0.000016)
data1[,4] <- c("Condition 3",0.00000007,
               0.000000017,
               0.000000014)
data1 <- as.data.frame(data1)
