#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_Signal 
cmsenv 
set inputlists = ("TTbar_Signal_5" "TTbar_Signal_20" "TTbar_Signal_35" "TTbar_Signal_50" "TTbar_Signal_65" "TTbar_Signal_80" "TTbar_Signal_95" "TTbar_Signal_110" "TTbar_Signal_125" "TTbar_Signal_140" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_Signal 
   ./TopMass_analysis TTbar_Signal/${i}.list TTbar_Signal/${i}.txt 
end 
