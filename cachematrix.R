## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Creates a matrix with an inverseMatrix variable
## the set function sets the matrix
## the setInverse sets the inverse of the matrix
## the getInverse gets the cached value of the inverse. The return value will be null if the inverse is not cached.

makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <- NULL
  set <- function(y){
     x <<- y
     inverseMatrix <<- NULL
    
  }
  get <- function(){
    x
  }
  setInverse <- function(y){
    inverseMatrix <<- y
  }
  getInverse <- function(){
    inverseMatrix
  }
  list( set = set, get = get, getInverse = getInverse, setInverse = setInverse)
}


## Write a short comment describing this function

## returns the inverse of a invertible matrix
## returns the cached value if it is not null
## computes and sets the cache value if it is not already set
## the input matrix is assumed to be invertible. Non-invertibe matrices will return error

cacheSolve <- function(x, ...) {
              ## Return a matrix that is the inverse of 'x'
              ## get the cached inverse
              
          m <- x$getInverse()
        
          ## if inverse is null the matrix is not cached. 
          ## Hence, compute the inverse and set the cache
          if(is.null(m)){
                   message("computing the inverse")
                    inputMatrix <- x$get()
                    ## compute inverse using solve
                    m <- solve(inputMatrix)
                    ## cache the inverse
                    x$setInverse(m)
     }
    
     m
}
