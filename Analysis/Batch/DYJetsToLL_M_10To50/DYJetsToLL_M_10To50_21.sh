#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_20" "DYJetsToLL_M_10To50_41" "DYJetsToLL_M_10To50_62" "DYJetsToLL_M_10To50_83" "DYJetsToLL_M_10To50_104" "DYJetsToLL_M_10To50_125" "DYJetsToLL_M_10To50_146" "DYJetsToLL_M_10To50_167" "DYJetsToLL_M_10To50_188" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50 
   ./TopMass_analysis DYJetsToLL_M_10To50/${i}.list DYJetsToLL_M_10To50/${i}.txt 
end 
