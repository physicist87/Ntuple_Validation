#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016F_e 
cmsenv 
set inputlists = ("MuonEG_Run2016F_e_7" "MuonEG_Run2016F_e_15" "MuonEG_Run2016F_e_23" "MuonEG_Run2016F_e_31" "MuonEG_Run2016F_e_39" "MuonEG_Run2016F_e_47" "MuonEG_Run2016F_e_55" "MuonEG_Run2016F_e_63" "MuonEG_Run2016F_e_71" "MuonEG_Run2016F_e_79" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016F_e 
   ./TopMass_analysis MuonEG_Run2016F_e/${i}.list MuonEG_Run2016F_e/${i}.txt 
end 
