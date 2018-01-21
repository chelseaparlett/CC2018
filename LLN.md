# LLN Simulation
* Go to [this website](https://rdrr.io/snippets/)
* Copy the below code into the window
```
n_samp = 1000
true_mean = 50
vec_samp = replicate(100,mean(rnorm(mean = true_mean, sd = 10, n = n_samp)))
hist(vec_samp, xlim = c(0,100))
```
* Hit the Green **Run** Button

**note**: you may change the number for n_samp when copying the code i n order to see how the size of samples affects how *good* of an estimate the *sample mean* is or the *true mean*

