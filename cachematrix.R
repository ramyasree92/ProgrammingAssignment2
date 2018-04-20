## Put comments here that give an overall description of what your
## functions do


# makeCacheMatrix takes input as a matrix. In this function, the matrix passed and its inverse are stored in 
# an environment which is different than current environment as originalmatrix and inverse variables and a list having 
# these two matrices as matrix and inverse elements are returned

makeCacheMatrix <- function(x = matrix()) {
  matrix <- x
  originalmatrix <<- x
  inverse <<- solve(x)
  list(matrix = matrix, inverse = inverse)
}



#cacheSolve matrix takes the list returned by makeCacheMatrix and fetch cache based on two conditions
# 1. inverse element of list should not be null
# 2. matrix element of list should not have changed i.e., originalmatrix valriable outside current environment 
# and matrix element of list should be same
# If the above two conditions are not met, inverse is calculated and originalmatrix variable is assigned matrix element
# of the list so that again when we try to get inverse the calculation is not repeated

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
