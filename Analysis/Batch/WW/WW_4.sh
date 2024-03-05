#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WW 
cmsenv 
set inputlists = ("WW_3" "WW_7" "WW_11" "WW_15" "WW_19" "WW_23" "WW_27" "WW_31" "WW_35" "WW_39" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WW 
   ./TopMass_analysis WW/${i}.list WW/${i}.txt 
end 
