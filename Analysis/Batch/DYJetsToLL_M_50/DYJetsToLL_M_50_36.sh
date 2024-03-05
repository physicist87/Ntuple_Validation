#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_35" "DYJetsToLL_M_50_72" "DYJetsToLL_M_50_109" "DYJetsToLL_M_50_146" "DYJetsToLL_M_50_183" "DYJetsToLL_M_50_220" "DYJetsToLL_M_50_257" "DYJetsToLL_M_50_294" "DYJetsToLL_M_50_331" "DYJetsToLL_M_50_368" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
