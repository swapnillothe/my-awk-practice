#! /usr/bin/awk -f
BEGIN{
  FS="|"
  P=0 
}
($3 >P){
  P=$3
  country=$1 
}
END{
  print country ":" P
}
