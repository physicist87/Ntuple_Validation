#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016C 
cmsenv 
set inputlists = ("DoubleEG_Run2016C_3" "DoubleEG_Run2016C_12" "DoubleEG_Run2016C_21" "DoubleEG_Run2016C_30" "DoubleEG_Run2016C_39" "DoubleEG_Run2016C_48" "DoubleEG_Run2016C_57" "DoubleEG_Run2016C_66" "DoubleEG_Run2016C_75" "DoubleEG_Run2016C_84" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016C 
   ./TopMass_analysis DoubleEG_Run2016C/${i}.list DoubleEG_Run2016C/${i}.txt 
end 
