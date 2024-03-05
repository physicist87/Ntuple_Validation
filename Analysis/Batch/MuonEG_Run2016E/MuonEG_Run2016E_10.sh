#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016E 
cmsenv 
set inputlists = ("MuonEG_Run2016E_9" "MuonEG_Run2016E_22" "MuonEG_Run2016E_35" "MuonEG_Run2016E_48" "MuonEG_Run2016E_61" "MuonEG_Run2016E_74" "MuonEG_Run2016E_87" "MuonEG_Run2016E_100" "MuonEG_Run2016E_113" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016E 
   ./TopMass_analysis MuonEG_Run2016E/${i}.list MuonEG_Run2016E/${i}.txt 
end 
