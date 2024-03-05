#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_29" "DYJetsToLL_M_50_66" "DYJetsToLL_M_50_103" "DYJetsToLL_M_50_140" "DYJetsToLL_M_50_177" "DYJetsToLL_M_50_214" "DYJetsToLL_M_50_251" "DYJetsToLL_M_50_288" "DYJetsToLL_M_50_325" "DYJetsToLL_M_50_362" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
