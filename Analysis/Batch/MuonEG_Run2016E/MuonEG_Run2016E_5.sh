#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016E 
cmsenv 
set inputlists = ("MuonEG_Run2016E_4" "MuonEG_Run2016E_17" "MuonEG_Run2016E_30" "MuonEG_Run2016E_43" "MuonEG_Run2016E_56" "MuonEG_Run2016E_69" "MuonEG_Run2016E_82" "MuonEG_Run2016E_95" "MuonEG_Run2016E_108" "MuonEG_Run2016E_121" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016E 
   ./TopMass_analysis MuonEG_Run2016E/${i}.list MuonEG_Run2016E/${i}.txt 
end 
