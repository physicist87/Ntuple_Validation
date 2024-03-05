#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_16" "DYJetsToLL_M_10To50_37" "DYJetsToLL_M_10To50_58" "DYJetsToLL_M_10To50_79" "DYJetsToLL_M_10To50_100" "DYJetsToLL_M_10To50_121" "DYJetsToLL_M_10To50_142" "DYJetsToLL_M_10To50_163" "DYJetsToLL_M_10To50_184" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50 
   ./TopMass_analysis DYJetsToLL_M_10To50/${i}.list DYJetsToLL_M_10To50/${i}.txt 
end 
