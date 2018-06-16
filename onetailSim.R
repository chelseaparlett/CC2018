OneTail <- function(i){
  i <- i +1
  data1 <- rnorm(100)
  labels <- rep(c("A","B"),50)
  labels <- sample(labels)
  d <- data.frame(data1,labels)
  m <- t.test(d[d$labels == "A", "data1"], d[d$labels == "B", "data1"] )
  p <- m$p.value
  if (p < 0.05){
    return(1)
  }
  else {
    m <- t.test(d[d$labels == "A", "data1"], d[d$labels == "B", "data1"],
                alternative = "greater" )
    p1 <- m$p.value
    m <- t.test(d[d$labels == "A", "data1"], d[d$labels == "B", "data1"],
                alternative = "less" )
    p2 <- m$p.value
    if (p1 < 0.05 | p2 < 0.05){
      return(1)
    }
    else{
      return(0)
    }
  }
}

n <- 10000
k <- sapply(1:n, OneTail)
print(sum(k)/n)
