#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016F_e 
cmsenv 
set inputlists = ("MuonEG_Run2016F_e_3" "MuonEG_Run2016F_e_11" "MuonEG_Run2016F_e_19" "MuonEG_Run2016F_e_27" "MuonEG_Run2016F_e_35" "MuonEG_Run2016F_e_43" "MuonEG_Run2016F_e_51" "MuonEG_Run2016F_e_59" "MuonEG_Run2016F_e_67" "MuonEG_Run2016F_e_75" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016F_e 
   ./TopMass_analysis MuonEG_Run2016F_e/${i}.list MuonEG_Run2016F_e/${i}.txt 
end 
