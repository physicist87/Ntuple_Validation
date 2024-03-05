#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_18" "DYJetsToLL_M_10To50_39" "DYJetsToLL_M_10To50_60" "DYJetsToLL_M_10To50_81" "DYJetsToLL_M_10To50_102" "DYJetsToLL_M_10To50_123" "DYJetsToLL_M_10To50_144" "DYJetsToLL_M_10To50_165" "DYJetsToLL_M_10To50_186" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50 
   ./TopMass_analysis DYJetsToLL_M_10To50/${i}.list DYJetsToLL_M_10To50/${i}.txt 
end 
