# QUESTION 4
png("q4.png", width = 360, height = 247)

data <- data.frame(
 Bidders   = c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11),
 Contracts = c(6, 20, 26, 17, 12, 8, 5, 7, 4, 3)
)

barplot(
 height = data$Contracts,
 names.arg = data$Bidders,
 xlab = "Number of bidders",
 ylab = "Frequency",
 col  = "lightblue"
)

dev.off()
