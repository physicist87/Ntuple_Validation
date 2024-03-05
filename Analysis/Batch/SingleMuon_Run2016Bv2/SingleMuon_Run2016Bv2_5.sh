#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_4" "SingleMuon_Run2016Bv2_31" "SingleMuon_Run2016Bv2_58" "SingleMuon_Run2016Bv2_85" "SingleMuon_Run2016Bv2_112" "SingleMuon_Run2016Bv2_139" "SingleMuon_Run2016Bv2_166" "SingleMuon_Run2016Bv2_193" "SingleMuon_Run2016Bv2_220" "SingleMuon_Run2016Bv2_247" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
