#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_33" "DYJetsToLL_M_50_70" "DYJetsToLL_M_50_107" "DYJetsToLL_M_50_144" "DYJetsToLL_M_50_181" "DYJetsToLL_M_50_218" "DYJetsToLL_M_50_255" "DYJetsToLL_M_50_292" "DYJetsToLL_M_50_329" "DYJetsToLL_M_50_366" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
