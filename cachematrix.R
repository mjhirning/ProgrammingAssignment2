## Put comments here that give an overall description of what your
## functions do

## This function makes a special list that allows the user to easily retrieve the already calculated mean.

makeCacheMatrix <- function(x = matrix()) {
  Inv <- NULL
  calc <- function(y) {
    x <<- y
    Inv <<- NULL
  }
  get <- function() x
  calcinverse <- function(inverse) Inv <<- inverse
  getinverse <- function() Inv
  list(calc = calc, get = get,
       calcinverse = calcinverse,
       getinverse = getinverse)
}


## This function takes a special list and returns the inverse if already calculated

cacheSolve <- function(x, ...) {
  Inv <- x$getinverse()
  if(!is.null(Inv)) {
    print("getting cached data")
    return(Inv)
  }
  data <- x$get()
  Inv <- solve(data, ...)
  x$calcinverse(Inv)
  Inv
}
