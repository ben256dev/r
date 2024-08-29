# graph
png("worksheet2.png", width = 360, height = 500)

data <- c(3.4, 3.6, 3.6, 3.6, 3.6, 3.7, 3.8, 3.8, 3.9, 4.0, 4.1, 4.2, 4.8, 4.9, 5.0, 5.1, 5.1, 5.2, 5.2, 5.2, 5.4, 5.5, 5.6, 5.7, 6.2, 6.6, 7.0, 7.6, 7.8, 8.2, 8.5, 8.9, 9.3, 9.3, 9.9, 10.7, 10.7, 11.5, 12.1, 12.6, 13.1, 13.4, 13.8, 14.2, 15.2, 17.1, 20.6, 25.5)

boxplot(data, main="Box Plot", ylab="Observations", col="lightblue")

dev.off()

# SD
output_file_w2 <- "worksheet2.txt"

file.create(output_file_w2)
sink(output_file_w2)

cat("Standard Deviation\n")
cat(sd(data))
cat("\n")
sink()
