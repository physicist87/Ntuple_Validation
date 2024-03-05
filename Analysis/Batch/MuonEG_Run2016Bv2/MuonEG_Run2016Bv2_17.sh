#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_16" "MuonEG_Run2016Bv2_43" "MuonEG_Run2016Bv2_70" "MuonEG_Run2016Bv2_97" "MuonEG_Run2016Bv2_124" "MuonEG_Run2016Bv2_151" "MuonEG_Run2016Bv2_178" "MuonEG_Run2016Bv2_205" "MuonEG_Run2016Bv2_232" "MuonEG_Run2016Bv2_259" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
