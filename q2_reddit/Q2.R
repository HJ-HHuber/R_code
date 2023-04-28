
# in general we calculate the average with
# avg <- (sum()/length())

# i donot have access to your data, so i make my own

t <- data.frame(Id = 1:300)
t <- cbind(t, A= sample(100, size = nrow(t), replace = TRUE))
t <- cbind(t, B=sample(30:70, size=nrow(t), replace =TRUE))

# now we calculate the average for each variable A and B
# t$column selects the values in the desired column

avg_a <- (sum(t$A)/length(t$A))
avg_b <- (sum(t$B)/length(t$B))

# now you have the values for the average

# you can save them in a list

avg_list <- list(avg_a, avg_b)

# there yo go!
# kind regards HJH
