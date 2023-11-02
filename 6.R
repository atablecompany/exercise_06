library(combinat)

dpp = function(dXa, dXb, dXab){
  result = c()
  As = permn(dXa)
  Bs = permn(dXb)
  
  for (A in As){
    for (B in Bs){
      posA = cumsum(c(0,A))
      posB = cumsum(c(0,B))
      
      comPos = sort(unique.default(c(posA,posB)))
      
      succDiff = sort(diff(comPos))
      if (identical(succDiff,dXab)){
        print(succDiff)
      }
    }
  }
}

dXa = c(2,3,5,10)
dXb = c(3,7,10)
dXab = c(1,2,2,5,5,5)
dpp(dXa, dXb, dXab)


pdp = function(deltaX){
  width = max(deltaX)
  deltaX = deltaX[- which(width)]
  X = c(0,width)
  place(deltaX, X, width)
}

place = function(deltaX, X, width){
  if (length(deltaX) == 0){
    print(X)
    return()
  }
  y = max(deltaX)
  if (all(deltaX[y:X] %in% deltaX)){
    
  }
}