#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_27" "MuonEG_Run2016Bv2_54" "MuonEG_Run2016Bv2_81" "MuonEG_Run2016Bv2_108" "MuonEG_Run2016Bv2_135" "MuonEG_Run2016Bv2_162" "MuonEG_Run2016Bv2_189" "MuonEG_Run2016Bv2_216" "MuonEG_Run2016Bv2_243" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
