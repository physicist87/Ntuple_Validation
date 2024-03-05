#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_5" "MuonEG_Run2016Bv2_32" "MuonEG_Run2016Bv2_59" "MuonEG_Run2016Bv2_86" "MuonEG_Run2016Bv2_113" "MuonEG_Run2016Bv2_140" "MuonEG_Run2016Bv2_167" "MuonEG_Run2016Bv2_194" "MuonEG_Run2016Bv2_221" "MuonEG_Run2016Bv2_248" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
