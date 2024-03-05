#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_8" "DYJetsToLL_M_10To50_29" "DYJetsToLL_M_10To50_50" "DYJetsToLL_M_10To50_71" "DYJetsToLL_M_10To50_92" "DYJetsToLL_M_10To50_113" "DYJetsToLL_M_10To50_134" "DYJetsToLL_M_10To50_155" "DYJetsToLL_M_10To50_176" "DYJetsToLL_M_10To50_197" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50 
   ./TopMass_analysis DYJetsToLL_M_10To50/${i}.list DYJetsToLL_M_10To50/${i}.txt 
end 
