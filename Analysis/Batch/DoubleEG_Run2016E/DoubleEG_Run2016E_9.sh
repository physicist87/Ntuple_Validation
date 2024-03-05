#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016E 
cmsenv 
set inputlists = ("DoubleEG_Run2016E_8" "DoubleEG_Run2016E_21" "DoubleEG_Run2016E_34" "DoubleEG_Run2016E_47" "DoubleEG_Run2016E_60" "DoubleEG_Run2016E_73" "DoubleEG_Run2016E_86" "DoubleEG_Run2016E_99" "DoubleEG_Run2016E_112" "DoubleEG_Run2016E_125" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016E 
   ./TopMass_analysis DoubleEG_Run2016E/${i}.list DoubleEG_Run2016E/${i}.txt 
end 
