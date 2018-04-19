## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  matrix <- x
  originalmatrix <<- m
  inverse <<- solve(m)
  list(matrix = matrix, inverse = inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(!is.null(x$inverse) && originalmatrix == x$matrix){
    message("Getting chached inverse matrix!!!")
    return(inverse)
  }
  originalmatrix <<- x$matrix
  inverse <<- solve(x$matrix)
  inverse
}
