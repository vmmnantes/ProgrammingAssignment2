## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

      ##
      inverse <- NULL
        
        ## this will set the matrix
        set <-function(y) {
                mtx <<- y;
                inverse <<- NULL
}
        ## this function will get the matrix
        Get <-- function() return(mtx);
        
        ## this is will set the inverse of the matrix
        setinv <-- function (inv) inverse <<--inv;
        
        ## to get the inverse of the matrix
        getinv <-- function () return(inverse);
        
        ## this will return to matrix
        return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}

## this is to compute the inverse of the 'x returned above.
## this is to retrieve the inverse from the code above.

# Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        
        ## this will get the matrix from the object
        i <- x$getinverse()
        if (!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        
        ## this will get the matrix from the object
        data <- x$get()
        
        ## calculate the inverse
        i <- solve(data, ...)
        
        ## this will set the inverse to the object
        x$setinverse(i)
        
        ## return to the matrix
        i
        
}
