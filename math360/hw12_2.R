# Part (a): Probability distribution of the sample mean X for n = 2
# Given distribution for a single customer
x_values <- c(1, 2, 3, 4)
p_values <- c(0.2, 0.4, 0.3, 0.1)

# Define all possible pairs (since n = 2) and their means
mean_values <- c((1 + 1) / 2, (1 + 2) / 2, (1 + 3) / 2, (1 + 4) / 2,
                 (2 + 1) / 2, (2 + 2) / 2, (2 + 3) / 2, (2 + 4) / 2,
                 (3 + 1) / 2, (3 + 2) / 2, (3 + 3) / 2, (3 + 4) / 2,
                 (4 + 1) / 2, (4 + 2) / 2, (4 + 3) / 2, (4 + 4) / 2)

# Corresponding probabilities for each pair of x values
joint_probs <- outer(p_values, p_values, "*")
joint_probs <- as.vector(joint_probs)

# Calculate the probabilities for each unique value of the sample mean
mean_table <- data.frame(mean_values, joint_probs)
mean_dist <- aggregate(joint_probs ~ mean_values, data = mean_table, sum)

# Rename columns and display the distribution
colnames(mean_dist) <- c("x", "P(x)")
print("Distribution of X (sample mean for n=2):")
print(mean_dist)

# Part (b): Calculate P(X <= 2.5)
p_x_leq_2_5 <- sum(mean_dist$`P(x)`[mean_dist$x <= 2.5])
print(paste("P(X <= 2.5) =", round(p_x_leq_2_5, 3)))

# Part (c): Distribution of the range R for n = 2
range_values <- abs(c((1 - 1), (1 - 2), (1 - 3), (1 - 4),
                      (2 - 1), (2 - 2), (2 - 3), (2 - 4),
                      (3 - 1), (3 - 2), (3 - 3), (3 - 4),
                      (4 - 1), (4 - 2), (4 - 3), (4 - 4)))

# Create a data frame for ranges and joint probabilities
range_table <- data.frame(range_values, joint_probs)
range_dist <- aggregate(joint_probs ~ range_values, data = range_table, sum)

# Rename columns and display the distribution of R
colnames(range_dist) <- c("R", "P(R)")
print("Distribution of R (range for n=2):")
print(range_dist)

# Part (d): Probability P(X <= 1.5) for a sample of size n = 4
# Since we need outcomes where X <= 1.5, only outcomes with x=1 (prob = 0.2) will meet this criterion.
# The probability that all 4 customers ship 1 package (X <= 1.5) is 0.2^4.
p_x_leq_1_5_n4 <- 0.2^4
print(paste("P(X <= 1.5) for n=4 =", round(p_x_leq_1_5_n4, 3)))

