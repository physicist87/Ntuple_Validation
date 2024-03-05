#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WZ 
cmsenv 
set inputlists = ("WZ_7" "WZ_15" "WZ_23" "WZ_31" "WZ_39" "WZ_47" "WZ_55" "WZ_63" "WZ_71" "WZ_79" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WZ 
   ./TopMass_analysis WZ/${i}.list WZ/${i}.txt 
end 
