#! /usr/bin/awk -f
{
  if(NR==7 || NR==17 || NR==18 || NR==19 || NR==20 || NR==26 || NR==28 || NR==29 || NR==36 || NR==37 ||NR==37 || NR==38|| NR==40 || NR==53 || NR==58 || NR==59 || NR==60 || NR==72 || NR==73 || NR==76 || NR==92 || NR==95 || NR==98 || NR==113 || NR==114 || NR==118 || NR==119 || NR==124 || NR==125 || NR==126 || NR==132  || NR==155 ||NR==156 || NR==157|| NR==158 || NR==166 || NR==167 || NR==194 || NR==209 || NR==214 || NR==216 || NR==217 || NR==222 || NR==223 || NR==224 || NR==225 || NR==227 || NR==231 || NR==234 || NR==240 || NR==241 || NR==246 || NR==247 || NR==248 || NR==252 || $0 ~/Missing/ || $0 ~/Not/ || $0~/Paying/ || $0 ~/We have/ || $0 ~/understanding/ || NR==279 || NR==30 || NR==61 || NR==193 || NR==211 || NR==245)
  {
    print "O|"$0
  }
  else{
    print "W|"$0
  }
}

