#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_4" "MuonEG_Run2016Bv2_31" "MuonEG_Run2016Bv2_58" "MuonEG_Run2016Bv2_85" "MuonEG_Run2016Bv2_112" "MuonEG_Run2016Bv2_139" "MuonEG_Run2016Bv2_166" "MuonEG_Run2016Bv2_193" "MuonEG_Run2016Bv2_220" "MuonEG_Run2016Bv2_247" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
