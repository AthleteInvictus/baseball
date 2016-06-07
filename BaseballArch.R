ab = 506
h = 144
double = 27
triple = 3
homerun = 25
single = (h-double-triple-homerun)
sb = 24
bab = (double*2+triple*3+homerun*4)/ab

babpower = (.42747)

points = matrix(
  c(0,0,.212,40,.429,5,bab,sb),
  nrow=(4),
  ncol=(2),
  byrow = TRUE
)

speederror = (abs(sb-40)/40)
powererror = (abs(bab-babpower)/babpower)
aberror = abs(ab-550)/550

speed = 1 - (speederror/(speederror+powererror))
power = 1 - (powererror/(speederror+powererror))

plot(points,xlab = 'XBH/AB',ylab = 'SB')

cat("Power: ",power)
cat("Speed: ",speed)