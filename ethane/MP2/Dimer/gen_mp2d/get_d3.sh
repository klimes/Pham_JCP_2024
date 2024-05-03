#!/bin/bash

rm results_d3.dat

strdir='/home/kelum/work/erc/khanh/analysis/analysis_jupyter/structures/Ethane/Dimers'

for ((i=1;i<=320;i++ ))
 do 
   cp head inp.yaml
   mer=$(printf "%03d" $i)
   echo "  geometry: ${strdir}/dimer_0${mer}.xyz" >> inp.yaml
   cat taild3 >> inp.yaml
    
   cuby4 inp.yaml > tmp
   grep " energy" tmp | awk '{print $3}' | tail -n 1 >> results_d3.dat  
 done

paste ../new_energies*AVTZ*dat results_d3.dat | awk '{print $1" "$2" "$3" "$4" "$9}' > energies_d3.dat
