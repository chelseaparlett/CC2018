pic <- matrix(round(runif(9,0,1),2), ncol = 3)

stfy <- function(s){
  s <- gsub('\n',"",s)
  s <- gsub('[[:punct:] ]+',' ',s)
  s <- gsub('[[:digit:]]+', '', s)
  s <- gsub(" ","",s)
  s <- tolower(s)
  return(s)
}
rstr <- function(n){
  a <- c("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z")
  futstr <- vector(mode = "numeric", length = n)
  for (i in 1:n){
    k <- runif(1,1,26)
    futstr[i] <- a[k]
  }
  r <- paste(futstr, sep = "", collapse = "")
  return(r)
}
rin <- function(n,k){
  fn = "https://raw.githubusercontent.com/aparrish/rwet-examples/master/austen.txt"
  ws <- url(fn,open = "rb")
  l <- readChar(ws,nchars = 1e6)
  l <- l[[1]][[1]][1]
  l <- stfy(l)
  rs <- vector(mode="numeric", length=k)
  jas <- vector(mode="numeric", length=k)
  for (i in 1:k){
  r <- runif(1,1, nchar(l)-(2*n+1))
  la <- substr(l,r+1,r+n)
  lb <- substr(l, r+n+1 ,r+(2*n))
  if(k <5){
  print(la)
  print(lb)
  }
  a1s <- strsplit(la,"")
  b1s <- strsplit(lb,"")
  
  ja <- sum(a1s[[1]] == b1s[[1]])
  jas[i] <- ja
  c1 <- rstr(n)
  c2 <- rstr(n)
  if(k < 5){
  print(c1)
  print(c2)
  }
  c1s <- strsplit(c1,"")
  c2s <- strsplit(c2,"")
  
  ran <- sum(c1s[[1]] == c2s[[1]])
  rs[i] <- ran
  }
  return(c(mean(jas),mean(rs)))
  
}

rin(100,1000)
