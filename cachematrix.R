#The first function, makeCacheMatrix This function creates a special "matrix" object that can cache its inverse
#set the value of the inverse matrix
#get the value of the inverse matrix
#set the value of the inverse matrix
#get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  invmat <- NULL
  set <- function(y){
    x <<- y
  }
  get <- function()x
  setinvmat <- function(inv) invmat <<- inv
  getinvmat <- function() invmat
  list (set = set, get = get, setinvmat = setinvmat,getinvmat = getinvmat )

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 # print("1")
  invmat <- x$getinvmat()
#  print("2")
  if(!is.null(invmat)){
    message("getting cached data")
    return (invmat)
  }
 # print("3")
  data <- x$get()
#  print("4")
  invmat <- solve(data)
#  print("5")
  x$setinvmat(invmat)
#  print("6")
  invmat
  
}





