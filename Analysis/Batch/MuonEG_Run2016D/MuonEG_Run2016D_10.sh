#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016D 
cmsenv 
set inputlists = ("MuonEG_Run2016D_9" "MuonEG_Run2016D_24" "MuonEG_Run2016D_39" "MuonEG_Run2016D_54" "MuonEG_Run2016D_69" "MuonEG_Run2016D_84" "MuonEG_Run2016D_99" "MuonEG_Run2016D_114" "MuonEG_Run2016D_129" "MuonEG_Run2016D_144" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016D 
   ./TopMass_analysis MuonEG_Run2016D/${i}.list MuonEG_Run2016D/${i}.txt 
end 
