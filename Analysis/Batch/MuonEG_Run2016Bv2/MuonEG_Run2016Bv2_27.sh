#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_26" "MuonEG_Run2016Bv2_53" "MuonEG_Run2016Bv2_80" "MuonEG_Run2016Bv2_107" "MuonEG_Run2016Bv2_134" "MuonEG_Run2016Bv2_161" "MuonEG_Run2016Bv2_188" "MuonEG_Run2016Bv2_215" "MuonEG_Run2016Bv2_242" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
