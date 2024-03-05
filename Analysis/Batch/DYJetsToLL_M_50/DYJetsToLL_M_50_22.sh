#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_21" "DYJetsToLL_M_50_58" "DYJetsToLL_M_50_95" "DYJetsToLL_M_50_132" "DYJetsToLL_M_50_169" "DYJetsToLL_M_50_206" "DYJetsToLL_M_50_243" "DYJetsToLL_M_50_280" "DYJetsToLL_M_50_317" "DYJetsToLL_M_50_354" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
