
library(ggplot2)

exp_growth <- function(t, N0, r) {
  N0*exp(r*t)
}

logistic_growth <- function(t, N0, r, K) {
  (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
}

N0 <- 975.54862007
r <- 0.01004 
K <- 60000000000

time <- seq(0, 2500, by = 5)
data <- data.frame(
  time = rep(time, 2),
  N = c(exp_growth(time, N0, r), logistic_growth(time, N0, r, K)),
  Models = rep(c("Exponential model", "Logistic model"), each = length(time))
)

plot <- ggplot(data, aes(x = time, y = N, color = Models)) + geom_point() +
  geom_line() +
  labs(title = "Exponential Growth Curve vs Logistic Growth Curve",
       x = "t",
       y = "N")