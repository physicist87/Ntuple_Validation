#!/bin/tcsh

#set inputlists = ("ttdilep")
set inputlists = ("TTbar_Signal_1")

#set dimu_mass_cut_on = ("1")
#set dimu_mass_cut = ("20")

foreach i ( $inputlists )
   
   mkdir -p output

   ./TopMass_analysis ${i}.list ${i}.txt 

end

