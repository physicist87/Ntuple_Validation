#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_12" "DYJetsToLL_M_50_49" "DYJetsToLL_M_50_86" "DYJetsToLL_M_50_123" "DYJetsToLL_M_50_160" "DYJetsToLL_M_50_197" "DYJetsToLL_M_50_234" "DYJetsToLL_M_50_271" "DYJetsToLL_M_50_308" "DYJetsToLL_M_50_345" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
