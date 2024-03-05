#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016E 
cmsenv 
set inputlists = ("MuonEG_Run2016E_6" "MuonEG_Run2016E_19" "MuonEG_Run2016E_32" "MuonEG_Run2016E_45" "MuonEG_Run2016E_58" "MuonEG_Run2016E_71" "MuonEG_Run2016E_84" "MuonEG_Run2016E_97" "MuonEG_Run2016E_110" "MuonEG_Run2016E_123" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016E 
   ./TopMass_analysis MuonEG_Run2016E/${i}.list MuonEG_Run2016E/${i}.txt 
end 
