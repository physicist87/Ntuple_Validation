#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WZ 
cmsenv 
set inputlists = ("WZ_2" "WZ_10" "WZ_18" "WZ_26" "WZ_34" "WZ_42" "WZ_50" "WZ_58" "WZ_66" "WZ_74" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WZ 
   ./TopMass_analysis WZ/${i}.list WZ/${i}.txt 
end 
