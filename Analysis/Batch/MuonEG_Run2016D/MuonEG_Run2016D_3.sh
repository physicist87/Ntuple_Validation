#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016D 
cmsenv 
set inputlists = ("MuonEG_Run2016D_2" "MuonEG_Run2016D_17" "MuonEG_Run2016D_32" "MuonEG_Run2016D_47" "MuonEG_Run2016D_62" "MuonEG_Run2016D_77" "MuonEG_Run2016D_92" "MuonEG_Run2016D_107" "MuonEG_Run2016D_122" "MuonEG_Run2016D_137" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016D 
   ./TopMass_analysis MuonEG_Run2016D/${i}.list MuonEG_Run2016D/${i}.txt 
end 
