#!/bin/bash

#in standard .dat files we have the ordering
#mer DONE dist1 dist2 dist3 tot_dist symfac 8:tot_RPA 9:DFT 10:EXX   11:RSE     12:RPA(CBS) 13:RPA(AVTZ) 14:RPA(AVQZ)
#                                 0.00233105 -0.02999307 0.00371952 -0.00119230 -0.00019617 -0.00171839 -0.00083836
#in basis .dat files the order is 
#mer DONE dist1 dist2 dist3 tot_dist symfac 8:tot_RPA ? ? 11:DFT(AVQZ) 12:DFT(AVTZ) 13:EXX(AVQZ) EXX(AVTZ) 15:RSE(AVQZ) RSE(AVTZ) 17:RPA(CBS) 18:RPA(AVQZ) 19:RPA(AVTZ)
#0.00233105 0.00168887 0.00080304 -0.02999307 -0.03004894 0.00371952 0.00379271 -0.00119230 -0.00127128 -0.00019617 -0.00083836 -0.00171839

cat $1 | awk '{print $1" "$2" "$3" "$4" "$5" "$6" "$7" "$8" "$11" "$13" "$15" "$17" "$19" "$18}'
