#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016F_e 
cmsenv 
set inputlists = ("MuonEG_Run2016F_e_2" "MuonEG_Run2016F_e_10" "MuonEG_Run2016F_e_18" "MuonEG_Run2016F_e_26" "MuonEG_Run2016F_e_34" "MuonEG_Run2016F_e_42" "MuonEG_Run2016F_e_50" "MuonEG_Run2016F_e_58" "MuonEG_Run2016F_e_66" "MuonEG_Run2016F_e_74" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016F_e 
   ./TopMass_analysis MuonEG_Run2016F_e/${i}.list MuonEG_Run2016F_e/${i}.txt 
end 
