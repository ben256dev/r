v <- c(416, 420, 422, 423, 425, 428, 431, 435, 437, 438, 446, 447, 450, 451, 458, 462, 465)

png("hw13_11.png")
boxplot(v)
dev.off()

t_test <- t.test(v, conf.level = 0.95)

print(t_test)
