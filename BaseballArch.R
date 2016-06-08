ab = 508
h = 133
double = 23
triple = 3
homerun = 22
single = (h-double-triple-homerun)
sb = 0
bab = (double*2+triple*3+homerun*4)/ab

babpower = (.42747)

points = matrix(
  c(0,0,.212,50,.429,5,bab,sb),
  nrow=(4),
  ncol=(2),
  byrow = TRUE
)

powererror = 1 - (abs(bab-babpower)/babpower)
if (sb>50) {
  speederror = 1
} else {
  speederror = 1 - (abs(sb-50)/50)
}
bencherror = abs(ab-550)/550

speed = (speederror/(speederror+powererror+bencherror))
power = (powererror/(speederror+powererror+bencherror))
bench = (bencherror/(speederror+powererror+bencherror))

plot(points,xlab = 'XBH/AB',ylab = 'SB')

cat("Power: ",power)
cat("Speed: ",speed)
cat("Bench: ",bench)