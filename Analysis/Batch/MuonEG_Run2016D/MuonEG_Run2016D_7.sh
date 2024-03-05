#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016D 
cmsenv 
set inputlists = ("MuonEG_Run2016D_6" "MuonEG_Run2016D_21" "MuonEG_Run2016D_36" "MuonEG_Run2016D_51" "MuonEG_Run2016D_66" "MuonEG_Run2016D_81" "MuonEG_Run2016D_96" "MuonEG_Run2016D_111" "MuonEG_Run2016D_126" "MuonEG_Run2016D_141" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016D 
   ./TopMass_analysis MuonEG_Run2016D/${i}.list MuonEG_Run2016D/${i}.txt 
end 
