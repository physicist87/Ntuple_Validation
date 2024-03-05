#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_6" "DYJetsToLL_M_50_43" "DYJetsToLL_M_50_80" "DYJetsToLL_M_50_117" "DYJetsToLL_M_50_154" "DYJetsToLL_M_50_191" "DYJetsToLL_M_50_228" "DYJetsToLL_M_50_265" "DYJetsToLL_M_50_302" "DYJetsToLL_M_50_339" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
