#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016F_e 
cmsenv 
set inputlists = ("MuonEG_Run2016F_e_5" "MuonEG_Run2016F_e_13" "MuonEG_Run2016F_e_21" "MuonEG_Run2016F_e_29" "MuonEG_Run2016F_e_37" "MuonEG_Run2016F_e_45" "MuonEG_Run2016F_e_53" "MuonEG_Run2016F_e_61" "MuonEG_Run2016F_e_69" "MuonEG_Run2016F_e_77" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016F_e 
   ./TopMass_analysis MuonEG_Run2016F_e/${i}.list MuonEG_Run2016F_e/${i}.txt 
end 
