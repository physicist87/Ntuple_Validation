#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016E 
cmsenv 
set inputlists = ("MuonEG_Run2016E_2" "MuonEG_Run2016E_15" "MuonEG_Run2016E_28" "MuonEG_Run2016E_41" "MuonEG_Run2016E_54" "MuonEG_Run2016E_67" "MuonEG_Run2016E_80" "MuonEG_Run2016E_93" "MuonEG_Run2016E_106" "MuonEG_Run2016E_119" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016E 
   ./TopMass_analysis MuonEG_Run2016E/${i}.list MuonEG_Run2016E/${i}.txt 
end 
