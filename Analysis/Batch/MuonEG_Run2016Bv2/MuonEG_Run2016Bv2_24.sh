#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_23" "MuonEG_Run2016Bv2_50" "MuonEG_Run2016Bv2_77" "MuonEG_Run2016Bv2_104" "MuonEG_Run2016Bv2_131" "MuonEG_Run2016Bv2_158" "MuonEG_Run2016Bv2_185" "MuonEG_Run2016Bv2_212" "MuonEG_Run2016Bv2_239" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
