#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WW 
cmsenv 
set inputlists = ("WW_1" "WW_5" "WW_9" "WW_13" "WW_17" "WW_21" "WW_25" "WW_29" "WW_33" "WW_37" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WW 
   ./TopMass_analysis WW/${i}.list WW/${i}.txt 
end 
