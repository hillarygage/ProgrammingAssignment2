## Put comments here that give an overall description of what your
## functions do:
## 'makeCacheMatrix' and 'cacheSolve' are functions that create a
## special "matrix" to cache and compute their inverse.


## Write a short comment describing this function:
## This function creates a special "matrix" object that can cache
## its inverse

makeCacheMatrix <- function(x = matrix()) {
    
    set <- function(){
    x <<- y
    solvematrix <<- NULL
  }
  
    get <- function() x
    setinv <- function(matrix) m <<- matrix
    getinv <- function() m
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
  }
  
  
  ## Write a short comment describing this function:
  ## This function computes the inverse of the special "matrix" 
  ## returned by makeCacheMatrix, or retreives the inverse from the 
  ## cache
  
  cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    
    m <- x$getinv()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
      }
    
    matrix1 <- x$get()
    m <- solve(matrix1)
    x$setinv(m)
    m
  }