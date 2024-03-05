#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016E 
cmsenv 
set inputlists = ("DoubleEG_Run2016E_6" "DoubleEG_Run2016E_19" "DoubleEG_Run2016E_32" "DoubleEG_Run2016E_45" "DoubleEG_Run2016E_58" "DoubleEG_Run2016E_71" "DoubleEG_Run2016E_84" "DoubleEG_Run2016E_97" "DoubleEG_Run2016E_110" "DoubleEG_Run2016E_123" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016E 
   ./TopMass_analysis DoubleEG_Run2016E/${i}.list DoubleEG_Run2016E/${i}.txt 
end 
