#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_12" "MuonEG_Run2016Bv2_39" "MuonEG_Run2016Bv2_66" "MuonEG_Run2016Bv2_93" "MuonEG_Run2016Bv2_120" "MuonEG_Run2016Bv2_147" "MuonEG_Run2016Bv2_174" "MuonEG_Run2016Bv2_201" "MuonEG_Run2016Bv2_228" "MuonEG_Run2016Bv2_255" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
