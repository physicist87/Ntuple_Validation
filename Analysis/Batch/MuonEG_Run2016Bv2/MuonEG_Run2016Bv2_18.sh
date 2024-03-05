#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_17" "MuonEG_Run2016Bv2_44" "MuonEG_Run2016Bv2_71" "MuonEG_Run2016Bv2_98" "MuonEG_Run2016Bv2_125" "MuonEG_Run2016Bv2_152" "MuonEG_Run2016Bv2_179" "MuonEG_Run2016Bv2_206" "MuonEG_Run2016Bv2_233" "MuonEG_Run2016Bv2_260" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
