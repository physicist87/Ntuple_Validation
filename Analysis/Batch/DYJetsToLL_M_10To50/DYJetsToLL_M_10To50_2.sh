#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_1" "DYJetsToLL_M_10To50_22" "DYJetsToLL_M_10To50_43" "DYJetsToLL_M_10To50_64" "DYJetsToLL_M_10To50_85" "DYJetsToLL_M_10To50_106" "DYJetsToLL_M_10To50_127" "DYJetsToLL_M_10To50_148" "DYJetsToLL_M_10To50_169" "DYJetsToLL_M_10To50_190" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50 
   ./TopMass_analysis DYJetsToLL_M_10To50/${i}.list DYJetsToLL_M_10To50/${i}.txt 
end 
