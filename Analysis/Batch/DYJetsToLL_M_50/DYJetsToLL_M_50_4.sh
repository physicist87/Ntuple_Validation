#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_3" "DYJetsToLL_M_50_40" "DYJetsToLL_M_50_77" "DYJetsToLL_M_50_114" "DYJetsToLL_M_50_151" "DYJetsToLL_M_50_188" "DYJetsToLL_M_50_225" "DYJetsToLL_M_50_262" "DYJetsToLL_M_50_299" "DYJetsToLL_M_50_336" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
