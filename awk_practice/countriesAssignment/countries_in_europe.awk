#! /usr/bin/awk -f

BEGIN{
  FS="|";
  count=0;
}
($2 ~/EUROPE/){
  count++;
  print $1;
}
END{
  print count;
}


