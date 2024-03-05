#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WW 
cmsenv 
set inputlists = ("WW_2" "WW_6" "WW_10" "WW_14" "WW_18" "WW_22" "WW_26" "WW_30" "WW_34" "WW_38" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WW 
   ./TopMass_analysis WW/${i}.list WW/${i}.txt 
end 
