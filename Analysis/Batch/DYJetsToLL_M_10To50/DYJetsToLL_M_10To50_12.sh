#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_11" "DYJetsToLL_M_10To50_32" "DYJetsToLL_M_10To50_53" "DYJetsToLL_M_10To50_74" "DYJetsToLL_M_10To50_95" "DYJetsToLL_M_10To50_116" "DYJetsToLL_M_10To50_137" "DYJetsToLL_M_10To50_158" "DYJetsToLL_M_10To50_179" "DYJetsToLL_M_10To50_200" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50 
   ./TopMass_analysis DYJetsToLL_M_10To50/${i}.list DYJetsToLL_M_10To50/${i}.txt 
end 
