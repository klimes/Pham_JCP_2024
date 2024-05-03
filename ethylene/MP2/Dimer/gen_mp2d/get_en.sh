#!/bin/bash

rm results_new.dat

strdir='/home/kelum/work/erc/khanh/analysis/analysis_jupyter/structures/Ethylene/Dimers'

for ((i=1;i<=301;i++ ))
 do 
   cp head inp.yaml
   mer=$(printf "%03d" $i)
   echo "  geometry: ${strdir}/dimer_0${mer}.xyz" >> inp.yaml
   cat tail >> inp.yaml
    
   cuby4 inp.yaml > tmp
   grep " energy" tmp | awk '{print $3}' > tmp2 
   echo "`head -n 1 tmp2`-(`tail -n 1 tmp2`)" | bc -l >> results_new.dat
 done

paste ../new_energies*AVTZ*dat results_new.dat | awk '{print $1" "$2" "$3" "$4" "$9}' > energies_atm_new.dat
