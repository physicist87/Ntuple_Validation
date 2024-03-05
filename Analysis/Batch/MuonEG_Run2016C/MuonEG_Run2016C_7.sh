#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016C 
cmsenv 
set inputlists = ("MuonEG_Run2016C_6" "MuonEG_Run2016C_15" "MuonEG_Run2016C_24" "MuonEG_Run2016C_33" "MuonEG_Run2016C_42" "MuonEG_Run2016C_51" "MuonEG_Run2016C_60" "MuonEG_Run2016C_69" "MuonEG_Run2016C_78" "MuonEG_Run2016C_87" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016C 
   ./TopMass_analysis MuonEG_Run2016C/${i}.list MuonEG_Run2016C/${i}.txt 
end 
