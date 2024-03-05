#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_13" "DYJetsToLL_M_10To50_34" "DYJetsToLL_M_10To50_55" "DYJetsToLL_M_10To50_76" "DYJetsToLL_M_10To50_97" "DYJetsToLL_M_10To50_118" "DYJetsToLL_M_10To50_139" "DYJetsToLL_M_10To50_160" "DYJetsToLL_M_10To50_181" "DYJetsToLL_M_10To50_202" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50 
   ./TopMass_analysis DYJetsToLL_M_10To50/${i}.list DYJetsToLL_M_10To50/${i}.txt 
end 
