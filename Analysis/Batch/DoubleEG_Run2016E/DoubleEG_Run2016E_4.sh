#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016E 
cmsenv 
set inputlists = ("DoubleEG_Run2016E_3" "DoubleEG_Run2016E_16" "DoubleEG_Run2016E_29" "DoubleEG_Run2016E_42" "DoubleEG_Run2016E_55" "DoubleEG_Run2016E_68" "DoubleEG_Run2016E_81" "DoubleEG_Run2016E_94" "DoubleEG_Run2016E_107" "DoubleEG_Run2016E_120" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016E 
   ./TopMass_analysis DoubleEG_Run2016E/${i}.list DoubleEG_Run2016E/${i}.txt 
end 
