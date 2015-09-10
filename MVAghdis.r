# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Name of QuantLet : MVAghdis
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Published in : Applied Multivariate Statistical Analysis
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Description : plots three probability density functions 
# (left) and three cumulative density functions (right) 
# of the GH, Hyperbolic and NIG distributions
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Keywords : pdf, cdf, hyperbolic, plot, density, 
# probability
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# See also : 
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Author : Wolfgang Haerdle
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Submitted : Sun, January 29 2012 by Dedy Dwi Prastyo
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Example : Shows plots of probability density functions
# (left) and cumulative density functions (right)
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−

#clear variables and close windows
rm(list=ls(all=TRUE))
graphics.off()
dev.off()

install.packages(c("VGAM","fBasics"))
library(VGAM)
library(fBasics)

# Generalised Hyperbolic Distribution
# Generating probability density plot
par(mar = c(5, 5, 5, 5))
par(mfrow = c(1, 2))
xx = seq(-6, 6, by = 0.1)
plot(xx, dgh(xx, alpha = 1, beta = 0, delta = 1, mu = 0, lambda = 0.5), 
  type = "l", ylim = c(0, 0.5), ylab = "Y", xlab = "X", col = "black", 
  lwd = 3, cex.lab = 2, cex.axis = 2)
lines(xx, dnig(xx, alpha = 1, beta = 0, delta = 1, mu = 0), type="l", 
  col = "blue", lwd = 3)
lines(xx, dhyp(xx, alpha = 1, beta = 0, delta = 1, mu = 0, 
  pm = c("1", "2", "3", "4")), type = "l", col = "red", lwd = 3)
legend(x = 8, y = 0.3, legend = c("GH", "NIG", "HYP"), pch = c(20, 20), 
  col = c("black", "blue", "red"), bty = "n")
title("PDF of GH, HYP and NIG")

# Generating cumulative density plot
plot(xx, pgh(xx, alpha = 1, beta = 0, delta = 1, mu = 0, lambda = 0.5), 
  type = "l", ylab = "Y", xlab = "X", col = "black", lwd = 3, cex.lab = 2,
  cex.axis=2)
lines(xx, pnig(xx, alpha = 1, beta = 0, delta = 1, mu = 0), type="l", 
  col = "blue", lwd = 3)
lines(xx, phyp(xx, alpha = 1, beta = 0, delta = 1, mu = 0, 
  pm = c("1", "2", "3", "4")), type = "l", col = "red", lwd = 3)
legend(x = 8, y = 0.6, legend = c("GH", "NIG", "HYP"), pch = c(20, 20), 
  col = c("black", "blue", "red"), bty = "n")
title("CDF of GH, HYP and NIG")
