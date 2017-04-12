aa <- 1
ab <- 5
ac <- -2
ba <- 1
bb <- 2
bc <- -1
ca <- 3
cb <- 6
cc <- -3
vect = c(aa,ab,ac,ba,bb,bc,ca,cb,cc)
mat <- matrix(vect, 3, 3)

(mat %*% mat) %*% mat