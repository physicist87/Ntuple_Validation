#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016C 
cmsenv 
set inputlists = ("MuonEG_Run2016C_8" "MuonEG_Run2016C_17" "MuonEG_Run2016C_26" "MuonEG_Run2016C_35" "MuonEG_Run2016C_44" "MuonEG_Run2016C_53" "MuonEG_Run2016C_62" "MuonEG_Run2016C_71" "MuonEG_Run2016C_80" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016C 
   ./TopMass_analysis MuonEG_Run2016C/${i}.list MuonEG_Run2016C/${i}.txt 
end 
