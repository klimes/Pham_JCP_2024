#!/bin/bash
#  5             6           7              8           9             10               11            12          13            14          15           16
#EtotRPA(CBS)  EtotRPA(X+1)  EtotRPA(X)    EtotDFT(X+1)  EtotDFT(X)    EtotHF(X+1)   EtotHF(X)     EcSingles(X+1)EcSingles(X)  EcRPA(CBS)    EcRPA(X+1)    EcRPA(X) 
cat $1 | awk '{print $1" "$2" "$3" "$4" "$5" "$8" "$10" "$12" "$14" "$16" "$15}'
