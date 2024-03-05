#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016E 
cmsenv 
set inputlists = ("DoubleEG_Run2016E_1" "DoubleEG_Run2016E_14" "DoubleEG_Run2016E_27" "DoubleEG_Run2016E_40" "DoubleEG_Run2016E_53" "DoubleEG_Run2016E_66" "DoubleEG_Run2016E_79" "DoubleEG_Run2016E_92" "DoubleEG_Run2016E_105" "DoubleEG_Run2016E_118" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016E 
   ./TopMass_analysis DoubleEG_Run2016E/${i}.list DoubleEG_Run2016E/${i}.txt 
end 
