## Put comments here that give an overall description of what your
## functions do

## below is a function creates a list of function to 
## 1. set the matrix
## 2. get the matrix
## 3. set the inverse of the Matrix
## 4. get the inverse of the Matrix

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
          x <<- y
          m <<- NULL
    }
    get <- function() x
    setSolve <- function(solve) m <<- solve
    getSolve <- function() m
    list(set = set, get = get, setSolve = setSolve, getSolve = getSolve)
  
}


## below is a funtion finding the inverse matrix created with the above function. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.
        
        
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
    m <- x$getSolve()
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    data = x$get()
    m = solve(data, ...)
    x$setSolve(m)
    m
}
