MLD <-
function(samps){
	mld<-(1/length(samps))*sum(log(mean(samps, na.rm = TRUE)/samps), na.rm = TRUE)
	return(mld)
}
