#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_22" "MuonEG_Run2016Bv2_49" "MuonEG_Run2016Bv2_76" "MuonEG_Run2016Bv2_103" "MuonEG_Run2016Bv2_130" "MuonEG_Run2016Bv2_157" "MuonEG_Run2016Bv2_184" "MuonEG_Run2016Bv2_211" "MuonEG_Run2016Bv2_238" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
