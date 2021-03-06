updateInvSigma = function(Z,Beta,iSigma,Eta,Lambda, distr,X,Pi, aSigma,bSigma){
   ny = nrow(Z)
   ns = ncol(Z)
   nr = ncol(Pi)

   LFix = X%*%Beta
   LRan = vector("list", nr)
   for(r in seq_len(nr)){
      LRan[[r]] = Eta[[r]][Pi[,r],]%*%Lambda[[r]]
   }
   if(nr > 0){
      Eps = Z - (LFix + Reduce("+", LRan))
   } else
      Eps = Z - LFix

   shape = aSigma + ny/2
   rate = bSigma + apply(Eps^2, 2, sum)/2

   indVarSigma = (distr[,2]==1)
   iSigma[indVarSigma] = rgamma(sum(indVarSigma), shape[indVarSigma], rate[indVarSigma])

   return(iSigma)
}

