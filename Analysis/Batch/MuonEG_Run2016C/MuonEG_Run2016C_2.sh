#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016C 
cmsenv 
set inputlists = ("MuonEG_Run2016C_1" "MuonEG_Run2016C_10" "MuonEG_Run2016C_19" "MuonEG_Run2016C_28" "MuonEG_Run2016C_37" "MuonEG_Run2016C_46" "MuonEG_Run2016C_55" "MuonEG_Run2016C_64" "MuonEG_Run2016C_73" "MuonEG_Run2016C_82" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016C 
   ./TopMass_analysis MuonEG_Run2016C/${i}.list MuonEG_Run2016C/${i}.txt 
end 
