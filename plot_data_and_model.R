#Script to plot data and model

growth_data <- read.csv("experiment1.csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- 1044.722 #exp(intercept coefficient from model1) bc that is the N value when t~0
  
r <- 0.009902 #model1 => coefficient t 
  
K <- 5.993e+10 #model2 => estimate intercept bc that is when N stops changing

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

  #scale_y_continuous(trans='log10')


