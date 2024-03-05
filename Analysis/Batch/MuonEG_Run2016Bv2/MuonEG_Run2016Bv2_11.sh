#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_10" "MuonEG_Run2016Bv2_37" "MuonEG_Run2016Bv2_64" "MuonEG_Run2016Bv2_91" "MuonEG_Run2016Bv2_118" "MuonEG_Run2016Bv2_145" "MuonEG_Run2016Bv2_172" "MuonEG_Run2016Bv2_199" "MuonEG_Run2016Bv2_226" "MuonEG_Run2016Bv2_253" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
