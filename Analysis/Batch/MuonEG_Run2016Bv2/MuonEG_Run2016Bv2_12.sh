#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_11" "MuonEG_Run2016Bv2_38" "MuonEG_Run2016Bv2_65" "MuonEG_Run2016Bv2_92" "MuonEG_Run2016Bv2_119" "MuonEG_Run2016Bv2_146" "MuonEG_Run2016Bv2_173" "MuonEG_Run2016Bv2_200" "MuonEG_Run2016Bv2_227" "MuonEG_Run2016Bv2_254" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
