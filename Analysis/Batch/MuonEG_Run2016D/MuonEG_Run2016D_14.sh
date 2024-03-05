#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016D 
cmsenv 
set inputlists = ("MuonEG_Run2016D_13" "MuonEG_Run2016D_28" "MuonEG_Run2016D_43" "MuonEG_Run2016D_58" "MuonEG_Run2016D_73" "MuonEG_Run2016D_88" "MuonEG_Run2016D_103" "MuonEG_Run2016D_118" "MuonEG_Run2016D_133" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016D 
   ./TopMass_analysis MuonEG_Run2016D/${i}.list MuonEG_Run2016D/${i}.txt 
end 
