#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016E 
cmsenv 
set inputlists = ("DoubleEG_Run2016E_9" "DoubleEG_Run2016E_22" "DoubleEG_Run2016E_35" "DoubleEG_Run2016E_48" "DoubleEG_Run2016E_61" "DoubleEG_Run2016E_74" "DoubleEG_Run2016E_87" "DoubleEG_Run2016E_100" "DoubleEG_Run2016E_113" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016E 
   ./TopMass_analysis DoubleEG_Run2016E/${i}.list DoubleEG_Run2016E/${i}.txt 
end 
