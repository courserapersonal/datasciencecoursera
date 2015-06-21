## These two functions get the inverse of a matrix

## This first function stores 4 functions that get and set the data

makeCacheMatrix <- function(x = matrix()) {
              i <- NULL
              set <- function(y) {
                     x <<- y
                     i <<- NULL
              }
          
              get <- function() x
              setinv <- function(inverse) i <<- inverse
              getinv <- function() i
             list(set = set, get = get,
                  setinv = setinv,
                  getinv = getinv) 
}


## This second function takes the first function and give the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinv()
        if(!is.null(i)) {
        message("getting cached data")
        return(i)
         }
        data <- x$get()
        i <- solve(data, ...)
        x$setinv(i)
        i
  
}
