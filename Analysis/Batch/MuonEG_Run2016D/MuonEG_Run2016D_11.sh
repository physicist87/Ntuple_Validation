#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016D 
cmsenv 
set inputlists = ("MuonEG_Run2016D_10" "MuonEG_Run2016D_25" "MuonEG_Run2016D_40" "MuonEG_Run2016D_55" "MuonEG_Run2016D_70" "MuonEG_Run2016D_85" "MuonEG_Run2016D_100" "MuonEG_Run2016D_115" "MuonEG_Run2016D_130" "MuonEG_Run2016D_145" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016D 
   ./TopMass_analysis MuonEG_Run2016D/${i}.list MuonEG_Run2016D/${i}.txt 
end 
