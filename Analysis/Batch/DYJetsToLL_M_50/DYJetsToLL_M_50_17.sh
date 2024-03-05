#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_16" "DYJetsToLL_M_50_53" "DYJetsToLL_M_50_90" "DYJetsToLL_M_50_127" "DYJetsToLL_M_50_164" "DYJetsToLL_M_50_201" "DYJetsToLL_M_50_238" "DYJetsToLL_M_50_275" "DYJetsToLL_M_50_312" "DYJetsToLL_M_50_349" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
