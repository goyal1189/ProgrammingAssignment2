## To Calculate Inverse of Matrix using Cache Memory Concept

## This will create the special Matrix with returning the following list of fucntions
## Set the Matrix
## Get The Matrix
## Set the Inverse of a Matrix
## Get the Inverse of a Matrix

makeCacheMatrix <- function(x = matrix()) {

i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## This Function Will check whether the cache memory does contains the inverse for the
## Matrix or not. If Yes it will return, the Inverse of a matrix from Cache Memory else will calculate Inverse and will show the result

cacheSolve <- function(x, ...) {                      ## Please enter the Argument in cacheSolve function of the form  
      						      ## "makeCacheMatrix(matrix(data,nrow,nrow))"
   m <- x$getinverse()

  	if(!is.null(m)) {
    			message("getting cached data")
  		        return(m)
  		  	}
   data <- x$get()
   m <- solve(data, ...)
   x$setinverse(m)
 return(m)

}
