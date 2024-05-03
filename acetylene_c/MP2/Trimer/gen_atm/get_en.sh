#!/bin/bash

rm results_new.dat

strdir='/home/kelum/work/erc/khanh/analysis/analysis_jupyter/structures/Acetylene_c/Trimers'

for ((i=1;i<=1100;i++ ))
 do 
   cp head inp.yaml
   mer=$(printf "%04d" $i)
   echo $mer
   echo "  geometry: ${strdir}/trimer_${mer}.xyz" >> inp.yaml
   cat tail >> inp.yaml
    
   cuby4 inp.yaml > tmp
   grep "3-body energy" tmp | head -n 1 | awk '{print $3}' >> results_new.dat
 done

paste ../new_energies*AVTZ*dat results_new.dat | awk '{print $1" "$2" "$3" "$4" "$5" "$6" "$7" "$12}' > energies_atm_new.dat


