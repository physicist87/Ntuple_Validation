#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_26" "DYJetsToLL_M_50_63" "DYJetsToLL_M_50_100" "DYJetsToLL_M_50_137" "DYJetsToLL_M_50_174" "DYJetsToLL_M_50_211" "DYJetsToLL_M_50_248" "DYJetsToLL_M_50_285" "DYJetsToLL_M_50_322" "DYJetsToLL_M_50_359" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
