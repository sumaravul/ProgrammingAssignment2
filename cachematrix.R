## Put comments here that give an overall description of what your
## functions do
## Creating a numeric vector
makeCacheMatrix <- function(x = matrix()) {
 m<-NULL # stores mean and is reset to null everytime matrix is called
  set<-function(y){
  x<<-y
  m<<-NULL
}
 get<-function() x # returns the original vector
setmatrix<-function(solve) m<<- solve #cache the cachesolve() during the first call
getmatrix<-function() m   # stores the cached soleve matrix
list(set=set, get=get,
   setmatrix=setmatrix,
    getmatrix=getmatrix)
 }

cacheSolve <- function(x=matrix(), ...) {
     m<-x$getmatrix()
     if(!is.null(m)){
      message("getting cached data")
       return(m)
    }
     matrix<-x$get()
    m<-solve(matrix, ...)   # calculats the inverse matrix
    x$setmatrix(m)
    m
 }

