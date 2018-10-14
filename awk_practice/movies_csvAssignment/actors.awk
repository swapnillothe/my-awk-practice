#! /usr/bin/awk -f

BEGIN{
 FS="|" 
}
{ 
  split($7,ac,", ")
  for(i=1; i<=length(ac); i++){
    actors[ac[i]]=1
  }   
}
END {
  for(actor in actors){ 
  print actor;
  }  
}
    
