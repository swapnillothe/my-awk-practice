#! /usr/bin/awk -f
BEGIN{
  FS="|"
}
{
  if($9 > 20000 && $8 > highest_infant_mortality){
  highest_infant_mortality=$8
  that_countries_name=$1
  }
}
END{
  print "highest_infant_mortality" " : " highest_infant_mortality 
  print "that_countries_name" " : "that_countries_name
}
