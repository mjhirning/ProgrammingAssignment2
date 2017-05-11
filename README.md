### cachematrix.R

This R file contains two functions, makeCacheMatrix and cacheSolve. makeCacheMatrix takes an invertible matrix, and creates a list that contains the matrix, it's inverse (if previously calculated), and functions to either calculate the inverse or retreive it from it's cache. The other function, cacheSolve, takes this special list and will return the inverse of the matrix that was passed to makeCacheMatrix previously. If cacheSolve is run on this list once, the inverse is calculated using the standard "solve" function. Every subsequent run of this function with return the inverse but will not calculate it, instead it will retrieve the matrix from its cache and print "getting cached data".


