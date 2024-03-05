#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_1" "DYJetsToLL_M_50_38" "DYJetsToLL_M_50_75" "DYJetsToLL_M_50_112" "DYJetsToLL_M_50_149" "DYJetsToLL_M_50_186" "DYJetsToLL_M_50_223" "DYJetsToLL_M_50_260" "DYJetsToLL_M_50_297" "DYJetsToLL_M_50_334" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
