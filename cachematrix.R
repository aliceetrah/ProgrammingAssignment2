## This code contains two R functions that cache getting the inverse of a matrix
## The calculation is done once, and stored in the cache so that it is not computed more than once

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  get <- function() x
  set_inverse <- function(inv) inverse <<- inv
  get_inverse <- function() inverse
  list(set = set, get = get,
       set_inverse = set_inverse,
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
