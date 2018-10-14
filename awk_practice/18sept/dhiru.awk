#! /usr/bin/awk -f
BEGIN{
  FS=" "
}
{
  if($1==1){
    length_of_string_for_last_four_letter=length($2)-3
    last_four_letter_of_first=substr($2,length_of_string_for_last_four_letter)
    a[last_four_letter_of_first]=$2
  }
  else{
    first_four_letter_of_second=substr($2,1,4)
  c[first_four_letter_of_second]=substr($2,5)
}
}
END{
  for (e in a){
    print a[e] c[e]
  }
}











