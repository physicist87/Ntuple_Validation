#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016F_e 
cmsenv 
set inputlists = ("MuonEG_Run2016F_e_6" "MuonEG_Run2016F_e_14" "MuonEG_Run2016F_e_22" "MuonEG_Run2016F_e_30" "MuonEG_Run2016F_e_38" "MuonEG_Run2016F_e_46" "MuonEG_Run2016F_e_54" "MuonEG_Run2016F_e_62" "MuonEG_Run2016F_e_70" "MuonEG_Run2016F_e_78" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016F_e 
   ./TopMass_analysis MuonEG_Run2016F_e/${i}.list MuonEG_Run2016F_e/${i}.txt 
end 
