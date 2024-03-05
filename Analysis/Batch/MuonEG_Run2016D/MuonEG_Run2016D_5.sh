#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016D 
cmsenv 
set inputlists = ("MuonEG_Run2016D_4" "MuonEG_Run2016D_19" "MuonEG_Run2016D_34" "MuonEG_Run2016D_49" "MuonEG_Run2016D_64" "MuonEG_Run2016D_79" "MuonEG_Run2016D_94" "MuonEG_Run2016D_109" "MuonEG_Run2016D_124" "MuonEG_Run2016D_139" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016D 
   ./TopMass_analysis MuonEG_Run2016D/${i}.list MuonEG_Run2016D/${i}.txt 
end 
