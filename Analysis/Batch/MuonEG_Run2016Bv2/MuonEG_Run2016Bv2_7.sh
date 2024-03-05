#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_6" "MuonEG_Run2016Bv2_33" "MuonEG_Run2016Bv2_60" "MuonEG_Run2016Bv2_87" "MuonEG_Run2016Bv2_114" "MuonEG_Run2016Bv2_141" "MuonEG_Run2016Bv2_168" "MuonEG_Run2016Bv2_195" "MuonEG_Run2016Bv2_222" "MuonEG_Run2016Bv2_249" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
