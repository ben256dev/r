# Given values
mean_value <- 70      # Mean Young's modulus in GPa
sd_value <- 1.6       # Standard deviation in GPa

# Part (a): Calculate P(69 ≤ X ≤ 71) when n = 16
n_a <- 16
# Standard deviation of the sample mean for n = 16
sd_sample_mean_a <- sd_value / sqrt(n_a)

# P(69 ≤ X ≤ 71)
p_a <- pnorm(71, mean = mean_value, sd = sd_sample_mean_a) - pnorm(69, mean = mean_value, sd = sd_sample_mean_a)
cat("P(69 ≤ X ≤ 71) for n = 16:", round(p_a, 4), "\n")

# Part (b): Probability that the sample mean exceeds 71 when n = 25
n_b <- 25
# Standard deviation of the sample mean for n = 25
sd_sample_mean_b <- sd_value / sqrt(n_b)

# P(X̄ > 71)
p_b <- 1 - pnorm(71, mean = mean_value, sd = sd_sample_mean_b)
cat("P(X̄ > 71) for n = 25:", round(p_b, 4), "\n")

