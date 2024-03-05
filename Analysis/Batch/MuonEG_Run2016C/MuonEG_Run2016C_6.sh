#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016C 
cmsenv 
set inputlists = ("MuonEG_Run2016C_5" "MuonEG_Run2016C_14" "MuonEG_Run2016C_23" "MuonEG_Run2016C_32" "MuonEG_Run2016C_41" "MuonEG_Run2016C_50" "MuonEG_Run2016C_59" "MuonEG_Run2016C_68" "MuonEG_Run2016C_77" "MuonEG_Run2016C_86" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016C 
   ./TopMass_analysis MuonEG_Run2016C/${i}.list MuonEG_Run2016C/${i}.txt 
end 
