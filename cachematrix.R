## Put comments here that give an overall description of what your
## functions do

## makes a matrix which can have its inverse cached

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inv <<- 
        getInverse <- function() inv
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## calculates matrix inverse, if matrix inverse has previously been calculated it will draw from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if(!is.null(inv)) {
                message("getting cache")
                return(inv)
        }
        ma <- x$get()
        inv <- solve(ma,...)
        x$setInverse(inv)
        inv
}
