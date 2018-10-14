#! /usr/bin/awk -f
BEGIN{
  FS="|"
}
{if($5<100){less_than_cent=less_than_cent"\n"$1}
  if($5>100 && $5<300){cent_to_thr_cent=cent_to_thr_cent"\n"$1}
  if($5>300){greater_than_thr_cent=greater_than_thr_cent"\n"$1}

}
END{
  print "------------------------"
  print "less_than_100_population_density"
  print "------------------------"
  print less_than_cent
  print "-------------------------"
  print "greater_than_100_and_smaller_than_300"
  print "------------------------"
  print cent_to_thr_cent
  print "-------------------------"
  print "greater_than_300_population_density"
  print "------------------------"
  print greater_than_thr_cent
  print "------------------------"
}

