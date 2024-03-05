#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_3" "DYJetsToLL_M_10To50_24" "DYJetsToLL_M_10To50_45" "DYJetsToLL_M_10To50_66" "DYJetsToLL_M_10To50_87" "DYJetsToLL_M_10To50_108" "DYJetsToLL_M_10To50_129" "DYJetsToLL_M_10To50_150" "DYJetsToLL_M_10To50_171" "DYJetsToLL_M_10To50_192" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50 
   ./TopMass_analysis DYJetsToLL_M_10To50/${i}.list DYJetsToLL_M_10To50/${i}.txt 
end 
