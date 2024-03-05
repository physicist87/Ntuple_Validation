#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_24" "MuonEG_Run2016Bv2_51" "MuonEG_Run2016Bv2_78" "MuonEG_Run2016Bv2_105" "MuonEG_Run2016Bv2_132" "MuonEG_Run2016Bv2_159" "MuonEG_Run2016Bv2_186" "MuonEG_Run2016Bv2_213" "MuonEG_Run2016Bv2_240" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
