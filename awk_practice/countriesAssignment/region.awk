#! /usr/bin/awk -f
BEGIN{
  FS="|"
}
{
  country[$1]=$2
  region[$2]
} 
END{
  print "------------------"
  for(a in region){
    print a
    print "-----------\n"
    for(b in country){
      if(country[b]==a){
        print b 
      }
    }
    print "---------\n\n"
  }
}
