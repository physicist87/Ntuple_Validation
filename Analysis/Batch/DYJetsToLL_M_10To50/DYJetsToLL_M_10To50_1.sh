#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_21" "DYJetsToLL_M_10To50_42" "DYJetsToLL_M_10To50_63" "DYJetsToLL_M_10To50_84" "DYJetsToLL_M_10To50_105" "DYJetsToLL_M_10To50_126" "DYJetsToLL_M_10To50_147" "DYJetsToLL_M_10To50_168" "DYJetsToLL_M_10To50_189" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50 
   ./TopMass_analysis DYJetsToLL_M_10To50/${i}.list DYJetsToLL_M_10To50/${i}.txt 
end 
