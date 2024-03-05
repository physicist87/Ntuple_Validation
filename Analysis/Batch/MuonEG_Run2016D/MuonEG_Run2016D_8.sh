#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016D 
cmsenv 
set inputlists = ("MuonEG_Run2016D_7" "MuonEG_Run2016D_22" "MuonEG_Run2016D_37" "MuonEG_Run2016D_52" "MuonEG_Run2016D_67" "MuonEG_Run2016D_82" "MuonEG_Run2016D_97" "MuonEG_Run2016D_112" "MuonEG_Run2016D_127" "MuonEG_Run2016D_142" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016D 
   ./TopMass_analysis MuonEG_Run2016D/${i}.list MuonEG_Run2016D/${i}.txt 
end 
