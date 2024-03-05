#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_34" "DYJetsToLL_M_50_71" "DYJetsToLL_M_50_108" "DYJetsToLL_M_50_145" "DYJetsToLL_M_50_182" "DYJetsToLL_M_50_219" "DYJetsToLL_M_50_256" "DYJetsToLL_M_50_293" "DYJetsToLL_M_50_330" "DYJetsToLL_M_50_367" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
