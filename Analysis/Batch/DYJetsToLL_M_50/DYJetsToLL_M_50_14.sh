#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_13" "DYJetsToLL_M_50_50" "DYJetsToLL_M_50_87" "DYJetsToLL_M_50_124" "DYJetsToLL_M_50_161" "DYJetsToLL_M_50_198" "DYJetsToLL_M_50_235" "DYJetsToLL_M_50_272" "DYJetsToLL_M_50_309" "DYJetsToLL_M_50_346" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
