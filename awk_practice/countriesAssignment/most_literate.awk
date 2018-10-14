#! /usr/bin/awk -f

BEGIN{
  FS="|"
}
{ 
  literate_in_region[$2]+=($10*$3)/100;
  total_population[$2]+=$3;
}
END{
  for(region in literate_in_region){
    # print "_________\n"region"\n___________"
    literacy=(literate_in_region[region]/total_population[region])*100;
    if(literacy>most_literate){
      most_literate=literacy;
      most_literate_region=region;
    }

  }
  print most_literate_region;
  print most_literate;
}
