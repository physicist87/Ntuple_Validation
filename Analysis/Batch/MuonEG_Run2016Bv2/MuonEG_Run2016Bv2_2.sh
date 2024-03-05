#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_1" "MuonEG_Run2016Bv2_28" "MuonEG_Run2016Bv2_55" "MuonEG_Run2016Bv2_82" "MuonEG_Run2016Bv2_109" "MuonEG_Run2016Bv2_136" "MuonEG_Run2016Bv2_163" "MuonEG_Run2016Bv2_190" "MuonEG_Run2016Bv2_217" "MuonEG_Run2016Bv2_244" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
