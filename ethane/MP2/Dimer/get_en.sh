#!/bin/bash

rm results_tt.dat

strdir='/home/kelum/work/erc/khanh/analysis/analysis_jupyter/structures/Ethane/Dimers'

for ((i=1;i<=320;i++ ))
 do 
   cp head inp.yaml
   mer=$(printf "%03d" $i)
   echo "  geometry: ${strdir}/dimer_0${mer}.xyz" >> inp.yaml
   cat tail >> inp.yaml
    
   cuby4 inp.yaml > tmp
   grep " energy" tmp | tail -n 1 | awk '{print $3}' >> results_tt.dat
 done

paste ../new_energies*AVTZ*dat results_tt.dat | awk '{print $1" "$2" "$3" "$4" "$9}' > energies_atm_tt.dat
