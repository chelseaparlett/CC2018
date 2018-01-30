# LLN Simulation
* Go to [this website](https://rdrr.io/snippets/)
* Delete any code in the white window
* Copy the below code into the window

```
#how big are your samples?
size_of_samples = 2
#what's the true mean of your population?
true_mean = 50

#generate simulated data
simulated_samples = replicate(1000,mean(rnorm(mean = true_mean, sd = 20, n = size_of_samples)))

#make a histogram of the simulated data
hist(simulated_samples, xlim = c(0,100),breaks=seq(0,100,1))
```
* Hit the Green **Run** Button

**note**: you may change the number for n_samp when copying the code i n order to see how the size of samples affects how *good* of an estimate the *sample mean* is or the *true mean*

