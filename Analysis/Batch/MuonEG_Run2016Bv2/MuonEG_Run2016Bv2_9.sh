#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_8" "MuonEG_Run2016Bv2_35" "MuonEG_Run2016Bv2_62" "MuonEG_Run2016Bv2_89" "MuonEG_Run2016Bv2_116" "MuonEG_Run2016Bv2_143" "MuonEG_Run2016Bv2_170" "MuonEG_Run2016Bv2_197" "MuonEG_Run2016Bv2_224" "MuonEG_Run2016Bv2_251" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
