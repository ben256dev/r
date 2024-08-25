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

# QUESTION 5
output_file_q5 <- "q5.txt"

file.create(output_file_q5)
sink(output_file_q5)

nonconforming <- c(1, 1, 2, 3, 1, 1, 3, 2, 0, 5, 3, 3, 1, 3, 2, 4, 7, 0, 2, 3,
                   0, 4, 2, 1, 3, 1, 1, 3, 4, 1, 2, 3, 2, 2, 8, 4, 4, 1, 3, 1,
                   5, 0, 2, 3, 2, 1, 0, 6, 4, 2, 1, 6, 0, 3, 3, 3, 6, 1, 2, 2)

freq_table <- table(nonconforming)
relative_freq_table <- freq_table / length(nonconforming)
relative_freq_table <- round(relative_freq_table, 4)

cat("Nonconforming Frequency\n")
for (i in names(freq_table))
{
 cat(i, freq_table[i], "\n")
}

cat("\nRelative Frequency\n")
for (i in names(relative_freq_table))
{
 cat(i, relative_freq_table[i], "\n")
}


sink()
