#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016D 
cmsenv 
set inputlists = ("MuonEG_Run2016D_15" "MuonEG_Run2016D_30" "MuonEG_Run2016D_45" "MuonEG_Run2016D_60" "MuonEG_Run2016D_75" "MuonEG_Run2016D_90" "MuonEG_Run2016D_105" "MuonEG_Run2016D_120" "MuonEG_Run2016D_135" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016D 
   ./TopMass_analysis MuonEG_Run2016D/${i}.list MuonEG_Run2016D/${i}.txt 
end 
