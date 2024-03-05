#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016D 
cmsenv 
set inputlists = ("MuonEG_Run2016D_12" "MuonEG_Run2016D_27" "MuonEG_Run2016D_42" "MuonEG_Run2016D_57" "MuonEG_Run2016D_72" "MuonEG_Run2016D_87" "MuonEG_Run2016D_102" "MuonEG_Run2016D_117" "MuonEG_Run2016D_132" "MuonEG_Run2016D_147" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016D 
   ./TopMass_analysis MuonEG_Run2016D/${i}.list MuonEG_Run2016D/${i}.txt 
end 
