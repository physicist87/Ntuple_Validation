#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WW 
cmsenv 
set inputlists = ("WW_4" "WW_8" "WW_12" "WW_16" "WW_20" "WW_24" "WW_28" "WW_32" "WW_36" "WW_40" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WW 
   ./TopMass_analysis WW/${i}.list WW/${i}.txt 
end 
