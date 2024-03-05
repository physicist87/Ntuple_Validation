#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/ZZ 
cmsenv 
set inputlists = ("ZZ_1" "ZZ_2" "ZZ_3" "ZZ_4" "ZZ_5" "ZZ_6" "ZZ_7" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/ZZ 
   ./TopMass_analysis ZZ/${i}.list ZZ/${i}.txt 
end 
