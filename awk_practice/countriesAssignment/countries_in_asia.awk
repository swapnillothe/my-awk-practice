#! /usr/bin/awk -f

BEGIN {
  FS="|"
 count=0 
}
($2 ~/ASIA/){
  print $1
  count++
}
END{
  print count 
}
