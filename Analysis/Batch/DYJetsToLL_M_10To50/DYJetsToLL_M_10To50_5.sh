#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_4" "DYJetsToLL_M_10To50_25" "DYJetsToLL_M_10To50_46" "DYJetsToLL_M_10To50_67" "DYJetsToLL_M_10To50_88" "DYJetsToLL_M_10To50_109" "DYJetsToLL_M_10To50_130" "DYJetsToLL_M_10To50_151" "DYJetsToLL_M_10To50_172" "DYJetsToLL_M_10To50_193" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50 
   ./TopMass_analysis DYJetsToLL_M_10To50/${i}.list DYJetsToLL_M_10To50/${i}.txt 
end 
