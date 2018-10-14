#! /usr/bin/awk -f
{
  position_of_digit=0
}
{
  split($0,digits,"")
  for(i=length(digits);i>=1;i--){
    position_of_digit++
      if(position_of_digit>number_of_digits){
        number_of_digits=position_of_digit
      }
    digit_of_ith_position[position_of_digit]+=digits[i]  
  }
}
END{
  for(j=1;j<number_of_digits;j++){
    digit_of_next_position=j+1
    digit_of_ith_position[digit_of_next_position]+=int((digit_of_ith_position[j])/10)
    digit_of_ith_position[j]=(digit_of_ith_position[j])%10
  }
  
  for(k=number_of_digits;k>=1;k--){
   sum_of_all_numbers=sum_of_all_numbers""digit_of_ith_position[k]
  }
  print sum_of_all_numbers
}
