#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_17" "DYJetsToLL_M_10To50_38" "DYJetsToLL_M_10To50_59" "DYJetsToLL_M_10To50_80" "DYJetsToLL_M_10To50_101" "DYJetsToLL_M_10To50_122" "DYJetsToLL_M_10To50_143" "DYJetsToLL_M_10To50_164" "DYJetsToLL_M_10To50_185" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50 
   ./TopMass_analysis DYJetsToLL_M_10To50/${i}.list DYJetsToLL_M_10To50/${i}.txt 
end 
