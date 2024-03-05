#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_12" "DYJetsToLL_M_10To50_33" "DYJetsToLL_M_10To50_54" "DYJetsToLL_M_10To50_75" "DYJetsToLL_M_10To50_96" "DYJetsToLL_M_10To50_117" "DYJetsToLL_M_10To50_138" "DYJetsToLL_M_10To50_159" "DYJetsToLL_M_10To50_180" "DYJetsToLL_M_10To50_201" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50 
   ./TopMass_analysis DYJetsToLL_M_10To50/${i}.list DYJetsToLL_M_10To50/${i}.txt 
end 
