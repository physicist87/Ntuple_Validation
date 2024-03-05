#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016E 
cmsenv 
set inputlists = ("DoubleEG_Run2016E_4" "DoubleEG_Run2016E_17" "DoubleEG_Run2016E_30" "DoubleEG_Run2016E_43" "DoubleEG_Run2016E_56" "DoubleEG_Run2016E_69" "DoubleEG_Run2016E_82" "DoubleEG_Run2016E_95" "DoubleEG_Run2016E_108" "DoubleEG_Run2016E_121" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016E 
   ./TopMass_analysis DoubleEG_Run2016E/${i}.list DoubleEG_Run2016E/${i}.txt 
end 
