#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_9" "MuonEG_Run2016Bv2_36" "MuonEG_Run2016Bv2_63" "MuonEG_Run2016Bv2_90" "MuonEG_Run2016Bv2_117" "MuonEG_Run2016Bv2_144" "MuonEG_Run2016Bv2_171" "MuonEG_Run2016Bv2_198" "MuonEG_Run2016Bv2_225" "MuonEG_Run2016Bv2_252" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
