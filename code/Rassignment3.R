#1
download.file("http://www.openintro.org/stat/data/ames.RData", destfile = "ames.RData")
load("ames.RData")

area = ames$Gr.Liv.Area
price = ames$SalePrice

summary(area)
hist(area)

#2
set.seed(489559603)
samp1 = sample(area, 50)
hist(samp1)

#3
mean(samp1)

#4
samp2 = sample(area, 50)
hist(samp2)
mean(samp2)

#5
sample_means50 = rep(0,5000)
for (i in 1:5000)
{
  samp = sample(area, 50)
  sample_means50[i] = mean(samp)
}
hist(sample_means50, breaks = 25)

#6
sample_means_small = rep(0,100)
for (i in 1:100)
{
  samp = sample(area, 50)
  sample_means_small[i] = mean(samp)
}
sample_means_small

#7
sample_means10 = rep(0,5000)
sample_means100 = rep(0,5000)
for (i in 1:5000)
{
  samp = sample(area, 10)
  sample_means10[i] = mean(samp)
  samp = sample(area, 100)
  sample_means100[i] = mean(samp)
}

par(mfrow = c(3,1))
xlimits = range(sample_means10)
hist(sample_means10, breaks = 20, xlim = xlimits)
hist(sample_means50, breaks = 20, xlim = xlimits)
hist(sample_means100, breaks = 20, xlim = xlimits)

#8
samp1 = sample(price, 50)
hist(samp1)

#9
sample_means50 = rep(0,5000)
for (i in 1:5000)
{
  samp = sample(price, 50)
  sample_means50[i] = mean(samp)
}
hist(sample_means50, breaks = 25)

#10
sample_means150 = rep(0,5000)
for (i in 1:5000)
{
  samp = sample(price, 150)
  sample_means150[i] = mean(samp)
}
hist(sample_means150, breaks = 25)