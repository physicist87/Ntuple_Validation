#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WZ 
cmsenv 
set inputlists = ("WZ_4" "WZ_12" "WZ_20" "WZ_28" "WZ_36" "WZ_44" "WZ_52" "WZ_60" "WZ_68" "WZ_76" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WZ 
   ./TopMass_analysis WZ/${i}.list WZ/${i}.txt 
end 
