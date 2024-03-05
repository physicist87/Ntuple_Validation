#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016D 
cmsenv 
set inputlists = ("MuonEG_Run2016D_11" "MuonEG_Run2016D_26" "MuonEG_Run2016D_41" "MuonEG_Run2016D_56" "MuonEG_Run2016D_71" "MuonEG_Run2016D_86" "MuonEG_Run2016D_101" "MuonEG_Run2016D_116" "MuonEG_Run2016D_131" "MuonEG_Run2016D_146" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016D 
   ./TopMass_analysis MuonEG_Run2016D/${i}.list MuonEG_Run2016D/${i}.txt 
end 
