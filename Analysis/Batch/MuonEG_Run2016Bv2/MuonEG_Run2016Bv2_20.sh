#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_19" "MuonEG_Run2016Bv2_46" "MuonEG_Run2016Bv2_73" "MuonEG_Run2016Bv2_100" "MuonEG_Run2016Bv2_127" "MuonEG_Run2016Bv2_154" "MuonEG_Run2016Bv2_181" "MuonEG_Run2016Bv2_208" "MuonEG_Run2016Bv2_235" "MuonEG_Run2016Bv2_262" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
