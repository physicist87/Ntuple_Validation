#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016C 
cmsenv 
set inputlists = ("MuonEG_Run2016C_7" "MuonEG_Run2016C_16" "MuonEG_Run2016C_25" "MuonEG_Run2016C_34" "MuonEG_Run2016C_43" "MuonEG_Run2016C_52" "MuonEG_Run2016C_61" "MuonEG_Run2016C_70" "MuonEG_Run2016C_79" "MuonEG_Run2016C_88" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016C 
   ./TopMass_analysis MuonEG_Run2016C/${i}.list MuonEG_Run2016C/${i}.txt 
end 
