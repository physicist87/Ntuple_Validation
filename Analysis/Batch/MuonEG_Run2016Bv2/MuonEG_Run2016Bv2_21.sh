#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016Bv2 
cmsenv 
set inputlists = ("MuonEG_Run2016Bv2_20" "MuonEG_Run2016Bv2_47" "MuonEG_Run2016Bv2_74" "MuonEG_Run2016Bv2_101" "MuonEG_Run2016Bv2_128" "MuonEG_Run2016Bv2_155" "MuonEG_Run2016Bv2_182" "MuonEG_Run2016Bv2_209" "MuonEG_Run2016Bv2_236" "MuonEG_Run2016Bv2_263" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016Bv2 
   ./TopMass_analysis MuonEG_Run2016Bv2/${i}.list MuonEG_Run2016Bv2/${i}.txt 
end 
