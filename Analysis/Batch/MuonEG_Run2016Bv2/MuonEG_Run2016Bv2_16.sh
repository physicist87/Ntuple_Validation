#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_15" "MuonEG_Run2016Bv2_42" "MuonEG_Run2016Bv2_69" "MuonEG_Run2016Bv2_96" "MuonEG_Run2016Bv2_123" "MuonEG_Run2016Bv2_150" "MuonEG_Run2016Bv2_177" "MuonEG_Run2016Bv2_204" "MuonEG_Run2016Bv2_231" "MuonEG_Run2016Bv2_258" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
