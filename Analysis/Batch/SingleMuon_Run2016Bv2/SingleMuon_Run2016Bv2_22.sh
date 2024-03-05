#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_21" "SingleMuon_Run2016Bv2_48" "SingleMuon_Run2016Bv2_75" "SingleMuon_Run2016Bv2_102" "SingleMuon_Run2016Bv2_129" "SingleMuon_Run2016Bv2_156" "SingleMuon_Run2016Bv2_183" "SingleMuon_Run2016Bv2_210" "SingleMuon_Run2016Bv2_237" "SingleMuon_Run2016Bv2_264" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
