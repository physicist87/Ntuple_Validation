#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_2" "MuonEG_Run2016Bv2_29" "MuonEG_Run2016Bv2_56" "MuonEG_Run2016Bv2_83" "MuonEG_Run2016Bv2_110" "MuonEG_Run2016Bv2_137" "MuonEG_Run2016Bv2_164" "MuonEG_Run2016Bv2_191" "MuonEG_Run2016Bv2_218" "MuonEG_Run2016Bv2_245" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
