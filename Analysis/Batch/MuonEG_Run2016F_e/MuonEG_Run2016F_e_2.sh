#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016F_e 
cmsenv 
set inputlists = ("MuonEG_Run2016F_e_1" "MuonEG_Run2016F_e_9" "MuonEG_Run2016F_e_17" "MuonEG_Run2016F_e_25" "MuonEG_Run2016F_e_33" "MuonEG_Run2016F_e_41" "MuonEG_Run2016F_e_49" "MuonEG_Run2016F_e_57" "MuonEG_Run2016F_e_65" "MuonEG_Run2016F_e_73" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016F_e 
   ./TopMass_analysis MuonEG_Run2016F_e/${i}.list MuonEG_Run2016F_e/${i}.txt 
end 
