#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_32" "DYJetsToLL_M_50_69" "DYJetsToLL_M_50_106" "DYJetsToLL_M_50_143" "DYJetsToLL_M_50_180" "DYJetsToLL_M_50_217" "DYJetsToLL_M_50_254" "DYJetsToLL_M_50_291" "DYJetsToLL_M_50_328" "DYJetsToLL_M_50_365" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
