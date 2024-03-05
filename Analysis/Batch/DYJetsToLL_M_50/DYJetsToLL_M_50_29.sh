#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_28" "DYJetsToLL_M_50_65" "DYJetsToLL_M_50_102" "DYJetsToLL_M_50_139" "DYJetsToLL_M_50_176" "DYJetsToLL_M_50_213" "DYJetsToLL_M_50_250" "DYJetsToLL_M_50_287" "DYJetsToLL_M_50_324" "DYJetsToLL_M_50_361" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
