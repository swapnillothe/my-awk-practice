#! /usr/bin/awk -f
BEGIN{
  FS="|";
}
{
  regions[$2]=1;
  countries[$1]=$2;
}  
END{

  for(region in regions){
    print "-----------------------------------";
    print region;
    print "-----------------------------------";
    for(country in countries){  
      if(countries[country]==region);
      {
        print country
      }
    }
  }
}
