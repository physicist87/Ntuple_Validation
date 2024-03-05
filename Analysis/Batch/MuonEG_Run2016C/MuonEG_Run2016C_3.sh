#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016C 
cmsenv 
set inputlists = ("MuonEG_Run2016C_2" "MuonEG_Run2016C_11" "MuonEG_Run2016C_20" "MuonEG_Run2016C_29" "MuonEG_Run2016C_38" "MuonEG_Run2016C_47" "MuonEG_Run2016C_56" "MuonEG_Run2016C_65" "MuonEG_Run2016C_74" "MuonEG_Run2016C_83" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016C 
   ./TopMass_analysis MuonEG_Run2016C/${i}.list MuonEG_Run2016C/${i}.txt 
end 
