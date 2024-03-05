#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_18" "DYJetsToLL_M_50_55" "DYJetsToLL_M_50_92" "DYJetsToLL_M_50_129" "DYJetsToLL_M_50_166" "DYJetsToLL_M_50_203" "DYJetsToLL_M_50_240" "DYJetsToLL_M_50_277" "DYJetsToLL_M_50_314" "DYJetsToLL_M_50_351" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
