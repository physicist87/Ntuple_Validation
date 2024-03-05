#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016C 
cmsenv 
set inputlists = ("MuonEG_Run2016C_3" "MuonEG_Run2016C_12" "MuonEG_Run2016C_21" "MuonEG_Run2016C_30" "MuonEG_Run2016C_39" "MuonEG_Run2016C_48" "MuonEG_Run2016C_57" "MuonEG_Run2016C_66" "MuonEG_Run2016C_75" "MuonEG_Run2016C_84" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016C 
   ./TopMass_analysis MuonEG_Run2016C/${i}.list MuonEG_Run2016C/${i}.txt 
end 
