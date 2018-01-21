# LLN Simulation
* Go to [this website](https://rdrr.io/snippets/)
* Delete any code in the white window
* Copy the below code into the window

```
n_samp = 2
true_mean = 50

vec_samp = replicate(100,mean(rnorm(mean = true_mean, sd = 10, n = n_samp)))
hist(vec_samp, xlim = c(0,100),breaks=seq(0,100,2))
```
* Hit the Green **Run** Button

**note**: you may change the number for n_samp when copying the code i n order to see how the size of samples affects how *good* of an estimate the *sample mean* is or the *true mean*

