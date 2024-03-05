#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_18" "MuonEG_Run2016Bv2_45" "MuonEG_Run2016Bv2_72" "MuonEG_Run2016Bv2_99" "MuonEG_Run2016Bv2_126" "MuonEG_Run2016Bv2_153" "MuonEG_Run2016Bv2_180" "MuonEG_Run2016Bv2_207" "MuonEG_Run2016Bv2_234" "MuonEG_Run2016Bv2_261" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
