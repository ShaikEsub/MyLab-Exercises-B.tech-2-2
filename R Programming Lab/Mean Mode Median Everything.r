x <- c(1,2,3,4,5,1,2,3,1,2)
mean.result = mean(x)
print (mean.result)

median.result = median(x)
print (median.result)


mode <- function(x) {ux <- unique(x) ux[which.max(tabulate(match(x, ux)))] }
mode.result = mode(x)
print (mode.result)
