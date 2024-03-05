#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016D 
cmsenv 
set inputlists = ("MuonEG_Run2016D_1" "MuonEG_Run2016D_16" "MuonEG_Run2016D_31" "MuonEG_Run2016D_46" "MuonEG_Run2016D_61" "MuonEG_Run2016D_76" "MuonEG_Run2016D_91" "MuonEG_Run2016D_106" "MuonEG_Run2016D_121" "MuonEG_Run2016D_136" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016D 
   ./TopMass_analysis MuonEG_Run2016D/${i}.list MuonEG_Run2016D/${i}.txt 
end 
