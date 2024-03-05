#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016F_e 
cmsenv 
set inputlists = ("MuonEG_Run2016F_e_8" "MuonEG_Run2016F_e_16" "MuonEG_Run2016F_e_24" "MuonEG_Run2016F_e_32" "MuonEG_Run2016F_e_40" "MuonEG_Run2016F_e_48" "MuonEG_Run2016F_e_56" "MuonEG_Run2016F_e_64" "MuonEG_Run2016F_e_72" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016F_e 
   ./TopMass_analysis MuonEG_Run2016F_e/${i}.list MuonEG_Run2016F_e/${i}.txt 
end 
