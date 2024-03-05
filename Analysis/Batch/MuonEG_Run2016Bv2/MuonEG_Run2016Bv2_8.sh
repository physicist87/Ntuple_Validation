#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_7" "MuonEG_Run2016Bv2_34" "MuonEG_Run2016Bv2_61" "MuonEG_Run2016Bv2_88" "MuonEG_Run2016Bv2_115" "MuonEG_Run2016Bv2_142" "MuonEG_Run2016Bv2_169" "MuonEG_Run2016Bv2_196" "MuonEG_Run2016Bv2_223" "MuonEG_Run2016Bv2_250" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
