#! /usr/bin/awk -f
BEGIN{
  FS="|"; 
}
{
  total_arable+=$12*$4;
  total_area+=$4;
}
END{
  print total_arable/total_area " %";
}
