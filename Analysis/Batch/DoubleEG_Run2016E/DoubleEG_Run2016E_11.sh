#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016E 
cmsenv 
set inputlists = ("DoubleEG_Run2016E_10" "DoubleEG_Run2016E_23" "DoubleEG_Run2016E_36" "DoubleEG_Run2016E_49" "DoubleEG_Run2016E_62" "DoubleEG_Run2016E_75" "DoubleEG_Run2016E_88" "DoubleEG_Run2016E_101" "DoubleEG_Run2016E_114" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016E 
   ./TopMass_analysis DoubleEG_Run2016E/${i}.list DoubleEG_Run2016E/${i}.txt 
end 
