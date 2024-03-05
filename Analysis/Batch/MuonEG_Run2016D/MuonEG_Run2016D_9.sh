#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016D 
cmsenv 
set inputlists = ("MuonEG_Run2016D_8" "MuonEG_Run2016D_23" "MuonEG_Run2016D_38" "MuonEG_Run2016D_53" "MuonEG_Run2016D_68" "MuonEG_Run2016D_83" "MuonEG_Run2016D_98" "MuonEG_Run2016D_113" "MuonEG_Run2016D_128" "MuonEG_Run2016D_143" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016D 
   ./TopMass_analysis MuonEG_Run2016D/${i}.list MuonEG_Run2016D/${i}.txt 
end 
