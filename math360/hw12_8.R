# Given probabilities
pX <- c(0.5, 0.3, 0.2)          # pX(0), pX(1), pX(2)
pY <- c(0.2, 0.1, 0.05, 0.05, 0.6)  # pY(0), pY(1), pY(2), pY(3), pY(4)

# Part (a): Create the joint probability table
joint_pmf <- outer(pX, pY, "*")
dimnames(joint_pmf) <- list("X" = 0:2, "Y" = 0:4)
print("Joint Probability Table (X, Y):")
print(joint_pmf)

# Part (b): Compute P(X <= 1 and Y <= 1)
p_X_leq_1_Y_leq_1 <- sum(joint_pmf[1:2, 1:2])
print(paste("P(X <= 1 and Y <= 1) =", round(p_X_leq_1_Y_leq_1, 3)))

# Calculate marginal probabilities to check independence
p_X_leq_1 <- sum(pX[1:2])           # P(X <= 1)
p_Y_leq_1 <- sum(pY[1:2])           # P(Y <= 1)
independence_check <- round(p_X_leq_1 * p_Y_leq_1, 3) == round(p_X_leq_1_Y_leq_1, 3)

cat("Does P(X <= 1 and Y <= 1) equal the product P(X <= 1) * P(Y <= 1)?", ifelse(independence_check, "Yes", "No"), "\n")

# Part (c): Compute P(X + Y = 0)
p_X_plus_Y_eq_0 <- joint_pmf["0", "0"]
print(paste("P(X + Y = 0) =", round(p_X_plus_Y_eq_0, 3)))

# Part (d): Compute P(X + Y <= 1)
p_X_plus_Y_leq_1 <- sum(joint_pmf["0", "0:1"], joint_pmf["1", "0"])
print(paste("P(X + Y <= 1) =", round(p_X_plus_Y_leq_1, 3)))

