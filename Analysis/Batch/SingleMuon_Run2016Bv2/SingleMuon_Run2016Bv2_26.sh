#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_25" "SingleMuon_Run2016Bv2_52" "SingleMuon_Run2016Bv2_79" "SingleMuon_Run2016Bv2_106" "SingleMuon_Run2016Bv2_133" "SingleMuon_Run2016Bv2_160" "SingleMuon_Run2016Bv2_187" "SingleMuon_Run2016Bv2_214" "SingleMuon_Run2016Bv2_241" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
