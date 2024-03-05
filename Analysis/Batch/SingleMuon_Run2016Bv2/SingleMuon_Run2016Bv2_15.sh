#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_14" "SingleMuon_Run2016Bv2_41" "SingleMuon_Run2016Bv2_68" "SingleMuon_Run2016Bv2_95" "SingleMuon_Run2016Bv2_122" "SingleMuon_Run2016Bv2_149" "SingleMuon_Run2016Bv2_176" "SingleMuon_Run2016Bv2_203" "SingleMuon_Run2016Bv2_230" "SingleMuon_Run2016Bv2_257" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
