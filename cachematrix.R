## This code contains two R functions that cache getting the inverse of a matrix
## The calculation is done once, and stored in the cache so that it is not computed more than once

## The first function creates a special matrix which is a list containing functions to:
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  set_inverse <- function(inv) inverse <<- inv
  get_inverse <- function() inverse
  list(set = set, get = get,
       set_inverse = set_inverse,
       get_inverse = get_inverse)
}


## This function calculates the inverse of the matrix (which is returned from the first function)
## It first checks if it has already been calculated, if it has then this function gets the inverse
## from the cache

cacheSolve <- function(x, ...) {
  inverse <- x$get_inverse()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data, ...)
  x$set_inverse(inverse)
  inverse
}

