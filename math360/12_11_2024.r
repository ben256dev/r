simpdf=c(80,80,100,100,100,120,120,120,120,120)
simavg=sample(simpdf,2,replace=TRUE)
simavg
simavg=sample(simpdf,2,replace=TRUE)
simavg
hist(simavg)

simavg=colMeans(replicate(10000, sample(simpdf,4,replace=TRUE)))
hist(simavg)

simavg=colMeans(replicate(10000, sample(simpdf,10,replace=TRUE)))
hist(simavg)

simavg=colMeans(replicate(10000, sample(simpdf,30,replace=TRUE)))
png("12_11_2024.png");
hist(simavg)
dev.off()
