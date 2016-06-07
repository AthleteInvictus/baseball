ab = 412
h = 93
double = 8
triple = 3
homerun = 4
single = (h-double-triple-homerun)
sb = 57
bab = (double*2+triple*3+homerun*4)/ab

babpower = (.42747)

points = matrix(
  c(0,0,.212,50,.429,5,bab,sb),
  nrow=(4),
  ncol=(2),
  byrow = TRUE
)

speederror = (abs(sb-50)/50)
powererror = (abs(bab-babpower)/babpower)
aberror = abs(ab-550)/550

speed = 1 - (speederror/(speederror+powererror))
power = 1 - (powererror/(speederror+powererror))

plot(points,xlab = 'XBH/AB',ylab = 'SB')

cat("Power: ",power)
cat("Speed: ",speed)