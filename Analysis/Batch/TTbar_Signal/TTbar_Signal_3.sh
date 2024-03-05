#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_Signal 
cmsenv 
set inputlists = ("TTbar_Signal_2" "TTbar_Signal_17" "TTbar_Signal_32" "TTbar_Signal_47" "TTbar_Signal_62" "TTbar_Signal_77" "TTbar_Signal_92" "TTbar_Signal_107" "TTbar_Signal_122" "TTbar_Signal_137" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_Signal 
   ./TopMass_analysis TTbar_Signal/${i}.list TTbar_Signal/${i}.txt 
end 
