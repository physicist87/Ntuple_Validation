#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_18" "SingleMuon_Run2016Bv2_45" "SingleMuon_Run2016Bv2_72" "SingleMuon_Run2016Bv2_99" "SingleMuon_Run2016Bv2_126" "SingleMuon_Run2016Bv2_153" "SingleMuon_Run2016Bv2_180" "SingleMuon_Run2016Bv2_207" "SingleMuon_Run2016Bv2_234" "SingleMuon_Run2016Bv2_261" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
