#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016E 
cmsenv 
set inputlists = ("DoubleEG_Run2016E_2" "DoubleEG_Run2016E_15" "DoubleEG_Run2016E_28" "DoubleEG_Run2016E_41" "DoubleEG_Run2016E_54" "DoubleEG_Run2016E_67" "DoubleEG_Run2016E_80" "DoubleEG_Run2016E_93" "DoubleEG_Run2016E_106" "DoubleEG_Run2016E_119" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016E 
   ./TopMass_analysis DoubleEG_Run2016E/${i}.list DoubleEG_Run2016E/${i}.txt 
end 
