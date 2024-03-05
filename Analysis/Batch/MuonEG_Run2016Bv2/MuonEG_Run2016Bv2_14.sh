#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_13" "MuonEG_Run2016Bv2_40" "MuonEG_Run2016Bv2_67" "MuonEG_Run2016Bv2_94" "MuonEG_Run2016Bv2_121" "MuonEG_Run2016Bv2_148" "MuonEG_Run2016Bv2_175" "MuonEG_Run2016Bv2_202" "MuonEG_Run2016Bv2_229" "MuonEG_Run2016Bv2_256" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
