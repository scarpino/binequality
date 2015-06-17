SDL <- function(samps){
	sdl.1 <- (1/length(samps))*sum((mean(log(samps), na.rm = TRUE) - log(samps))^2, na.rm = TRUE)
	sdl <- sqrt(sdl.1)
	return(sdl)
}