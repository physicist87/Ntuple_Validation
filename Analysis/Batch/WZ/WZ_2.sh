#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WZ 
cmsenv 
set inputlists = ("WZ_1" "WZ_9" "WZ_17" "WZ_25" "WZ_33" "WZ_41" "WZ_49" "WZ_57" "WZ_65" "WZ_73" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WZ 
   ./TopMass_analysis WZ/${i}.list WZ/${i}.txt 
end 
