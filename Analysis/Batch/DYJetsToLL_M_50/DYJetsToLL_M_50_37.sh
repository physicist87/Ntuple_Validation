#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_36" "DYJetsToLL_M_50_73" "DYJetsToLL_M_50_110" "DYJetsToLL_M_50_147" "DYJetsToLL_M_50_184" "DYJetsToLL_M_50_221" "DYJetsToLL_M_50_258" "DYJetsToLL_M_50_295" "DYJetsToLL_M_50_332" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
