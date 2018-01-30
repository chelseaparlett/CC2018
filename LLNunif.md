# LLN Simulation
* Go to [this website](https://rdrr.io/snippets/)
* Delete any code in the white window
* Copy the below code into the window

```
#how large are your samples?
size_of_samples = 1000

#generate data
simulated_data = replicate(1000,mean(runif( min= 0, max = 100, n = size_of_samples)))
#make histogram
hist(simulated_data, xlim = c(0,100),breaks=seq(0,100,1))
```
* Hit the Green **Run** Button

**note**: you may change the number for n_samp when copying the code i n order to see how the size of samples affects how *good* of an estimate the *sample mean* is or the *true mean*

