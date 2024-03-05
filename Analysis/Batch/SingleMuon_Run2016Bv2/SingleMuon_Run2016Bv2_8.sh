#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_7" "SingleMuon_Run2016Bv2_34" "SingleMuon_Run2016Bv2_61" "SingleMuon_Run2016Bv2_88" "SingleMuon_Run2016Bv2_115" "SingleMuon_Run2016Bv2_142" "SingleMuon_Run2016Bv2_169" "SingleMuon_Run2016Bv2_196" "SingleMuon_Run2016Bv2_223" "SingleMuon_Run2016Bv2_250" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
