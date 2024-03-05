#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_21" "MuonEG_Run2016Bv2_48" "MuonEG_Run2016Bv2_75" "MuonEG_Run2016Bv2_102" "MuonEG_Run2016Bv2_129" "MuonEG_Run2016Bv2_156" "MuonEG_Run2016Bv2_183" "MuonEG_Run2016Bv2_210" "MuonEG_Run2016Bv2_237" "MuonEG_Run2016Bv2_264" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
