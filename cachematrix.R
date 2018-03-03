## Put comments here that give an overall description of what your
## functions do

## Return a list of 4 functions

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) inv <<- solve
        getinverse <- function() inv
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Checks the cache and gets the inversed matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invc <- x$getinverse()
        if(!is.null(invc)) {
                message("getting cached data")
                return(invc)
        }
        data <- x$get()
        invc <- solve(data, ...)
        x$setinverse(invc)
        invc
}
