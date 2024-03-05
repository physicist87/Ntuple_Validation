#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_11" "DYJetsToLL_M_50_48" "DYJetsToLL_M_50_85" "DYJetsToLL_M_50_122" "DYJetsToLL_M_50_159" "DYJetsToLL_M_50_196" "DYJetsToLL_M_50_233" "DYJetsToLL_M_50_270" "DYJetsToLL_M_50_307" "DYJetsToLL_M_50_344" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
