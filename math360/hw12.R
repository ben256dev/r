n <- 15
p <- 0.65

x_values <- 0:n
probabilities <- dbinom(x_values, size = n, prob = p)

sample_proportions <- x_values / n

result <- data.frame("X"      = x_values,
                     "X/n"    = sample_proportions,
                     "P(X/n)" = round(probabilities, 3))

print(result)
