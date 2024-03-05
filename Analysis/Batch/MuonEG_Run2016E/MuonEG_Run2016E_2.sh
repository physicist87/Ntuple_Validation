#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016E 
cmsenv 
set inputlists = ("MuonEG_Run2016E_1" "MuonEG_Run2016E_14" "MuonEG_Run2016E_27" "MuonEG_Run2016E_40" "MuonEG_Run2016E_53" "MuonEG_Run2016E_66" "MuonEG_Run2016E_79" "MuonEG_Run2016E_92" "MuonEG_Run2016E_105" "MuonEG_Run2016E_118" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016E 
   ./TopMass_analysis MuonEG_Run2016E/${i}.list MuonEG_Run2016E/${i}.txt 
end 
