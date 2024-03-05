#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016F_e 
cmsenv 
set inputlists = ("MuonEG_Run2016F_e_4" "MuonEG_Run2016F_e_12" "MuonEG_Run2016F_e_20" "MuonEG_Run2016F_e_28" "MuonEG_Run2016F_e_36" "MuonEG_Run2016F_e_44" "MuonEG_Run2016F_e_52" "MuonEG_Run2016F_e_60" "MuonEG_Run2016F_e_68" "MuonEG_Run2016F_e_76" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016F_e 
   ./TopMass_analysis MuonEG_Run2016F_e/${i}.list MuonEG_Run2016F_e/${i}.txt 
end 
