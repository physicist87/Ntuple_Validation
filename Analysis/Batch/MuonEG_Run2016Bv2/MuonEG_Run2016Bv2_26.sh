#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_25" "MuonEG_Run2016Bv2_52" "MuonEG_Run2016Bv2_79" "MuonEG_Run2016Bv2_106" "MuonEG_Run2016Bv2_133" "MuonEG_Run2016Bv2_160" "MuonEG_Run2016Bv2_187" "MuonEG_Run2016Bv2_214" "MuonEG_Run2016Bv2_241" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
