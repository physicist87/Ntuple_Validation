#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_2" "DYJetsToLL_M_10To50_23" "DYJetsToLL_M_10To50_44" "DYJetsToLL_M_10To50_65" "DYJetsToLL_M_10To50_86" "DYJetsToLL_M_10To50_107" "DYJetsToLL_M_10To50_128" "DYJetsToLL_M_10To50_149" "DYJetsToLL_M_10To50_170" "DYJetsToLL_M_10To50_191" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50 
   ./TopMass_analysis DYJetsToLL_M_10To50/${i}.list DYJetsToLL_M_10To50/${i}.txt 
end 
