## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  Inv <- NULL
  calc <- function(y) {
    x <<- y
    Inv <<- NULL
  }
  get <- function() x
  calcinverse <- function(x) Inv <<- solve(x)
  getinverse <- function() Inv
  list(calc = calc, get = get,
       calcinverse = calcinverse,
       getinverse = getinverse)
}


## This function makes a special list that allows the user to easily retrieve the already calculated mean.

cacheSolve <- function(x, ...) {
  Inv <- x$getinverse()
  if(!is.null(Inv)) {
    message("getting cached data")
    return(Inv)
  }
  data <- x$get()
  Inv <- solve(data, ...)
  x$calcinverse(Inv)
  Inv
}
