#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_Signal 
cmsenv 
set inputlists = ("TTbar_Signal_1" "TTbar_Signal_16" "TTbar_Signal_31" "TTbar_Signal_46" "TTbar_Signal_61" "TTbar_Signal_76" "TTbar_Signal_91" "TTbar_Signal_106" "TTbar_Signal_121" "TTbar_Signal_136" "TTbar_Signal_151" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_Signal 
   ./TopMass_analysis TTbar_Signal/${i}.list TTbar_Signal/${i}.txt 
end 
