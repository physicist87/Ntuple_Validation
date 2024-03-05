#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_8" "DYJetsToLL_M_50_45" "DYJetsToLL_M_50_82" "DYJetsToLL_M_50_119" "DYJetsToLL_M_50_156" "DYJetsToLL_M_50_193" "DYJetsToLL_M_50_230" "DYJetsToLL_M_50_267" "DYJetsToLL_M_50_304" "DYJetsToLL_M_50_341" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
