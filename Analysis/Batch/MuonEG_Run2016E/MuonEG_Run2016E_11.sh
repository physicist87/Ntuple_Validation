#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016E 
cmsenv 
set inputlists = ("MuonEG_Run2016E_10" "MuonEG_Run2016E_23" "MuonEG_Run2016E_36" "MuonEG_Run2016E_49" "MuonEG_Run2016E_62" "MuonEG_Run2016E_75" "MuonEG_Run2016E_88" "MuonEG_Run2016E_101" "MuonEG_Run2016E_114" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016E 
   ./TopMass_analysis MuonEG_Run2016E/${i}.list MuonEG_Run2016E/${i}.txt 
end 
