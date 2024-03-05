#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016D 
cmsenv 
set inputlists = ("MuonEG_Run2016D_3" "MuonEG_Run2016D_18" "MuonEG_Run2016D_33" "MuonEG_Run2016D_48" "MuonEG_Run2016D_63" "MuonEG_Run2016D_78" "MuonEG_Run2016D_93" "MuonEG_Run2016D_108" "MuonEG_Run2016D_123" "MuonEG_Run2016D_138" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016D 
   ./TopMass_analysis MuonEG_Run2016D/${i}.list MuonEG_Run2016D/${i}.txt 
end 
