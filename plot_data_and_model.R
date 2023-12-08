#Script to plot data and model

growth_data <- read.csv("experiment1.csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

<<<<<<< HEAD
N0 <- 975.54862007 #exp(intercept coefficient from model1 = 6.883) bc that is the N value when t~0
  
r <- 0.01004 #model1 => coefficient t 
  
K <- 6.000e+10 #model2 => estimate intercept bc that is when N stops changing
=======
N0 <- exp(6.883) #
  
r <- 0.01004 #
  
K <- 6.00e+10 #
>>>>>>> 39c37c8d27880e01e59473476d0b381ae1758cf9

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

  #scale_y_continuous(trans='log10')


