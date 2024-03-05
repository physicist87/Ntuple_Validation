#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016C 
cmsenv 
set inputlists = ("MuonEG_Run2016C_4" "MuonEG_Run2016C_13" "MuonEG_Run2016C_22" "MuonEG_Run2016C_31" "MuonEG_Run2016C_40" "MuonEG_Run2016C_49" "MuonEG_Run2016C_58" "MuonEG_Run2016C_67" "MuonEG_Run2016C_76" "MuonEG_Run2016C_85" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016C 
   ./TopMass_analysis MuonEG_Run2016C/${i}.list MuonEG_Run2016C/${i}.txt 
end 
