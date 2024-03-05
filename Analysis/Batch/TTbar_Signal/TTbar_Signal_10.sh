#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_Signal 
cmsenv 
set inputlists = ("TTbar_Signal_9" "TTbar_Signal_24" "TTbar_Signal_39" "TTbar_Signal_54" "TTbar_Signal_69" "TTbar_Signal_84" "TTbar_Signal_99" "TTbar_Signal_114" "TTbar_Signal_129" "TTbar_Signal_144" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_Signal 
   ./TopMass_analysis TTbar_Signal/${i}.list TTbar_Signal/${i}.txt 
end 
