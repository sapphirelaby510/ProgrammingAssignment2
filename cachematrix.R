## creat a matrix object for caching

makeCacheMatrix <- function(x = matrix()) {
n<-NULL
##set the value of the vector
set<-function(y){
        x<<-y
        n<<-NULL
}
##get the value of the vector
get<-funciton()
     x
##set the value of the inverse
setinverse<-function(inverse)
        n<<-inverse
## get the value of the inverse
getinverse<-funciton()n

list(set=Set,get=Get,setinverse=Setinverse,getinverse=Getinverse)
}


## get the inverse
cacheSolve <- function(x, ...) {
        n<-x$getinverse()
        ## check if the inverse has been calculated, 
        ##if so, get the inverse from the cache and state, and skip the computation
        if(!is.null(n)){
                message("getting cached data")
                return(n)
        }
        ## Calculate the inverse and set the value of 
        ## the inverse in the cache through setinverse
data<-x$get()
n<-solve(data,...)
x$setinverse(n)
n
}