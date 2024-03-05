#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016C 
cmsenv 
set inputlists = ("MuonEG_Run2016C_9" "MuonEG_Run2016C_18" "MuonEG_Run2016C_27" "MuonEG_Run2016C_36" "MuonEG_Run2016C_45" "MuonEG_Run2016C_54" "MuonEG_Run2016C_63" "MuonEG_Run2016C_72" "MuonEG_Run2016C_81" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016C 
   ./TopMass_analysis MuonEG_Run2016C/${i}.list MuonEG_Run2016C/${i}.txt 
end 
