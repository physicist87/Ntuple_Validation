#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016D 
cmsenv 
set inputlists = ("MuonEG_Run2016D_5" "MuonEG_Run2016D_20" "MuonEG_Run2016D_35" "MuonEG_Run2016D_50" "MuonEG_Run2016D_65" "MuonEG_Run2016D_80" "MuonEG_Run2016D_95" "MuonEG_Run2016D_110" "MuonEG_Run2016D_125" "MuonEG_Run2016D_140" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016D 
   ./TopMass_analysis MuonEG_Run2016D/${i}.list MuonEG_Run2016D/${i}.txt 
end 
