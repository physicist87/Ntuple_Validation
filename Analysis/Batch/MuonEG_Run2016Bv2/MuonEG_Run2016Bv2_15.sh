#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_14" "MuonEG_Run2016Bv2_41" "MuonEG_Run2016Bv2_68" "MuonEG_Run2016Bv2_95" "MuonEG_Run2016Bv2_122" "MuonEG_Run2016Bv2_149" "MuonEG_Run2016Bv2_176" "MuonEG_Run2016Bv2_203" "MuonEG_Run2016Bv2_230" "MuonEG_Run2016Bv2_257" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
