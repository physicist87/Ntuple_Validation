#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_3" "MuonEG_Run2016Bv2_30" "MuonEG_Run2016Bv2_57" "MuonEG_Run2016Bv2_84" "MuonEG_Run2016Bv2_111" "MuonEG_Run2016Bv2_138" "MuonEG_Run2016Bv2_165" "MuonEG_Run2016Bv2_192" "MuonEG_Run2016Bv2_219" "MuonEG_Run2016Bv2_246" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
