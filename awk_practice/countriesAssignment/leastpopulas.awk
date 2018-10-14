#! /usr/bin/awk -f

BEGIN{
  FS="|"
  count=0
}
(count==0){
  q=$3
}
(q>$3){
  q=$3;country=$1
} 
{
  count++
};
END{
  print country " : " q
}
