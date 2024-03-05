#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WZ 
cmsenv 
set inputlists = ("WZ_3" "WZ_11" "WZ_19" "WZ_27" "WZ_35" "WZ_43" "WZ_51" "WZ_59" "WZ_67" "WZ_75" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WZ 
   ./TopMass_analysis WZ/${i}.list WZ/${i}.txt 
end 
