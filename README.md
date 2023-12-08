# logistic_growth
R scripts for a reproducible analysis of logistic growth

Q1)
The plot data script makes logistic graphs. The first one makes a sigmoidal-shaped graph, and the second log transforms N, the y axis, to make a more linear 
looking graph that plateaus eventually.

The fitting of a linear model script required us to look at the graphs previously plotted to choose values of t. I used t<1000 in Case 1 and t>3000 in Case 2. Case 1 looks at when t is small, and the population size is still lower than the carrying capacity, so N is increasing with time. This is looking at the log-transformed graph as it increases linearly. Case 2 looks at when the carrying capacity is reached, and N(t) is no longer increasing with time. This is looking at the plateau stage of the graph.

The plotting data and model script contains code to plot both the growth data from one of the experiments (I used the experiment1.csv file) and the logistic growth model we had explored earlier. The plot for this showed a close fit between the model and the actual data.
 
 My estimates were:
 N0 = exp(6.883) = 975.54862007
 r = 0.01004
 K = 6.000e+10

Q2)
t =  4980
When assuming exponential growth, we can use the formula N0*exp(r*t). K= 5.0538876e+24
Under logistic growth, the formula is (N0*K*exp(r*t))/(K-N0+N0*exp(r*t)). K = 60000000000
The K for exponential growth is much larger for the same time period. 

Q3)
- ![image](https://github.com/miffynijntje/logistic_growth/assets/150163921/8671fd7f-1828-411b-abf7-5543d0551cf1)
-  Q3_graph.R script 

