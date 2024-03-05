#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_2" "DYJetsToLL_M_50_39" "DYJetsToLL_M_50_76" "DYJetsToLL_M_50_113" "DYJetsToLL_M_50_150" "DYJetsToLL_M_50_187" "DYJetsToLL_M_50_224" "DYJetsToLL_M_50_261" "DYJetsToLL_M_50_298" "DYJetsToLL_M_50_335" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
